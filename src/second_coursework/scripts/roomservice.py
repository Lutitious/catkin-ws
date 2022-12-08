#!/usr/bin/env python

import rospy
from second_coursework.srv import GetRoomCoord, GetRoomCoordResponse
from geometry_msgs.msg import Point

class RoomCoord(object):
    def __init__(self):
        self.rooms = {
            'A': [Point(-5, 4, 0), Point(-4, 4, 0), Point(-5, 3, 0), Point(-4, 3, 0)],
            'B': [Point(-1, 3, 0), Point(-2, 3, 0), Point(-1, 4, 0), Point(-2, 4, 0)],
            'C': [Point(3, 3, 0), Point(3, 4, 0), Point(4, 3, 0), Point(4, 4, 0)],
            'D': [Point(-5, -1, 0), Point(-4, -1, 0), Point(-5, -2, 0), Point(-4, -2, 0)],
            'E': [Point(-1, -1, 0), Point(-2, -1, 0), Point(-1, -2, 0), Point(-2, -2, 0)],
            'F': [Point(3, -2, 0), Point(3, -3, 0), Point(4, -2, 0), Point(4, -3, 0)]
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

