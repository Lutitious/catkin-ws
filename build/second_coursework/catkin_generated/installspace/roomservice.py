#!/usr/bin/env python3
# Create a service called GetRoomCoord that, given a room name, as a string, returns
# a point inside the room. You can use any representation for the point (a
# predefined message, such as those in geometry_msgs, or your own definition).
# • Create a node called roomservice that implements the service specified above.
# Every time the service is called with a room name, it must return the next
# coordinate inside the room from a list of 4 coordinates. The service must have 4
# coordinates of your choice per room, and return them in order, starting again
# from the first one after having returned the fourth. More precisely: if at the
# previous call the service returned the n-th coordinate for a room, in the next call
# with the same room it must return the (n+1)%4 coordinate in the list.

# • Create a node called roomclient that calls the service GetRoomCoord with a room
# name as an argument. The node must print the returned point on the screen.
# • Create a launch file that launches the roomservice node and the roomclient node
# with the room name as an argument.

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
    rospy.spin()

