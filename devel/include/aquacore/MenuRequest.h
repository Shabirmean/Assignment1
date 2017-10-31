// Generated by gencpp from file aquacore/MenuRequest.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_MENUREQUEST_H
#define AQUACORE_MESSAGE_MENUREQUEST_H


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
struct MenuRequest_
{
  typedef MenuRequest_<ContainerAllocator> Type;

  MenuRequest_()
    : title()
    , opts()
    , timeout(0)
    , default_choice(0)  {
    }
  MenuRequest_(const ContainerAllocator& _alloc)
    : title(_alloc)
    , opts(_alloc)
    , timeout(0)
    , default_choice(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _title_type;
  _title_type title;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _opts_type;
  _opts_type opts;

   typedef int32_t _timeout_type;
  _timeout_type timeout;

   typedef int32_t _default_choice_type;
  _default_choice_type default_choice;




  typedef boost::shared_ptr< ::aquacore::MenuRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::MenuRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MenuRequest_

typedef ::aquacore::MenuRequest_<std::allocator<void> > MenuRequest;

typedef boost::shared_ptr< ::aquacore::MenuRequest > MenuRequestPtr;
typedef boost::shared_ptr< ::aquacore::MenuRequest const> MenuRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::MenuRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::MenuRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::MenuRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::MenuRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::MenuRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::MenuRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::MenuRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::MenuRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::MenuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8793e9d66fca0fa66ec846d740ac67e7";
  }

  static const char* value(const ::aquacore::MenuRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8793e9d66fca0fa6ULL;
  static const uint64_t static_value2 = 0x6ec846d740ac67e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::MenuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/MenuRequest";
  }

  static const char* value(const ::aquacore::MenuRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::MenuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string title\n\
\n\
string[] opts\n\
\n\
int32 timeout\n\
\n\
int32 default_choice\n\
";
  }

  static const char* value(const ::aquacore::MenuRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::MenuRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.title);
      stream.next(m.opts);
      stream.next(m.timeout);
      stream.next(m.default_choice);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MenuRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::MenuRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::MenuRequest_<ContainerAllocator>& v)
  {
    s << indent << "title: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.title);
    s << indent << "opts[]" << std::endl;
    for (size_t i = 0; i < v.opts.size(); ++i)
    {
      s << indent << "  opts[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.opts[i]);
    }
    s << indent << "timeout: ";
    Printer<int32_t>::stream(s, indent + "  ", v.timeout);
    s << indent << "default_choice: ";
    Printer<int32_t>::stream(s, indent + "  ", v.default_choice);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_MENUREQUEST_H