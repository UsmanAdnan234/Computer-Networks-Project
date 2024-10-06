#include "byte_stream.hh"
#include <algorithm>
using namespace std;

ByteStream::ByteStream( uint64_t capacity )
  : buffer( "" )
  , capacity_( capacity )
  , Total_Bytes_Pushed( 0 )
  , Total_Bytes_Popped( 0 )
  , closed_state( false )
  , error_( false )
{}

void Writer::push( string data )
{
  if ( closed_state || error_ || data.empty() ) {
    return;
  }

  uint64_t available = capacity_ - buffer.size(); // Bytes we can push into the buffer
  uint64_t i = min( available, uint64_t( data.size() ) );
  buffer.append( data.substr( 0, i ) );
  Total_Bytes_Pushed = Total_Bytes_Pushed + i;
}

void Writer::close()
{
  closed_state = true;
}

bool Writer::is_closed() const // Has the stream been closed?
{
  return closed_state;
}

uint64_t Writer::available_capacity() const
{
  return capacity_ - buffer.size();
}

uint64_t Writer::bytes_pushed() const
{
  return Total_Bytes_Pushed;
}

string_view Reader::peek() const
{
  return string_view( buffer );
}

void Reader::pop( uint64_t len )
{
  (void)len;
  if ( len > buffer.size() ) {
    len = buffer.size();
  }
  buffer.erase( 0, len );
  Total_Bytes_Popped = Total_Bytes_Popped + len;
}

bool Reader::is_finished() const
{
  if ( closed_state && buffer.empty() ) {
    return true;
  } else {
    return false;
  }
}

uint64_t Reader::bytes_buffered() const
{
  return buffer.size();
}

uint64_t Reader::bytes_popped() const
{
  return Total_Bytes_Popped;
}