// Generated by gencpp from file aquacore/GetTargetLegAnglesResponse.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_GETTARGETLEGANGLESRESPONSE_H
#define AQUACORE_MESSAGE_GETTARGETLEGANGLESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace aquacore
{
template <class ContainerAllocator>
struct GetTargetLegAnglesResponse_
{
  typedef GetTargetLegAnglesResponse_<ContainerAllocator> Type;

  GetTargetLegAnglesResponse_()
    : stamp()
    , target_angles()  {
      target_angles.assign(0.0);
  }
  GetTargetLegAnglesResponse_(const ContainerAllocator& _alloc)
    : stamp(_alloc)
    , target_angles()  {
  (void)_alloc;
      target_angles.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _stamp_type;
  _stamp_type stamp;

   typedef boost::array<double, 6>  _target_angles_type;
  _target_angles_type target_angles;




  typedef boost::shared_ptr< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetTargetLegAnglesResponse_

typedef ::aquacore::GetTargetLegAnglesResponse_<std::allocator<void> > GetTargetLegAnglesResponse;

typedef boost::shared_ptr< ::aquacore::GetTargetLegAnglesResponse > GetTargetLegAnglesResponsePtr;
typedef boost::shared_ptr< ::aquacore::GetTargetLegAnglesResponse const> GetTargetLegAnglesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquacore

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'aquacore': ['/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg', '/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0290c096db0f9662921c53f2603ee48a";
  }

  static const char* value(const ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0290c096db0f9662ULL;
  static const uint64_t static_value2 = 0x921c53f2603ee48aULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/GetTargetLegAnglesResponse";
  }

  static const char* value(const ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header stamp\n\
float64[6] target_angles\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.target_angles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTargetLegAnglesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::GetTargetLegAnglesResponse_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.stamp);
    s << indent << "target_angles[]" << std::endl;
    for (size_t i = 0; i < v.target_angles.size(); ++i)
    {
      s << indent << "  target_angles[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.target_angles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_GETTARGETLEGANGLESRESPONSE_H
