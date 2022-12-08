#!/usr/bin/env python

import rospy
import actionlib
from second_coursework.msg import SearchAction, SearchFeedback, SearchResult

# Define an action message called Search, with fields:
# o Request: a string containing the name of a room for which the robot has to
# make the inventory.
# o Feedback: a list of strings and a list of integers.
# o Result: a list of strings, a list of integers, and a time stamp (obtained with
# rospy.Time.now()).
# • Create a node called main_node.
# • The main_node should contain a class implementing the server of the action
# above. The behaviour of the action must be represented as a state machine, as
# specified in the next section.
# Define an action message called Search, with fields:
# o Request: a string containing the name of a room for which the robot has to
# make the inventory.
# o Feedback: a list of strings and a list of integers.
# o Result: a list of strings, a list of integers, and a time stamp (obtained with
# rospy.Time.now()).
# • Create a node called main_node.
# • The main_node should contain a class implementing the server of the action
# above. The behaviour of the action must be represented as a state machine, as
# specified in the next section.

class SearchServer(object):
    # Create a state machine with the following states:
    # • IDLE: the robot is waiting for a request.
    # • SEARCHING: the robot is moving to the room and making the inventory.
    # • FINISHED: the robot has finished the inventory.

    def __init__(self):
        self._as = actionlib.SimpleActionServer("search", SearchAction, self.execute_cb, False)
        self._as.start()
    
    def execute_cb(self, goal):
        rospy.loginfo("Received goal: %s" % goal)
        state = "IDLE"
        feedback = SearchFeedback()
        result = SearchResult()
        while not rospy.is_shutdown():
            if state == "IDLE":
                rospy.loginfo("IDLE")
                if self._as.is_preempt_requested():
                    rospy.loginfo("Goal cancelled/preempted")
                    self._as.set_preempted()
                    break
                if self._as.is_new_goal_available():
                    rospy.loginfo("New goal received")
                    goal = self._as.accept_new_goal()
                if goal.request != "":
                    state = "SEARCHING"
            elif state == "SEARCHING":
                rospy.loginfo("SEARCHING")
                feedback.feedback = ["object_1", "object_2", "object_3"]
                feedback.feedback = [1, 2, 3]
                self._as.publish_feedback
                state = "FINISHED"
            elif state == "FINISHED":
                rospy.loginfo("FINISHED")
                result.result = ["object_1", "object_2", "object_3"]
                result.result = [1, 2, 3]
                result.time = rospy.Time.now()
                self._as.set_succeeded(result)
                break
            rospy.sleep(1)

if __name__ == '__main__':
    rospy.init_node('main_node')
    server = SearchServer()
    print("Server started")
    rospy.spin()



