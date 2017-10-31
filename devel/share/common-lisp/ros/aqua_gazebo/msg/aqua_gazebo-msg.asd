
(cl:in-package :asdf)

(defsystem "aqua_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HydrodynamicsParams" :depends-on ("_package_HydrodynamicsParams"))
    (:file "_package_HydrodynamicsParams" :depends-on ("_package"))
    (:file "HydrodynamicsParams" :depends-on ("_package_HydrodynamicsParams"))
    (:file "_package_HydrodynamicsParams" :depends-on ("_package"))
    (:file "HydrodynamicsParamsList" :depends-on ("_package_HydrodynamicsParamsList"))
    (:file "_package_HydrodynamicsParamsList" :depends-on ("_package"))
    (:file "HydrodynamicsParamsList" :depends-on ("_package_HydrodynamicsParamsList"))
    (:file "_package_HydrodynamicsParamsList" :depends-on ("_package"))
    (:file "ThrustParams" :depends-on ("_package_ThrustParams"))
    (:file "_package_ThrustParams" :depends-on ("_package"))
    (:file "ThrustParams" :depends-on ("_package_ThrustParams"))
    (:file "_package_ThrustParams" :depends-on ("_package"))
  ))