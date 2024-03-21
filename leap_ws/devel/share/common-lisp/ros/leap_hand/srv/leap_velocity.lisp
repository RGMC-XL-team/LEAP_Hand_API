; Auto-generated. Do not edit!


(cl:in-package leap_hand-srv)


;//! \htmlinclude leap_velocity-request.msg.html

(cl:defclass <leap_velocity-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass leap_velocity-request (<leap_velocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leap_velocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leap_velocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_hand-srv:<leap_velocity-request> is deprecated: use leap_hand-srv:leap_velocity-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leap_velocity-request>) ostream)
  "Serializes a message object of type '<leap_velocity-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leap_velocity-request>) istream)
  "Deserializes a message object of type '<leap_velocity-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leap_velocity-request>)))
  "Returns string type for a service object of type '<leap_velocity-request>"
  "leap_hand/leap_velocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_velocity-request)))
  "Returns string type for a service object of type 'leap_velocity-request"
  "leap_hand/leap_velocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leap_velocity-request>)))
  "Returns md5sum for a message object of type '<leap_velocity-request>"
  "241a0480799a6297b297c9f6e498fe3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leap_velocity-request)))
  "Returns md5sum for a message object of type 'leap_velocity-request"
  "241a0480799a6297b297c9f6e498fe3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leap_velocity-request>)))
  "Returns full string definition for message of type '<leap_velocity-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leap_velocity-request)))
  "Returns full string definition for message of type 'leap_velocity-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leap_velocity-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leap_velocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'leap_velocity-request
))
;//! \htmlinclude leap_velocity-response.msg.html

(cl:defclass <leap_velocity-response> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass leap_velocity-response (<leap_velocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leap_velocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leap_velocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_hand-srv:<leap_velocity-response> is deprecated: use leap_hand-srv:leap_velocity-response instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <leap_velocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_hand-srv:velocity-val is deprecated.  Use leap_hand-srv:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leap_velocity-response>) ostream)
  "Serializes a message object of type '<leap_velocity-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity))))
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
   (cl:slot-value msg 'velocity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leap_velocity-response>) istream)
  "Deserializes a message object of type '<leap_velocity-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leap_velocity-response>)))
  "Returns string type for a service object of type '<leap_velocity-response>"
  "leap_hand/leap_velocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_velocity-response)))
  "Returns string type for a service object of type 'leap_velocity-response"
  "leap_hand/leap_velocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leap_velocity-response>)))
  "Returns md5sum for a message object of type '<leap_velocity-response>"
  "241a0480799a6297b297c9f6e498fe3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leap_velocity-response)))
  "Returns md5sum for a message object of type 'leap_velocity-response"
  "241a0480799a6297b297c9f6e498fe3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leap_velocity-response>)))
  "Returns full string definition for message of type '<leap_velocity-response>"
  (cl:format cl:nil "float64[] velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leap_velocity-response)))
  "Returns full string definition for message of type 'leap_velocity-response"
  (cl:format cl:nil "float64[] velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leap_velocity-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leap_velocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'leap_velocity-response
    (cl:cons ':velocity (velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'leap_velocity)))
  'leap_velocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'leap_velocity)))
  'leap_velocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_velocity)))
  "Returns string type for a service object of type '<leap_velocity>"
  "leap_hand/leap_velocity")