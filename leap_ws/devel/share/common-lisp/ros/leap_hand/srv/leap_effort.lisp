; Auto-generated. Do not edit!


(cl:in-package leap_hand-srv)


;//! \htmlinclude leap_effort-request.msg.html

(cl:defclass <leap_effort-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass leap_effort-request (<leap_effort-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leap_effort-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leap_effort-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_hand-srv:<leap_effort-request> is deprecated: use leap_hand-srv:leap_effort-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leap_effort-request>) ostream)
  "Serializes a message object of type '<leap_effort-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leap_effort-request>) istream)
  "Deserializes a message object of type '<leap_effort-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leap_effort-request>)))
  "Returns string type for a service object of type '<leap_effort-request>"
  "leap_hand/leap_effortRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_effort-request)))
  "Returns string type for a service object of type 'leap_effort-request"
  "leap_hand/leap_effortRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leap_effort-request>)))
  "Returns md5sum for a message object of type '<leap_effort-request>"
  "3a8f7ca4b38fbe820a7205cc08e38abf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leap_effort-request)))
  "Returns md5sum for a message object of type 'leap_effort-request"
  "3a8f7ca4b38fbe820a7205cc08e38abf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leap_effort-request>)))
  "Returns full string definition for message of type '<leap_effort-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leap_effort-request)))
  "Returns full string definition for message of type 'leap_effort-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leap_effort-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leap_effort-request>))
  "Converts a ROS message object to a list"
  (cl:list 'leap_effort-request
))
;//! \htmlinclude leap_effort-response.msg.html

(cl:defclass <leap_effort-response> (roslisp-msg-protocol:ros-message)
  ((effort
    :reader effort
    :initarg :effort
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass leap_effort-response (<leap_effort-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leap_effort-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leap_effort-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_hand-srv:<leap_effort-response> is deprecated: use leap_hand-srv:leap_effort-response instead.")))

(cl:ensure-generic-function 'effort-val :lambda-list '(m))
(cl:defmethod effort-val ((m <leap_effort-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_hand-srv:effort-val is deprecated.  Use leap_hand-srv:effort instead.")
  (effort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leap_effort-response>) ostream)
  "Serializes a message object of type '<leap_effort-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'effort))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leap_effort-response>) istream)
  "Deserializes a message object of type '<leap_effort-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'effort) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'effort)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leap_effort-response>)))
  "Returns string type for a service object of type '<leap_effort-response>"
  "leap_hand/leap_effortResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_effort-response)))
  "Returns string type for a service object of type 'leap_effort-response"
  "leap_hand/leap_effortResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leap_effort-response>)))
  "Returns md5sum for a message object of type '<leap_effort-response>"
  "3a8f7ca4b38fbe820a7205cc08e38abf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leap_effort-response)))
  "Returns md5sum for a message object of type 'leap_effort-response"
  "3a8f7ca4b38fbe820a7205cc08e38abf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leap_effort-response>)))
  "Returns full string definition for message of type '<leap_effort-response>"
  (cl:format cl:nil "float64[] effort~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leap_effort-response)))
  "Returns full string definition for message of type 'leap_effort-response"
  (cl:format cl:nil "float64[] effort~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leap_effort-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'effort) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leap_effort-response>))
  "Converts a ROS message object to a list"
  (cl:list 'leap_effort-response
    (cl:cons ':effort (effort msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'leap_effort)))
  'leap_effort-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'leap_effort)))
  'leap_effort-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_effort)))
  "Returns string type for a service object of type '<leap_effort>"
  "leap_hand/leap_effort")