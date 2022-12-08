; Auto-generated. Do not edit!


(cl:in-package second_coursework-msg)


;//! \htmlinclude SearchFeedback.msg.html

(cl:defclass <SearchFeedback> (roslisp-msg-protocol:ros-message)
  ((roomNames
    :reader roomNames
    :initarg :roomNames
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (roomIds
    :reader roomIds
    :initarg :roomIds
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SearchFeedback (<SearchFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_coursework-msg:<SearchFeedback> is deprecated: use second_coursework-msg:SearchFeedback instead.")))

(cl:ensure-generic-function 'roomNames-val :lambda-list '(m))
(cl:defmethod roomNames-val ((m <SearchFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:roomNames-val is deprecated.  Use second_coursework-msg:roomNames instead.")
  (roomNames m))

(cl:ensure-generic-function 'roomIds-val :lambda-list '(m))
(cl:defmethod roomIds-val ((m <SearchFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_coursework-msg:roomIds-val is deprecated.  Use second_coursework-msg:roomIds instead.")
  (roomIds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchFeedback>) ostream)
  "Serializes a message object of type '<SearchFeedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roomNames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'roomNames))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roomIds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'roomIds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchFeedback>) istream)
  "Deserializes a message object of type '<SearchFeedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roomNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roomNames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roomIds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roomIds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchFeedback>)))
  "Returns string type for a message object of type '<SearchFeedback>"
  "second_coursework/SearchFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchFeedback)))
  "Returns string type for a message object of type 'SearchFeedback"
  "second_coursework/SearchFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchFeedback>)))
  "Returns md5sum for a message object of type '<SearchFeedback>"
  "ee5bd5de1a376e189bc23b781a2b45f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchFeedback)))
  "Returns md5sum for a message object of type 'SearchFeedback"
  "ee5bd5de1a376e189bc23b781a2b45f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchFeedback>)))
  "Returns full string definition for message of type '<SearchFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string[] roomNames~%uint32[] roomIds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchFeedback)))
  "Returns full string definition for message of type 'SearchFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string[] roomNames~%uint32[] roomIds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchFeedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roomNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roomIds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchFeedback
    (cl:cons ':roomNames (roomNames msg))
    (cl:cons ':roomIds (roomIds msg))
))
