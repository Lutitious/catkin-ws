#!/usr/bin/env python
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
from geometry_msgs.msg import Point
print("Starting roomservice node")

def handle_get_room_coord(req):
    print("Returning point for room " + req.room)
    return Point(1, 1, 0)



