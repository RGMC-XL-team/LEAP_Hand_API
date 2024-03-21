; Auto-generated. Do not edit!


(cl:in-package leap_hand-srv)


;//! \htmlinclude leap_position-request.msg.html

(cl:defclass <leap_position-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass leap_position-request (<leap_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leap_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leap_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_hand-srv:<leap_position-request> is deprecated: use leap_hand-srv:leap_position-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leap_position-request>) ostream)
  "Serializes a message object of type '<leap_position-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leap_position-request>) istream)
  "Deserializes a message object of type '<leap_position-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leap_position-request>)))
  "Returns string type for a service object of type '<leap_position-request>"
  "leap_hand/leap_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_position-request)))
  "Returns string type for a service object of type 'leap_position-request"
  "leap_hand/leap_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leap_position-request>)))
  "Returns md5sum for a message object of type '<leap_position-request>"
  "50410efb3480c63b23b8b5fe2bea331a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leap_position-request)))
  "Returns md5sum for a message object of type 'leap_position-request"
  "50410efb3480c63b23b8b5fe2bea331a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leap_position-request>)))
  "Returns full string definition for message of type '<leap_position-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leap_position-request)))
  "Returns full string definition for message of type 'leap_position-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leap_position-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leap_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'leap_position-request
))
;//! \htmlinclude leap_position-response.msg.html

(cl:defclass <leap_position-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass leap_position-response (<leap_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leap_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leap_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_hand-srv:<leap_position-response> is deprecated: use leap_hand-srv:leap_position-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <leap_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_hand-srv:position-val is deprecated.  Use leap_hand-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leap_position-response>) ostream)
  "Serializes a message object of type '<leap_position-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
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
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leap_position-response>) istream)
  "Deserializes a message object of type '<leap_position-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leap_position-response>)))
  "Returns string type for a service object of type '<leap_position-response>"
  "leap_hand/leap_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_position-response)))
  "Returns string type for a service object of type 'leap_position-response"
  "leap_hand/leap_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leap_position-response>)))
  "Returns md5sum for a message object of type '<leap_position-response>"
  "50410efb3480c63b23b8b5fe2bea331a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leap_position-response)))
  "Returns md5sum for a message object of type 'leap_position-response"
  "50410efb3480c63b23b8b5fe2bea331a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leap_position-response>)))
  "Returns full string definition for message of type '<leap_position-response>"
  (cl:format cl:nil "float64[] position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leap_position-response)))
  "Returns full string definition for message of type 'leap_position-response"
  (cl:format cl:nil "float64[] position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leap_position-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leap_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'leap_position-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'leap_position)))
  'leap_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'leap_position)))
  'leap_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leap_position)))
  "Returns string type for a service object of type '<leap_position>"
  "leap_hand/leap_position")