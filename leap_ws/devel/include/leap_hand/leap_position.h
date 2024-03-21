// Generated by gencpp from file leap_hand/leap_position.msg
// DO NOT EDIT!


#ifndef LEAP_HAND_MESSAGE_LEAP_POSITION_H
#define LEAP_HAND_MESSAGE_LEAP_POSITION_H

#include <ros/service_traits.h>


#include <leap_hand/leap_positionRequest.h>
#include <leap_hand/leap_positionResponse.h>


namespace leap_hand
{

struct leap_position
{

typedef leap_positionRequest Request;
typedef leap_positionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct leap_position
} // namespace leap_hand


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::leap_hand::leap_position > {
  static const char* value()
  {
    return "50410efb3480c63b23b8b5fe2bea331a";
  }

  static const char* value(const ::leap_hand::leap_position&) { return value(); }
};

template<>
struct DataType< ::leap_hand::leap_position > {
  static const char* value()
  {
    return "leap_hand/leap_position";
  }

  static const char* value(const ::leap_hand::leap_position&) { return value(); }
};


// service_traits::MD5Sum< ::leap_hand::leap_positionRequest> should match
// service_traits::MD5Sum< ::leap_hand::leap_position >
template<>
struct MD5Sum< ::leap_hand::leap_positionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::leap_hand::leap_position >::value();
  }
  static const char* value(const ::leap_hand::leap_positionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::leap_hand::leap_positionRequest> should match
// service_traits::DataType< ::leap_hand::leap_position >
template<>
struct DataType< ::leap_hand::leap_positionRequest>
{
  static const char* value()
  {
    return DataType< ::leap_hand::leap_position >::value();
  }
  static const char* value(const ::leap_hand::leap_positionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::leap_hand::leap_positionResponse> should match
// service_traits::MD5Sum< ::leap_hand::leap_position >
template<>
struct MD5Sum< ::leap_hand::leap_positionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::leap_hand::leap_position >::value();
  }
  static const char* value(const ::leap_hand::leap_positionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::leap_hand::leap_positionResponse> should match
// service_traits::DataType< ::leap_hand::leap_position >
template<>
struct DataType< ::leap_hand::leap_positionResponse>
{
  static const char* value()
  {
    return DataType< ::leap_hand::leap_position >::value();
  }
  static const char* value(const ::leap_hand::leap_positionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LEAP_HAND_MESSAGE_LEAP_POSITION_H