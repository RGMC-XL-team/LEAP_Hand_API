;; Auto-generated. Do not edit!


(when (boundp 'leap_hand::leap_velocity)
  (if (not (find-package "LEAP_HAND"))
    (make-package "LEAP_HAND"))
  (shadow 'leap_velocity (find-package "LEAP_HAND")))
(unless (find-package "LEAP_HAND::LEAP_VELOCITY")
  (make-package "LEAP_HAND::LEAP_VELOCITY"))
(unless (find-package "LEAP_HAND::LEAP_VELOCITYREQUEST")
  (make-package "LEAP_HAND::LEAP_VELOCITYREQUEST"))
(unless (find-package "LEAP_HAND::LEAP_VELOCITYRESPONSE")
  (make-package "LEAP_HAND::LEAP_VELOCITYRESPONSE"))

(in-package "ROS")





(defclass leap_hand::leap_velocityRequest
  :super ros::object
  :slots ())

(defmethod leap_hand::leap_velocityRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass leap_hand::leap_velocityResponse
  :super ros::object
  :slots (_velocity ))

(defmethod leap_hand::leap_velocityResponse
  (:init
   (&key
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _velocity __velocity)
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass leap_hand::leap_velocity
  :super ros::object
  :slots ())

(setf (get leap_hand::leap_velocity :md5sum-) "241a0480799a6297b297c9f6e498fe3c")
(setf (get leap_hand::leap_velocity :datatype-) "leap_hand/leap_velocity")
(setf (get leap_hand::leap_velocity :request) leap_hand::leap_velocityRequest)
(setf (get leap_hand::leap_velocity :response) leap_hand::leap_velocityResponse)

(defmethod leap_hand::leap_velocityRequest
  (:response () (instance leap_hand::leap_velocityResponse :init)))

(setf (get leap_hand::leap_velocityRequest :md5sum-) "241a0480799a6297b297c9f6e498fe3c")
(setf (get leap_hand::leap_velocityRequest :datatype-) "leap_hand/leap_velocityRequest")
(setf (get leap_hand::leap_velocityRequest :definition-)
      "---
float64[] velocity

")

(setf (get leap_hand::leap_velocityResponse :md5sum-) "241a0480799a6297b297c9f6e498fe3c")
(setf (get leap_hand::leap_velocityResponse :datatype-) "leap_hand/leap_velocityResponse")
(setf (get leap_hand::leap_velocityResponse :definition-)
      "---
float64[] velocity

")



(provide :leap_hand/leap_velocity "241a0480799a6297b297c9f6e498fe3c")


