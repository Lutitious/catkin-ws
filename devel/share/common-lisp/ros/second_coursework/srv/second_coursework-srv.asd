
(cl:in-package :asdf)

(defsystem "second_coursework-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetRoomCoord" :depends-on ("_package_GetRoomCoord"))
    (:file "_package_GetRoomCoord" :depends-on ("_package"))
  ))