// Generated by gencpp from file aquacore/cuROSTityScore.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_CUROSTITYSCORE_H
#define AQUACORE_MESSAGE_CUROSTITYSCORE_H


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
struct cuROSTityScore_
{
  typedef cuROSTityScore_<ContainerAllocator> Type;

  cuROSTityScore_()
    : latitude(0.0)
    , longitude(0.0)
    , depth(0.0)
    , cuROSTity_score(0.0)  {
    }
  cuROSTityScore_(const ContainerAllocator& _alloc)
    : latitude(0.0)
    , longitude(0.0)
    , depth(0.0)
    , cuROSTity_score(0.0)  {
  (void)_alloc;
    }



   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _depth_type;
  _depth_type depth;

   typedef double _cuROSTity_score_type;
  _cuROSTity_score_type cuROSTity_score;




  typedef boost::shared_ptr< ::aquacore::cuROSTityScore_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::cuROSTityScore_<ContainerAllocator> const> ConstPtr;

}; // struct cuROSTityScore_

typedef ::aquacore::cuROSTityScore_<std::allocator<void> > cuROSTityScore;

typedef boost::shared_ptr< ::aquacore::cuROSTityScore > cuROSTityScorePtr;
typedef boost::shared_ptr< ::aquacore::cuROSTityScore const> cuROSTityScoreConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::cuROSTityScore_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::cuROSTityScore_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::cuROSTityScore_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::cuROSTityScore_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::cuROSTityScore_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::cuROSTityScore_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::cuROSTityScore_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::cuROSTityScore_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::cuROSTityScore_<ContainerAllocator> >
{
  static const char* value()
  {
    return "56f5e575876926277093a9d563a2480f";
  }

  static const char* value(const ::aquacore::cuROSTityScore_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x56f5e57587692627ULL;
  static const uint64_t static_value2 = 0x7093a9d563a2480fULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::cuROSTityScore_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/cuROSTityScore";
  }

  static const char* value(const ::aquacore::cuROSTityScore_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::cuROSTityScore_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 latitude\n\
float64 longitude\n\
float64 depth\n\
float64 cuROSTity_score\n\
\n\
";
  }

  static const char* value(const ::aquacore::cuROSTityScore_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::cuROSTityScore_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.depth);
      stream.next(m.cuROSTity_score);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cuROSTityScore_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::cuROSTityScore_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::cuROSTityScore_<ContainerAllocator>& v)
  {
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "depth: ";
    Printer<double>::stream(s, indent + "  ", v.depth);
    s << indent << "cuROSTity_score: ";
    Printer<double>::stream(s, indent + "  ", v.cuROSTity_score);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_CUROSTITYSCORE_H
