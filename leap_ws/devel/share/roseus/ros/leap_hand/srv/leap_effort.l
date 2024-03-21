;; Auto-generated. Do not edit!


(when (boundp 'leap_hand::leap_effort)
  (if (not (find-package "LEAP_HAND"))
    (make-package "LEAP_HAND"))
  (shadow 'leap_effort (find-package "LEAP_HAND")))
(unless (find-package "LEAP_HAND::LEAP_EFFORT")
  (make-package "LEAP_HAND::LEAP_EFFORT"))
(unless (find-package "LEAP_HAND::LEAP_EFFORTREQUEST")
  (make-package "LEAP_HAND::LEAP_EFFORTREQUEST"))
(unless (find-package "LEAP_HAND::LEAP_EFFORTRESPONSE")
  (make-package "LEAP_HAND::LEAP_EFFORTRESPONSE"))

(in-package "ROS")





(defclass leap_hand::leap_effortRequest
  :super ros::object
  :slots ())

(defmethod leap_hand::leap_effortRequest
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

(defclass leap_hand::leap_effortResponse
  :super ros::object
  :slots (_effort ))

(defmethod leap_hand::leap_effortResponse
  (:init
   (&key
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _effort __effort)
   self)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass leap_hand::leap_effort
  :super ros::object
  :slots ())

(setf (get leap_hand::leap_effort :md5sum-) "3a8f7ca4b38fbe820a7205cc08e38abf")
(setf (get leap_hand::leap_effort :datatype-) "leap_hand/leap_effort")
(setf (get leap_hand::leap_effort :request) leap_hand::leap_effortRequest)
(setf (get leap_hand::leap_effort :response) leap_hand::leap_effortResponse)

(defmethod leap_hand::leap_effortRequest
  (:response () (instance leap_hand::leap_effortResponse :init)))

(setf (get leap_hand::leap_effortRequest :md5sum-) "3a8f7ca4b38fbe820a7205cc08e38abf")
(setf (get leap_hand::leap_effortRequest :datatype-) "leap_hand/leap_effortRequest")
(setf (get leap_hand::leap_effortRequest :definition-)
      "---
float64[] effort

")

(setf (get leap_hand::leap_effortResponse :md5sum-) "3a8f7ca4b38fbe820a7205cc08e38abf")
(setf (get leap_hand::leap_effortResponse :datatype-) "leap_hand/leap_effortResponse")
(setf (get leap_hand::leap_effortResponse :definition-)
      "---
float64[] effort

")



(provide :leap_hand/leap_effort "3a8f7ca4b38fbe820a7205cc08e38abf")


