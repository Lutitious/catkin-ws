; Auto-generated. Do not edit!


(cl:in-package second_coursework-srv)


;//! \htmlinclude GetRoomCoord-request.msg.html

(cl:defclass <GetRoomCoord-request> (roslisp-msg-protocol:ros-message)
  ((roomName
    :reader roomName
    :initarg :roomName
    :type cl:string
    :initform ""))
)

(cl:defclass GetRoomCoord-request (<GetRoomCoord-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoomCoord-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoomCoord-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-srv:<GetRoomCoord-request> is deprecated: use second_coursework-srv:GetRoomCoord-request instead.")))

(cl:ensure-generic-function 'roomName-val :lambda-list '(m))
(cl:defmethod roomName-val ((m <GetRoomCoord-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-srv:roomName-val is deprecated.  Use second_coursework-srv:roomName instead.")
  (roomName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoomCoord-request>) ostream)
  "Serializes a message object of type '<GetRoomCoord-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roomName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roomName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoomCoord-request>) istream)
  "Deserializes a message object of type '<GetRoomCoord-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roomName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roomName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoomCoord-request>)))
  "Returns string type for a service object of type '<GetRoomCoord-request>"
  "second_coursework/GetRoomCoordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoomCoord-request)))
  "Returns string type for a service object of type 'GetRoomCoord-request"
  "second_coursework/GetRoomCoordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoomCoord-request>)))
  "Returns md5sum for a message object of type '<GetRoomCoord-request>"
  "d324a5cca6f56c33636632bf1cd930fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoomCoord-request)))
  "Returns md5sum for a message object of type 'GetRoomCoord-request"
  "d324a5cca6f56c33636632bf1cd930fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoomCoord-request>)))
  "Returns full string definition for message of type '<GetRoomCoord-request>"
  (cl:format cl:nil "string roomName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoomCoord-request)))
  "Returns full string definition for message of type 'GetRoomCoord-request"
  (cl:format cl:nil "string roomName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoomCoord-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'roomName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoomCoord-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoomCoord-request
    (cl:cons ':roomName (roomName msg))
))
;//! \htmlinclude GetRoomCoord-response.msg.html

(cl:defclass <GetRoomCoord-response> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetRoomCoord-response (<GetRoomCoord-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoomCoord-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoomCoord-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-srv:<GetRoomCoord-response> is deprecated: use second_coursework-srv:GetRoomCoord-response instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <GetRoomCoord-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-srv:point-val is deprecated.  Use second_coursework-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoomCoord-response>) ostream)
  "Serializes a message object of type '<GetRoomCoord-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoomCoord-response>) istream)
  "Deserializes a message object of type '<GetRoomCoord-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoomCoord-response>)))
  "Returns string type for a service object of type '<GetRoomCoord-response>"
  "second_coursework/GetRoomCoordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoomCoord-response)))
  "Returns string type for a service object of type 'GetRoomCoord-response"
  "second_coursework/GetRoomCoordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoomCoord-response>)))
  "Returns md5sum for a message object of type '<GetRoomCoord-response>"
  "d324a5cca6f56c33636632bf1cd930fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoomCoord-response)))
  "Returns md5sum for a message object of type 'GetRoomCoord-response"
  "d324a5cca6f56c33636632bf1cd930fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoomCoord-response>)))
  "Returns full string definition for message of type '<GetRoomCoord-response>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoomCoord-response)))
  "Returns full string definition for message of type 'GetRoomCoord-response"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoomCoord-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoomCoord-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoomCoord-response
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRoomCoord)))
  'GetRoomCoord-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRoomCoord)))
  'GetRoomCoord-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoomCoord)))
  "Returns string type for a service object of type '<GetRoomCoord>"
  "second_coursework/GetRoomCoord")