;; Auto-generated. Do not edit!


(when (boundp 'second_coursework::GetRoomCoord)
  (if (not (find-package "SECOND_COURSEWORK"))
    (make-package "SECOND_COURSEWORK"))
  (shadow 'GetRoomCoord (find-package "SECOND_COURSEWORK")))
(unless (find-package "SECOND_COURSEWORK::GETROOMCOORD")
  (make-package "SECOND_COURSEWORK::GETROOMCOORD"))
(unless (find-package "SECOND_COURSEWORK::GETROOMCOORDREQUEST")
  (make-package "SECOND_COURSEWORK::GETROOMCOORDREQUEST"))
(unless (find-package "SECOND_COURSEWORK::GETROOMCOORDRESPONSE")
  (make-package "SECOND_COURSEWORK::GETROOMCOORDRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass second_coursework::GetRoomCoordRequest
  :super ros::object
  :slots (_roomName ))

(defmethod second_coursework::GetRoomCoordRequest
  (:init
   (&key
    ((:roomName __roomName) "")
    )
   (send-super :init)
   (setq _roomName (string __roomName))
   self)
  (:roomName
   (&optional __roomName)
   (if __roomName (setq _roomName __roomName)) _roomName)
  (:serialization-length
   ()
   (+
    ;; string _roomName
    4 (length _roomName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _roomName
       (write-long (length _roomName) s) (princ _roomName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _roomName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roomName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass second_coursework::GetRoomCoordResponse
  :super ros::object
  :slots (_point ))

(defmethod second_coursework::GetRoomCoordResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass second_coursework::GetRoomCoord
  :super ros::object
  :slots ())

(setf (get second_coursework::GetRoomCoord :md5sum-) "d324a5cca6f56c33636632bf1cd930fc")
(setf (get second_coursework::GetRoomCoord :datatype-) "second_coursework/GetRoomCoord")
(setf (get second_coursework::GetRoomCoord :request) second_coursework::GetRoomCoordRequest)
(setf (get second_coursework::GetRoomCoord :response) second_coursework::GetRoomCoordResponse)

(defmethod second_coursework::GetRoomCoordRequest
  (:response () (instance second_coursework::GetRoomCoordResponse :init)))

(setf (get second_coursework::GetRoomCoordRequest :md5sum-) "d324a5cca6f56c33636632bf1cd930fc")
(setf (get second_coursework::GetRoomCoordRequest :datatype-) "second_coursework/GetRoomCoordRequest")
(setf (get second_coursework::GetRoomCoordRequest :definition-)
      "string roomName
---
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get second_coursework::GetRoomCoordResponse :md5sum-) "d324a5cca6f56c33636632bf1cd930fc")
(setf (get second_coursework::GetRoomCoordResponse :datatype-) "second_coursework/GetRoomCoordResponse")
(setf (get second_coursework::GetRoomCoordResponse :definition-)
      "string roomName
---
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :second_coursework/GetRoomCoord "d324a5cca6f56c33636632bf1cd930fc")


