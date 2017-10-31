// Generated by gencpp from file aquacore/GetPeriodicLegCommandRequest.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_GETPERIODICLEGCOMMANDREQUEST_H
#define AQUACORE_MESSAGE_GETPERIODICLEGCOMMANDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aquacore
{
template <class ContainerAllocator>
struct GetPeriodicLegCommandRequest_
{
  typedef GetPeriodicLegCommandRequest_<ContainerAllocator> Type;

  GetPeriodicLegCommandRequest_()
    {
    }
  GetPeriodicLegCommandRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPeriodicLegCommandRequest_

typedef ::aquacore::GetPeriodicLegCommandRequest_<std::allocator<void> > GetPeriodicLegCommandRequest;

typedef boost::shared_ptr< ::aquacore::GetPeriodicLegCommandRequest > GetPeriodicLegCommandRequestPtr;
typedef boost::shared_ptr< ::aquacore::GetPeriodicLegCommandRequest const> GetPeriodicLegCommandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquacore

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'aquacore': ['/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg', '/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/GetPeriodicLegCommandRequest";
  }

  static const char* value(const ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPeriodicLegCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::aquacore::GetPeriodicLegCommandRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_GETPERIODICLEGCOMMANDREQUEST_H
