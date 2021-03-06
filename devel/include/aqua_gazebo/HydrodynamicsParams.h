// Generated by gencpp from file aqua_gazebo/HydrodynamicsParams.msg
// DO NOT EDIT!


#ifndef AQUA_GAZEBO_MESSAGE_HYDRODYNAMICSPARAMS_H
#define AQUA_GAZEBO_MESSAGE_HYDRODYNAMICSPARAMS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace aqua_gazebo
{
template <class ContainerAllocator>
struct HydrodynamicsParams_
{
  typedef HydrodynamicsParams_<ContainerAllocator> Type;

  HydrodynamicsParams_()
    : header()
    , name()
    , wobble(0.0)
    , drag_scaling(0.0)
    , density(0.0)
    , viscosity(0.0)
    , mass(0.0)
    , volume(0.0)
    , planar(0.0)
    , K()
    , D()
    , I()
    , com()
    , cob()  {
    }
  HydrodynamicsParams_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , wobble(0.0)
    , drag_scaling(0.0)
    , density(0.0)
    , viscosity(0.0)
    , mass(0.0)
    , volume(0.0)
    , planar(0.0)
    , K(_alloc)
    , D(_alloc)
    , I(_alloc)
    , com(_alloc)
    , cob(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef double _wobble_type;
  _wobble_type wobble;

   typedef double _drag_scaling_type;
  _drag_scaling_type drag_scaling;

   typedef double _density_type;
  _density_type density;

   typedef double _viscosity_type;
  _viscosity_type viscosity;

   typedef double _mass_type;
  _mass_type mass;

   typedef double _volume_type;
  _volume_type volume;

   typedef double _planar_type;
  _planar_type planar;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _K_type;
  _K_type K;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _D_type;
  _D_type D;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _I_type;
  _I_type I;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _com_type;
  _com_type com;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _cob_type;
  _cob_type cob;




  typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> const> ConstPtr;

}; // struct HydrodynamicsParams_

typedef ::aqua_gazebo::HydrodynamicsParams_<std::allocator<void> > HydrodynamicsParams;

typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParams > HydrodynamicsParamsPtr;
typedef boost::shared_ptr< ::aqua_gazebo::HydrodynamicsParams const> HydrodynamicsParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd4bee8c863bd8ba3beda4555fcfa851";
  }

  static const char* value(const ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd4bee8c863bd8baULL;
  static const uint64_t static_value2 = 0x3beda4555fcfa851ULL;
};

template<class ContainerAllocator>
struct DataType< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aqua_gazebo/HydrodynamicsParams";
  }

  static const char* value(const ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
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

  static const char* value(const ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.wobble);
      stream.next(m.drag_scaling);
      stream.next(m.density);
      stream.next(m.viscosity);
      stream.next(m.mass);
      stream.next(m.volume);
      stream.next(m.planar);
      stream.next(m.K);
      stream.next(m.D);
      stream.next(m.I);
      stream.next(m.com);
      stream.next(m.cob);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HydrodynamicsParams_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aqua_gazebo::HydrodynamicsParams_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "wobble: ";
    Printer<double>::stream(s, indent + "  ", v.wobble);
    s << indent << "drag_scaling: ";
    Printer<double>::stream(s, indent + "  ", v.drag_scaling);
    s << indent << "density: ";
    Printer<double>::stream(s, indent + "  ", v.density);
    s << indent << "viscosity: ";
    Printer<double>::stream(s, indent + "  ", v.viscosity);
    s << indent << "mass: ";
    Printer<double>::stream(s, indent + "  ", v.mass);
    s << indent << "volume: ";
    Printer<double>::stream(s, indent + "  ", v.volume);
    s << indent << "planar: ";
    Printer<double>::stream(s, indent + "  ", v.planar);
    s << indent << "K[]" << std::endl;
    for (size_t i = 0; i < v.K.size(); ++i)
    {
      s << indent << "  K[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.K[i]);
    }
    s << indent << "D[]" << std::endl;
    for (size_t i = 0; i < v.D.size(); ++i)
    {
      s << indent << "  D[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.D[i]);
    }
    s << indent << "I[]" << std::endl;
    for (size_t i = 0; i < v.I.size(); ++i)
    {
      s << indent << "  I[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.I[i]);
    }
    s << indent << "com[]" << std::endl;
    for (size_t i = 0; i < v.com.size(); ++i)
    {
      s << indent << "  com[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.com[i]);
    }
    s << indent << "cob[]" << std::endl;
    for (size_t i = 0; i < v.cob.size(); ++i)
    {
      s << indent << "  cob[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.cob[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUA_GAZEBO_MESSAGE_HYDRODYNAMICSPARAMS_H
