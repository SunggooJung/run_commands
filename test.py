#!/usr/bin/env python

import rospy
from yolact_ros_msgs.msg import SemanticDetections 

class SemanticRiskGenerator:
    def __init__(self):
        rospy.init_node('semantic_risk_generator', anonymous=True)
        self.topic_name = '/yolact_ros/detections'

        rospy.Subscriber(self.topic_name, SemanticDetections, self.semantic_callback)

    def semantic_callback(self, data):
        
        [print(f"Confidence: {obj.score}") for obj in data.class_name if obj.class_name == 'laptop']

    def run(self):
        # Keep the script running
        rospy.spin()

if __name__ == '__main__':
    semantic_risk = SemanticRiskGenerator()
    try:
        semantic_risk.run()
    except rospy.ROSInterruptException:
        pass

