
(cl:in-package :asdf)

(defsystem "leap_hand-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "leap_effort" :depends-on ("_package_leap_effort"))
    (:file "_package_leap_effort" :depends-on ("_package"))
    (:file "leap_position" :depends-on ("_package_leap_position"))
    (:file "_package_leap_position" :depends-on ("_package"))
    (:file "leap_velocity" :depends-on ("_package_leap_velocity"))
    (:file "_package_leap_velocity" :depends-on ("_package"))
  ))