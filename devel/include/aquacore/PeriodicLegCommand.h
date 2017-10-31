// Generated by gencpp from file aquacore/PeriodicLegCommand.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_PERIODICLEGCOMMAND_H
#define AQUACORE_MESSAGE_PERIODICLEGCOMMAND_H


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
struct PeriodicLegCommand_
{
  typedef PeriodicLegCommand_<ContainerAllocator> Type;

  PeriodicLegCommand_()
    : header()
    , amplitudes()
    , frequencies()
    , phase_offsets()
    , leg_offsets()
    , leg_velocities()  {
      amplitudes.assign(0.0);

      frequencies.assign(0.0);

      phase_offsets.assign(0.0);

      leg_offsets.assign(0.0);

      leg_velocities.assign(0.0);
  }
  PeriodicLegCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , amplitudes()
    , frequencies()
    , phase_offsets()
    , leg_offsets()
    , leg_velocities()  {
  (void)_alloc;
      amplitudes.assign(0.0);

      frequencies.assign(0.0);

      phase_offsets.assign(0.0);

      leg_offsets.assign(0.0);

      leg_velocities.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<float, 6>  _amplitudes_type;
  _amplitudes_type amplitudes;

   typedef boost::array<float, 6>  _frequencies_type;
  _frequencies_type frequencies;

   typedef boost::array<float, 6>  _phase_offsets_type;
  _phase_offsets_type phase_offsets;

   typedef boost::array<float, 6>  _leg_offsets_type;
  _leg_offsets_type leg_offsets;

   typedef boost::array<float, 6>  _leg_velocities_type;
  _leg_velocities_type leg_velocities;




  typedef boost::shared_ptr< ::aquacore::PeriodicLegCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::PeriodicLegCommand_<ContainerAllocator> const> ConstPtr;

}; // struct PeriodicLegCommand_

typedef ::aquacore::PeriodicLegCommand_<std::allocator<void> > PeriodicLegCommand;

typedef boost::shared_ptr< ::aquacore::PeriodicLegCommand > PeriodicLegCommandPtr;
typedef boost::shared_ptr< ::aquacore::PeriodicLegCommand const> PeriodicLegCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::PeriodicLegCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquacore

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'aquacore': ['/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg', '/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::PeriodicLegCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::PeriodicLegCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::PeriodicLegCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "48094d6d773e147611fe2c7c7ff18406";
  }

  static const char* value(const ::aquacore::PeriodicLegCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x48094d6d773e1476ULL;
  static const uint64_t static_value2 = 0x11fe2c7c7ff18406ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/PeriodicLegCommand";
  }

  static const char* value(const ::aquacore::PeriodicLegCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message represents the leg command parameterization that was decided by consensus at \n\
# MRL in July, 2014. The intention is that ROS-coded gaits will publish messages of this\n\
# type, and that the aqua robot as well as its simulator will implement leg motions \n\
# that follow the requested sinusoidal trajectories.\n\
#\n\
# Author: David Meger\n\
# Date: July 29, 2014 \n\
\n\
Header header\n\
\n\
#\n\
# The ordering of the 6 legs in all following arrays is:\n\
# 0: front-left\n\
# 1: mid-left\n\
# 2: hind-left\n\
# 3: front-right\n\
# 4: mid-right\n\
# 5: hind-right\n\
#\n\
# The orientation of the leg angles are:\n\
# 0: pointing backwards\n\
# pi: pointing downwards\n\
# 2*pi: pointing forwards\n\
#\n\
# Computation of current leg angle:\n\
# leg_angle = amplitude * cos(2*pi * frequency * dt + phase_offset) + leg_offset\n\
#\n\
# Midoff positioning and velocity modes:\n\
#\n\
# The midoff angle of each leg can be commanded in either position mode or in\n\
# velocity mode. They are implemented as follows:\n\
#\n\
# if leg_velocities[i] != 0:\n\
#   actual leg offset = last internally-stored leg offset + leg_velocities[i]*dt\n\
# else:\n\
#   actual leg offset = leg_offsets[i]\n\
\n\
float32[6] amplitudes     # units: rad\n\
float32[6] frequencies    # units: hz\n\
float32[6] phase_offsets  # units: rad\n\
float32[6] leg_offsets    # units: rad\n\
float32[6] leg_velocities # units: rad/s\n\
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

  static const char* value(const ::aquacore::PeriodicLegCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.amplitudes);
      stream.next(m.frequencies);
      stream.next(m.phase_offsets);
      stream.next(m.leg_offsets);
      stream.next(m.leg_velocities);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PeriodicLegCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::PeriodicLegCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::PeriodicLegCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "amplitudes[]" << std::endl;
    for (size_t i = 0; i < v.amplitudes.size(); ++i)
    {
      s << indent << "  amplitudes[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.amplitudes[i]);
    }
    s << indent << "frequencies[]" << std::endl;
    for (size_t i = 0; i < v.frequencies.size(); ++i)
    {
      s << indent << "  frequencies[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.frequencies[i]);
    }
    s << indent << "phase_offsets[]" << std::endl;
    for (size_t i = 0; i < v.phase_offsets.size(); ++i)
    {
      s << indent << "  phase_offsets[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.phase_offsets[i]);
    }
    s << indent << "leg_offsets[]" << std::endl;
    for (size_t i = 0; i < v.leg_offsets.size(); ++i)
    {
      s << indent << "  leg_offsets[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.leg_offsets[i]);
    }
    s << indent << "leg_velocities[]" << std::endl;
    for (size_t i = 0; i < v.leg_velocities.size(); ++i)
    {
      s << indent << "  leg_velocities[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.leg_velocities[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_PERIODICLEGCOMMAND_H