;; Auto-generated. Do not edit!


(when (boundp 'aquacore::Menu)
  (if (not (find-package "AQUACORE"))
    (make-package "AQUACORE"))
  (shadow 'Menu (find-package "AQUACORE")))
(unless (find-package "AQUACORE::MENU")
  (make-package "AQUACORE::MENU"))
(unless (find-package "AQUACORE::MENUREQUEST")
  (make-package "AQUACORE::MENUREQUEST"))
(unless (find-package "AQUACORE::MENURESPONSE")
  (make-package "AQUACORE::MENURESPONSE"))

(in-package "ROS")





(defclass aquacore::MenuRequest
  :super ros::object
  :slots (_title _opts _timeout _default_choice ))

(defmethod aquacore::MenuRequest
  (:init
   (&key
    ((:title __title) "")
    ((:opts __opts) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:timeout __timeout) 0)
    ((:default_choice __default_choice) 0)
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _opts __opts)
   (setq _timeout (round __timeout))
   (setq _default_choice (round __default_choice))
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:opts
   (&optional __opts)
   (if __opts (setq _opts __opts)) _opts)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:default_choice
   (&optional __default_choice)
   (if __default_choice (setq _default_choice __default_choice)) _default_choice)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ;; string[] _opts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _opts)) 4
    ;; int32 _timeout
    4
    ;; int32 _default_choice
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; string[] _opts
     (write-long (length _opts) s)
     (dolist (elem _opts)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _timeout
       (write-long _timeout s)
     ;; int32 _default_choice
       (write-long _default_choice s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _opts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _opts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _timeout
     (setq _timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _default_choice
     (setq _default_choice (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::MenuResponse
  :super ros::object
  :slots (_selection ))

(defmethod aquacore::MenuResponse
  (:init
   (&key
    ((:selection __selection) 0)
    )
   (send-super :init)
   (setq _selection (round __selection))
   self)
  (:selection
   (&optional __selection)
   (if __selection (setq _selection __selection)) _selection)
  (:serialization-length
   ()
   (+
    ;; int32 _selection
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _selection
       (write-long _selection s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _selection
     (setq _selection (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aquacore::Menu
  :super ros::object
  :slots ())

(setf (get aquacore::Menu :md5sum-) "b6c70a1e971f94500062019a89d5686d")
(setf (get aquacore::Menu :datatype-) "aquacore/Menu")
(setf (get aquacore::Menu :request) aquacore::MenuRequest)
(setf (get aquacore::Menu :response) aquacore::MenuResponse)

(defmethod aquacore::MenuRequest
  (:response () (instance aquacore::MenuResponse :init)))

(setf (get aquacore::MenuRequest :md5sum-) "b6c70a1e971f94500062019a89d5686d")
(setf (get aquacore::MenuRequest :datatype-) "aquacore/MenuRequest")
(setf (get aquacore::MenuRequest :definition-)
      "
string title

string[] opts

int32 timeout

int32 default_choice
---
int32 selection


")

(setf (get aquacore::MenuResponse :md5sum-) "b6c70a1e971f94500062019a89d5686d")
(setf (get aquacore::MenuResponse :datatype-) "aquacore/MenuResponse")
(setf (get aquacore::MenuResponse :definition-)
      "
string title

string[] opts

int32 timeout

int32 default_choice
---
int32 selection


")



(provide :aquacore/Menu "b6c70a1e971f94500062019a89d5686d")


