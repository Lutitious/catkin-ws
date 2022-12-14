// Generated by gencpp from file second_coursework/GetRoomCoordRequest.msg
// DO NOT EDIT!


#ifndef SECOND_COURSEWORK_MESSAGE_GETROOMCOORDREQUEST_H
#define SECOND_COURSEWORK_MESSAGE_GETROOMCOORDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace second_coursework
{
template <class ContainerAllocator>
struct GetRoomCoordRequest_
{
  typedef GetRoomCoordRequest_<ContainerAllocator> Type;

  GetRoomCoordRequest_()
    : roomName()  {
    }
  GetRoomCoordRequest_(const ContainerAllocator& _alloc)
    : roomName(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _roomName_type;
  _roomName_type roomName;





  typedef boost::shared_ptr< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetRoomCoordRequest_

typedef ::second_coursework::GetRoomCoordRequest_<std::allocator<void> > GetRoomCoordRequest;

typedef boost::shared_ptr< ::second_coursework::GetRoomCoordRequest > GetRoomCoordRequestPtr;
typedef boost::shared_ptr< ::second_coursework::GetRoomCoordRequest const> GetRoomCoordRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator1> & lhs, const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator2> & rhs)
{
  return lhs.roomName == rhs.roomName;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator1> & lhs, const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace second_coursework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "92fd3f5b5bb98ae4c37a9c24309a0a61";
  }

  static const char* value(const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x92fd3f5b5bb98ae4ULL;
  static const uint64_t static_value2 = 0xc37a9c24309a0a61ULL;
};

template<class ContainerAllocator>
struct DataType< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "second_coursework/GetRoomCoordRequest";
  }

  static const char* value(const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string roomName\n"
;
  }

  static const char* value(const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roomName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetRoomCoordRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::second_coursework::GetRoomCoordRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::second_coursework::GetRoomCoordRequest_<ContainerAllocator>& v)
  {
    s << indent << "roomName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.roomName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SECOND_COURSEWORK_MESSAGE_GETROOMCOORDREQUEST_H
