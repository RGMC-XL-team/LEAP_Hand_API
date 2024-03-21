// Generated by gencpp from file leap_hand/leap_effortResponse.msg
// DO NOT EDIT!


#ifndef LEAP_HAND_MESSAGE_LEAP_EFFORTRESPONSE_H
#define LEAP_HAND_MESSAGE_LEAP_EFFORTRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace leap_hand
{
template <class ContainerAllocator>
struct leap_effortResponse_
{
  typedef leap_effortResponse_<ContainerAllocator> Type;

  leap_effortResponse_()
    : effort()  {
    }
  leap_effortResponse_(const ContainerAllocator& _alloc)
    : effort(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _effort_type;
  _effort_type effort;





  typedef boost::shared_ptr< ::leap_hand::leap_effortResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::leap_hand::leap_effortResponse_<ContainerAllocator> const> ConstPtr;

}; // struct leap_effortResponse_

typedef ::leap_hand::leap_effortResponse_<std::allocator<void> > leap_effortResponse;

typedef boost::shared_ptr< ::leap_hand::leap_effortResponse > leap_effortResponsePtr;
typedef boost::shared_ptr< ::leap_hand::leap_effortResponse const> leap_effortResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::leap_hand::leap_effortResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::leap_hand::leap_effortResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::leap_hand::leap_effortResponse_<ContainerAllocator1> & lhs, const ::leap_hand::leap_effortResponse_<ContainerAllocator2> & rhs)
{
  return lhs.effort == rhs.effort;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::leap_hand::leap_effortResponse_<ContainerAllocator1> & lhs, const ::leap_hand::leap_effortResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace leap_hand

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leap_hand::leap_effortResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::leap_hand::leap_effortResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leap_hand::leap_effortResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a8f7ca4b38fbe820a7205cc08e38abf";
  }

  static const char* value(const ::leap_hand::leap_effortResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a8f7ca4b38fbe82ULL;
  static const uint64_t static_value2 = 0x0a7205cc08e38abfULL;
};

template<class ContainerAllocator>
struct DataType< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "leap_hand/leap_effortResponse";
  }

  static const char* value(const ::leap_hand::leap_effortResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] effort\n"
"\n"
;
  }

  static const char* value(const ::leap_hand::leap_effortResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.effort);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct leap_effortResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::leap_hand::leap_effortResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::leap_hand::leap_effortResponse_<ContainerAllocator>& v)
  {
    s << indent << "effort[]" << std::endl;
    for (size_t i = 0; i < v.effort.size(); ++i)
    {
      s << indent << "  effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.effort[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEAP_HAND_MESSAGE_LEAP_EFFORTRESPONSE_H
