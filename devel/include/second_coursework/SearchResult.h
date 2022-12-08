// Generated by gencpp from file second_coursework/SearchResult.msg
// DO NOT EDIT!


#ifndef SECOND_COURSEWORK_MESSAGE_SEARCHRESULT_H
#define SECOND_COURSEWORK_MESSAGE_SEARCHRESULT_H


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
struct SearchResult_
{
  typedef SearchResult_<ContainerAllocator> Type;

  SearchResult_()
    : roomNames()
    , roomIds()
    , roomTimes()  {
    }
  SearchResult_(const ContainerAllocator& _alloc)
    : roomNames(_alloc)
    , roomIds(_alloc)
    , roomTimes(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _roomNames_type;
  _roomNames_type roomNames;

   typedef std::vector<uint32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint32_t>> _roomIds_type;
  _roomIds_type roomIds;

   typedef std::vector<ros::Time, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<ros::Time>> _roomTimes_type;
  _roomTimes_type roomTimes;





  typedef boost::shared_ptr< ::second_coursework::SearchResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::second_coursework::SearchResult_<ContainerAllocator> const> ConstPtr;

}; // struct SearchResult_

typedef ::second_coursework::SearchResult_<std::allocator<void> > SearchResult;

typedef boost::shared_ptr< ::second_coursework::SearchResult > SearchResultPtr;
typedef boost::shared_ptr< ::second_coursework::SearchResult const> SearchResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::second_coursework::SearchResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::second_coursework::SearchResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::second_coursework::SearchResult_<ContainerAllocator1> & lhs, const ::second_coursework::SearchResult_<ContainerAllocator2> & rhs)
{
  return lhs.roomNames == rhs.roomNames &&
    lhs.roomIds == rhs.roomIds &&
    lhs.roomTimes == rhs.roomTimes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::second_coursework::SearchResult_<ContainerAllocator1> & lhs, const ::second_coursework::SearchResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace second_coursework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::second_coursework::SearchResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::second_coursework::SearchResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::SearchResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::second_coursework::SearchResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::SearchResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::second_coursework::SearchResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::second_coursework::SearchResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b9694de92de2396031c990177eb077c";
  }

  static const char* value(const ::second_coursework::SearchResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b9694de92de2396ULL;
  static const uint64_t static_value2 = 0x031c990177eb077cULL;
};

template<class ContainerAllocator>
struct DataType< ::second_coursework::SearchResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "second_coursework/SearchResult";
  }

  static const char* value(const ::second_coursework::SearchResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::second_coursework::SearchResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"string[] roomNames\n"
"uint32[] roomIds\n"
"time[] roomTimes\n"
;
  }

  static const char* value(const ::second_coursework::SearchResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::second_coursework::SearchResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roomNames);
      stream.next(m.roomIds);
      stream.next(m.roomTimes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SearchResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::second_coursework::SearchResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::second_coursework::SearchResult_<ContainerAllocator>& v)
  {
    s << indent << "roomNames[]" << std::endl;
    for (size_t i = 0; i < v.roomNames.size(); ++i)
    {
      s << indent << "  roomNames[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.roomNames[i]);
    }
    s << indent << "roomIds[]" << std::endl;
    for (size_t i = 0; i < v.roomIds.size(); ++i)
    {
      s << indent << "  roomIds[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.roomIds[i]);
    }
    s << indent << "roomTimes[]" << std::endl;
    for (size_t i = 0; i < v.roomTimes.size(); ++i)
    {
      s << indent << "  roomTimes[" << i << "]: ";
      Printer<ros::Time>::stream(s, indent + "  ", v.roomTimes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SECOND_COURSEWORK_MESSAGE_SEARCHRESULT_H