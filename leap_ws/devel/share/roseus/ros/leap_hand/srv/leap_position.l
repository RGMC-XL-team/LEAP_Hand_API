;; Auto-generated. Do not edit!


(when (boundp 'leap_hand::leap_position)
  (if (not (find-package "LEAP_HAND"))
    (make-package "LEAP_HAND"))
  (shadow 'leap_position (find-package "LEAP_HAND")))
(unless (find-package "LEAP_HAND::LEAP_POSITION")
  (make-package "LEAP_HAND::LEAP_POSITION"))
(unless (find-package "LEAP_HAND::LEAP_POSITIONREQUEST")
  (make-package "LEAP_HAND::LEAP_POSITIONREQUEST"))
(unless (find-package "LEAP_HAND::LEAP_POSITIONRESPONSE")
  (make-package "LEAP_HAND::LEAP_POSITIONRESPONSE"))

(in-package "ROS")





(defclass leap_hand::leap_positionRequest
  :super ros::object
  :slots ())

(defmethod leap_hand::leap_positionRequest
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

(defclass leap_hand::leap_positionResponse
  :super ros::object
  :slots (_position ))

(defmethod leap_hand::leap_positionResponse
  (:init
   (&key
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float64[] _position
    (* 8    (length _position)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass leap_hand::leap_position
  :super ros::object
  :slots ())

(setf (get leap_hand::leap_position :md5sum-) "50410efb3480c63b23b8b5fe2bea331a")
(setf (get leap_hand::leap_position :datatype-) "leap_hand/leap_position")
(setf (get leap_hand::leap_position :request) leap_hand::leap_positionRequest)
(setf (get leap_hand::leap_position :response) leap_hand::leap_positionResponse)

(defmethod leap_hand::leap_positionRequest
  (:response () (instance leap_hand::leap_positionResponse :init)))

(setf (get leap_hand::leap_positionRequest :md5sum-) "50410efb3480c63b23b8b5fe2bea331a")
(setf (get leap_hand::leap_positionRequest :datatype-) "leap_hand/leap_positionRequest")
(setf (get leap_hand::leap_positionRequest :definition-)
      "---
float64[] position

")

(setf (get leap_hand::leap_positionResponse :md5sum-) "50410efb3480c63b23b8b5fe2bea331a")
(setf (get leap_hand::leap_positionResponse :datatype-) "leap_hand/leap_positionResponse")
(setf (get leap_hand::leap_positionResponse :definition-)
      "---
float64[] position

")



(provide :leap_hand/leap_position "50410efb3480c63b23b8b5fe2bea331a")


