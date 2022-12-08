#!/usr/bin/env python

import rospy
import actionlib
import smach
import cv2
import smach_ros
from sensor_msgs.msg import Image
from second_coursework.msg import SearchAction, SearchFeedback, SearchResult
class SearchServer(object):

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
                if goal.roomName != "":
                    state = "SEARCHING"
            elif state == "SEARCHING":
                rospy.loginfo("SEARCHING")
                feedback.roomNames = ["A", "B", "C", "D", "E", "F"]
                feedback.roomIds = [1, 2, 3, 4, 5, 6]
                self._as.publish_feedback
                state = "FINISHED"
            elif state == "FINISHED":
                rospy.loginfo("FINISHED")
                if goal.roomName in feedback.roomNames:
                    result.roomNames.append(goal.roomName)
                    result.roomIds.append(feedback.roomIds[feedback.roomNames.index(goal.roomName)])
                result.roomTimes.append(rospy.Time.now())
                self._as.set_succeeded(result)
                break
            rospy.sleep(1)

# Create state machine
sm = smach.StateMachine(outcomes=['done'])

class RecognizeObjects(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['done'])
        
    def execute(self, userdata):
        # Process camera feed from /camera/image
        model = cv2.dnn.readNetFromDarknet("/opt/darknet/cfg/yolov4.cfg", "/opt/darknet/yolov4.weights")

        # Get image from camera
        self.cam.subscribe("/camera/image")
        image = self.cam.wait_for_msg()
        image = self.bridge.imgmsg_to_cv2(image, "passthrough")

        # Check if image was successfully read
        if image is None:
            rospy.logerr("No image received")
            return 'done'
        else:
            rospy.loginfo("Image received")
        # Convert image to 4D tensor
        image = cv2.dnn.blobFromImage(image, 1/255, (416, 416), (0, 0, 0), swapRB=True, crop=False)

        # Set input to model
        model.setInput(image)

        # Get output from model
        output = model.forward(self.get_output_layers(model))

        # Loop through output
        for detection in output:
            # Loop through detections
            for detection in detection:
                # Get score
                score = float(detection[5])

                # Check if score is above threshold
                if score > 0.5:
                    # Get class ID
                    class_id = int(detection[4])

                    # Get label
                    label = str(self.classes[class_id])

                    # Get bounding box coordinates
                    x = int(detection[0] * image.shape[1])
                    y = int(detection[1] * image.shape[0])
                    w = int(detection[2] * image.shape[1])
                    h = int(detection[3] * image.shape[0])

                    # Draw bounding box
                    cv2.rectangle(image, (x, y), (x + w, y + h), (0, 255, 0), 2)

                    # Draw label
                    cv2.putText(image, label, (x, y - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)


        # Create feedback message
        feedback = SearchFeedback()
        feedback.feedback = ["object_1", "object_2", "object_3"]
        feedback.feedback = [1, 2, 3]

        # Publish feedback message
        self._as.publish_feedback(feedback)
        
        return 'done'

# Define state for moving around the room
class MoveAroundRoom(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['done'])
    
    def execute(self, userdata):
        # Code for moving the robot around the room goes here
        smach.StateMachine.add('MOVE_AROUND_ROOM', MoveAroundRoom(), transitions={'done': 'done'})

        
        return 'done'
# Define state for stopping when the robot sees a cake
class StopOnCake(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['done'])
        
    def execute(self, userdata):
        # Code for stopping the robot when it sees a cake goes here
        smach.StateMachine.add('STOP_ON_CAKE', StopOnCake(), transitions={'done': 'done'})

        
        return 'done'

# Create concurrence container
conc = smach.Concurrence(outcomes=['done'], default_outcome='done',
                         outcome_map={'done': 
                                      {'MOVE_AROUND_ROOM': 'done',
                                       'RECOGNIZE_OBJECTS': 'done'}})

# Add states to concurrence container
with conc:
    smach.Concurrence.add('MOVE_AROUND_ROOM', MoveAroundRoom())
    smach.Concurrence.add('RECOGNIZE_OBJECTS', RecognizeObjects())

def execute_cb(self, goal):
    rospy.loginfo("Received goal: %s" % goal)

    # Create introspection server
    sis = smach_ros.IntrospectionServer('server_name', sm, '/SM_ROOT')
    sis.start()

    # Execute the state machine
    outcome = sm.execute()

    # Stop the introspection server
    rospy.loginfo('State machine finished with outcome: ' + outcome)
    sis.stop()

def main():
    rospy.init_node('main_node')
    server = SearchServer()
    print("Server started")
    rospy.spin()

if __name__ == '__main__':
    main()




