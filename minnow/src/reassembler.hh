
#pragma once

#include "byte_stream.hh"
#include <map>
#include <string>
#include <algorithm>
//#include <map>

using namespace std;
class Reassembler
{
public:
    // Construct Reassembler to write into given ByteStream.
     explicit Reassembler(ByteStream&& output)
        : output_(move(output)),
          first_unassembled_(0),
          last_index_(UINT64_MAX),
          is_last_substring_received_(false),bytes_pending_(0),
           unassembled_segments_() {
            
           }

    /*
     * Insert a new substring to be reassembled into a ByteStream.
     *   `first_index`: the index of the first byte of the substring
     *   `data`: the substring itself
     *   `is_last_substring`: this substring represents the end of the stream
     *
     * The Reassembler's job is to reassemble the indexed substrings (possibly out-of-order
     * and possibly overlapping) back into the original ByteStream. As soon as the Reassembler
     * learns the next byte in the stream, it should write it to the output.
     *
     * If the Reassembler learns about bytes that fit within the stream's available capacity
     * but can't yet be written (because earlier bytes remain unknown), it should store them
     * internally until the gaps are filled in.
     *
     * The Reassembler should discard any bytes that lie beyond the stream's available capacity
     * (i.e., bytes that couldn't be written even if earlier gaps get filled in).
     *
     * The Reassembler should close the stream after writing the last byte.
     */
   void insert(uint64_t first_index, string data, bool is_last_substring);
    uint64_t bytes_pending() const;

    Reader& reader() { return output_.reader(); }
    const Reader& reader() const { return output_.reader(); }
    const Writer& writer() const { return output_.writer(); }

private:
    // Writes contiguous data into the ByteStream as soon as possible
    private:
    ByteStream output_;
    uint64_t first_unassembled_; // Next expected byte to write to output
    uint64_t last_index_; // Index of the last byte of the entire stream (if known)
    bool is_last_substring_received_;
uint64_t bytes_pending_; 
    // A map that stores unassembled bytes with their starting index
    map<uint64_t,string> unassembled_segments_;

    void assemble_and_write();
};

