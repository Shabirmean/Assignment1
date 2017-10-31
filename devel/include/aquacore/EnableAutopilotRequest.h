// Generated by gencpp from file aquacore/EnableAutopilotRequest.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_ENABLEAUTOPILOTREQUEST_H
#define AQUACORE_MESSAGE_ENABLEAUTOPILOTREQUEST_H


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
struct EnableAutopilotRequest_
{
  typedef EnableAutopilotRequest_<ContainerAllocator> Type;

  EnableAutopilotRequest_()
    : state(0)  {
    }
  EnableAutopilotRequest_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef int32_t _state_type;
  _state_type state;




  typedef boost::shared_ptr< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct EnableAutopilotRequest_

typedef ::aquacore::EnableAutopilotRequest_<std::allocator<void> > EnableAutopilotRequest;

typedef boost::shared_ptr< ::aquacore::EnableAutopilotRequest > EnableAutopilotRequestPtr;
typedef boost::shared_ptr< ::aquacore::EnableAutopilotRequest const> EnableAutopilotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::EnableAutopilotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a2f37ef2ba405f0c7a15cc72663d6f0";
  }

  static const char* value(const ::aquacore::EnableAutopilotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a2f37ef2ba405f0ULL;
  static const uint64_t static_value2 = 0xc7a15cc72663d6f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/EnableAutopilotRequest";
  }

  static const char* value(const ::aquacore::EnableAutopilotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 state\n\
";
  }

  static const char* value(const ::aquacore::EnableAutopilotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EnableAutopilotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::EnableAutopilotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::EnableAutopilotRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_ENABLEAUTOPILOTREQUEST_H
