// Generated by gencpp from file aqua_gazebo/HydrodynamicsParamsList.msg
// DO NOT EDIT!


#ifndef AQUA_GAZEBO_MESSAGE_HYDRODYNAMICSPARAMSLIST_H
#define AQUA_GAZEBO_MESSAGE_HYDRODYNAMICSPARAMSLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <aqua_gazebo/HydrodynamicsParams.h>

namespace aqua_gazebo
{
template <class ContainerAllocator>
struct HydrodynamicsParamsList_
{
  typedef HydrodynamicsParamsList_<ContainerAllocator> Type;

  HydrodynamicsParamsList_()
    : header()
    , params()  {
    }
  HydrodynamicsParamsList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , params(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >::other >  _params_type;
  _params_type params;




  typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> const> ConstPtr;

}; // struct HydrodynamicsParamsList_

typedef ::aqua_gazebo::HydrodynamicsParamsList_<std::allocator<void> > HydrodynamicsParamsList;

typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParamsList > HydrodynamicsParamsListPtr;
typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParamsList const> HydrodynamicsParamsListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aqua_gazebo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'aqua_gazebo': ['/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gazebo/msg', '/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gazebo/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fb99dd419aa8fd6de13995f952156fa";
  }

  static const char* value(const ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fb99dd419aa8fd6ULL;
  static const uint64_t static_value2 = 0xde13995f952156faULL;
};

template<class ContainerAllocator>
struct DataType< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aqua_gazebo/HydrodynamicsParamsList";
  }

  static const char* value(const ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
aqua_gazebo/HydrodynamicsParams[] params\n\
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
\n\
================================================================================\n\
MSG: aqua_gazebo/HydrodynamicsParams\n\
std_msgs/Header header\n\
string name\n\
float64 wobble\n\
float64 drag_scaling\n\
float64 density\n\
float64 viscosity\n\
float64 mass\n\
float64 volume\n\
float64 planar\n\
float64[] K\n\
float64[] D\n\
float64[] I\n\
float64[] com\n\
float64[] cob\n\
\n\
";
  }

  static const char* value(const ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HydrodynamicsParamsList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aqua_gazebo::HydrodynamicsParamsList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "params[]" << std::endl;
    for (size_t i = 0; i < v.params.size(); ++i)
    {
      s << indent << "  params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >::stream(s, indent + "    ", v.params[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUA_GAZEBO_MESSAGE_HYDRODYNAMICSPARAMSLIST_H
