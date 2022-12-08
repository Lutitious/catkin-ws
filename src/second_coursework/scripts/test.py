# Import required modules
import rospy
import actionlib
from second_coursework.msg import SearchAction, SearchGoal

# Create class for action client
class SearchClient(object):
    def __init__(self):
        # Initialize ROS node
        rospy.init_node('search_client')

        # Create instance of action client
        self.client = actionlib.SimpleActionClient('search', SearchAction)

        # Wait for action server to start
        self.client.wait_for_server()

    def run(self):
        # Create action goal
        goal = SearchGoal()
        goal.roomName = "D"

        # Send action goal to action server
        self.client.send_goal(goal)

        # Wait for action to finish (with timeout)
        self.client.wait_for_result(rospy.Duration(30.0))

        # Get action result
        result = self.client.get_result()

        # Print action result
        print(result)

# Create instance of action client class
client = SearchClient()

# Run action client
client.run()
