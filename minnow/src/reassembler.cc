#include "reassembler.hh"

#include <algorithm>
#include <map>
#include <string>
#include <vector>

using namespace std;

void Reassembler::insert(uint64_t first_index, string data, bool is_last_substring) {
    // Handle the last substring
    if (is_last_substring) {
        last_index_ = first_index + data.size();
        is_last_substring_received_ = true;

        // If the data is empty, close the ByteStream immediately
        if (data.empty()) {
            output_.writer().close();
            return;
        }
    }

    // Discard data that has already been assembled
    if (first_index + data.size() <= first_unassembled_) {
        return;
    }

    // Trim data that overlaps with already assembled bytes
    if (first_index < first_unassembled_) {
        size_t trim = first_unassembled_ - first_index;
        data = data.substr(trim);
        first_index = first_unassembled_;
    }

    // Adjust data to fit within the available capacity
    size_t capacity_remaining = output_.writer().available_capacity();
    if (first_index >= first_unassembled_ + capacity_remaining) {
        return; // Data exceeds capacity; discard
    }

    if (first_index + data.size() > first_unassembled_ + capacity_remaining) {
        data.resize(first_unassembled_ + capacity_remaining - first_index);
    }

    // Define the range of the new segment
    uint64_t new_start = first_index;
    uint64_t new_end = first_index + data.size();

    // Initialize the merged data with the new segment's data
    string merged_data = data;

    // Find the first segment that could overlap with the new segment
    auto it = unassembled_segments_.lower_bound(new_start);
    if (it != unassembled_segments_.begin()) {
        --it;
    }

    // Collect all overlapping or adjacent segments
    vector<pair<uint64_t, string>> overlapping_segments;
    while (it != unassembled_segments_.end()) {
        uint64_t existing_start = it->first;
        uint64_t existing_end = it->first + it->second.size();

        // Check for overlap or adjacency
        if (existing_end < new_start) {
            ++it;
            continue; // No overlap; move to next
        }
        if (existing_start > new_end) {
            break; // No more overlapping segments
        }

        // Overlapping or adjacent segment found; add to list
        overlapping_segments.emplace_back(existing_start, it->second);
        ++it;
    }

    // Merge all overlapping segments into one
    for (const auto& [seg_start, seg_data] : overlapping_segments) {
        uint64_t seg_end = seg_start + seg_data.size();
        new_start = min(new_start, seg_start);
        new_end = max(new_end, seg_end);

        // Resize merged_data to accommodate the merged range
        merged_data.resize(new_end - new_start, '\0');

        // Copy existing segment data into merged_data
        for (size_t i = 0; i < seg_data.size(); ++i) {
            merged_data[seg_start + i - new_start] = seg_data[i];
        }

        // Copy new data into merged_data
        for (size_t i = 0; i < data.size(); ++i) {
            merged_data[first_index + i - new_start] = data[i];
        }
    }

    // Erase all overlapping segments from the map
    for (const auto& [seg_start, seg_data] : overlapping_segments) {
        unassembled_segments_.erase(seg_start);
    }

    // Insert the merged segment back into the map
    unassembled_segments_.emplace(new_start, move(merged_data));

    // Attempt to assemble and write contiguous data to the ByteStream
    assemble_and_write();
}

void Reassembler::assemble_and_write() {
    while (true) {
        auto it = unassembled_segments_.find(first_unassembled_);
        if (it == unassembled_segments_.end()) {
            break; // No contiguous segment available
        }

        // Write the entire contiguous segment to the ByteStream
        output_.writer().push(it->second);
        first_unassembled_ += it->second.size();

        // Erase the segment from the map
        unassembled_segments_.erase(it);
    }

    // Close the ByteStream if all bytes have been assembled
    if (is_last_substring_received_ && first_unassembled_ >= last_index_) {
        output_.writer().close();
    }
}

uint64_t Reassembler::bytes_pending() const {
    uint64_t pending = 0;
    for (const auto& segment : unassembled_segments_) {
        pending += segment.second.size();
    }
    return pending;
}
//
..
