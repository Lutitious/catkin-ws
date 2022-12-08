#!/usr/bin/env python

import rospy
from second_coursework.srv import GetRoomCoord, GetRoomCoordResponse
from geometry_msgs.msg import Point

class RoomCoord(object):
    def __init__(self):
        self.rooms = {
            'kitchen': [Point(1, 1, 0), Point(2, 2, 0), Point(3, 3, 0), Point(4, 4, 0)],
            'living_room': [Point(5, 5, 0), Point(6, 6, 0), Point(7, 7, 0), Point(8, 8, 0)],
            'bedroom': [Point(9, 9, 0), Point(10, 10, 0), Point(11, 11, 0), Point(12, 12, 0)],
            'bathroom': [Point(13, 13, 0), Point(14, 14, 0), Point(15, 15, 0), Point(16, 16, 0)]
        }
        self.room = None
        self.index = 0

    def handle_get_room_coord(self, req):
        if req.room in self.rooms:
            self.room = req.room
            self.index = (self.index + 1) % 4
            return GetRoomCoordResponse(self.rooms[self.room][self.index])
        else:
            return GetRoomCoordResponse(Point(0, 0, 0))

def main():
    rospy.init_node('roomservice')
    room_coord = RoomCoord()
    service = rospy.Service('GetRoomCoord', GetRoomCoord, room_coord.handle_get_room_coord)
    print("Ready to get room coordinates.")
    rospy.spin()

if __name__ == "__main__":
    main()

