// Generated by gencpp from file arm_lib/Angles.msg
// DO NOT EDIT!


#ifndef ARM_LIB_MESSAGE_ANGLES_H
#define ARM_LIB_MESSAGE_ANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_lib
{
template <class ContainerAllocator>
struct Angles_
{
  typedef Angles_<ContainerAllocator> Type;

  Angles_()
    : base_arm1(0.0)
    , arm1_arm2(0.0)
    , arm2_arm3(0.0)
    , arm3_arm4(0.0)
    , p(0.0)
    , i(0.0)
    , d(0.0)  {
    }
  Angles_(const ContainerAllocator& _alloc)
    : base_arm1(0.0)
    , arm1_arm2(0.0)
    , arm2_arm3(0.0)
    , arm3_arm4(0.0)
    , p(0.0)
    , i(0.0)
    , d(0.0)  {
  (void)_alloc;
    }



   typedef float _base_arm1_type;
  _base_arm1_type base_arm1;

   typedef float _arm1_arm2_type;
  _arm1_arm2_type arm1_arm2;

   typedef float _arm2_arm3_type;
  _arm2_arm3_type arm2_arm3;

   typedef float _arm3_arm4_type;
  _arm3_arm4_type arm3_arm4;

   typedef float _p_type;
  _p_type p;

   typedef float _i_type;
  _i_type i;

   typedef float _d_type;
  _d_type d;





  typedef boost::shared_ptr< ::arm_lib::Angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_lib::Angles_<ContainerAllocator> const> ConstPtr;

}; // struct Angles_

typedef ::arm_lib::Angles_<std::allocator<void> > Angles;

typedef boost::shared_ptr< ::arm_lib::Angles > AnglesPtr;
typedef boost::shared_ptr< ::arm_lib::Angles const> AnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_lib::Angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_lib::Angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_lib::Angles_<ContainerAllocator1> & lhs, const ::arm_lib::Angles_<ContainerAllocator2> & rhs)
{
  return lhs.base_arm1 == rhs.base_arm1 &&
    lhs.arm1_arm2 == rhs.arm1_arm2 &&
    lhs.arm2_arm3 == rhs.arm2_arm3 &&
    lhs.arm3_arm4 == rhs.arm3_arm4 &&
    lhs.p == rhs.p &&
    lhs.i == rhs.i &&
    lhs.d == rhs.d;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_lib::Angles_<ContainerAllocator1> & lhs, const ::arm_lib::Angles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_lib

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_lib::Angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_lib::Angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_lib::Angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_lib::Angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_lib::Angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_lib::Angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_lib::Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d5c56eccbb002287c9ebfe2ecc181f37";
  }

  static const char* value(const ::arm_lib::Angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd5c56eccbb002287ULL;
  static const uint64_t static_value2 = 0xc9ebfe2ecc181f37ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_lib::Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_lib/Angles";
  }

  static const char* value(const ::arm_lib::Angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_lib::Angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 base_arm1\n"
"float32 arm1_arm2\n"
"float32 arm2_arm3\n"
"float32 arm3_arm4\n"
"float32 p\n"
"float32 i \n"
"float32 d\n"
;
  }

  static const char* value(const ::arm_lib::Angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_lib::Angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base_arm1);
      stream.next(m.arm1_arm2);
      stream.next(m.arm2_arm3);
      stream.next(m.arm3_arm4);
      stream.next(m.p);
      stream.next(m.i);
      stream.next(m.d);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_lib::Angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_lib::Angles_<ContainerAllocator>& v)
  {
    s << indent << "base_arm1: ";
    Printer<float>::stream(s, indent + "  ", v.base_arm1);
    s << indent << "arm1_arm2: ";
    Printer<float>::stream(s, indent + "  ", v.arm1_arm2);
    s << indent << "arm2_arm3: ";
    Printer<float>::stream(s, indent + "  ", v.arm2_arm3);
    s << indent << "arm3_arm4: ";
    Printer<float>::stream(s, indent + "  ", v.arm3_arm4);
    s << indent << "p: ";
    Printer<float>::stream(s, indent + "  ", v.p);
    s << indent << "i: ";
    Printer<float>::stream(s, indent + "  ", v.i);
    s << indent << "d: ";
    Printer<float>::stream(s, indent + "  ", v.d);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_LIB_MESSAGE_ANGLES_H
