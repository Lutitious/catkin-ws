
(cl:in-package :asdf)

(defsystem "second_coursework-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SearchAction" :depends-on ("_package_SearchAction"))
    (:file "_package_SearchAction" :depends-on ("_package"))
    (:file "SearchActionFeedback" :depends-on ("_package_SearchActionFeedback"))
    (:file "_package_SearchActionFeedback" :depends-on ("_package"))
    (:file "SearchActionGoal" :depends-on ("_package_SearchActionGoal"))
    (:file "_package_SearchActionGoal" :depends-on ("_package"))
    (:file "SearchActionResult" :depends-on ("_package_SearchActionResult"))
    (:file "_package_SearchActionResult" :depends-on ("_package"))
    (:file "SearchFeedback" :depends-on ("_package_SearchFeedback"))
    (:file "_package_SearchFeedback" :depends-on ("_package"))
    (:file "SearchGoal" :depends-on ("_package_SearchGoal"))
    (:file "_package_SearchGoal" :depends-on ("_package"))
    (:file "SearchResult" :depends-on ("_package_SearchResult"))
    (:file "_package_SearchResult" :depends-on ("_package"))
  ))