;;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-
;;;;
;;;; flock.lisp
;;;;
;;;; author: Erik Winkels (aerique@xs4all.nl)
;;;;
;;;; See the LICENSE file in the Okra root directory for more info.

;;; Packages

(unless (find-package :asdf)
  (require :asdf))

(asdf:oos 'asdf:load-op :okra-mygui)
;; after okra-mygui to surpress warnings
(asdf:oos 'asdf:load-op :clois-lane-mygui)
(asdf:oos 'asdf:load-op :black-tie)

(in-package :okra)


;;; Classes

(defclass bird ()
  ((direction :accessor direction-of :initarg :direction)
   (fly-speed :accessor fly-speed-of :initform 0.67)
   (manual-object :accessor manual-object-of :initarg :manual-object)
   (node :accessor node-of :initarg :node)
   (position :accessor position-of :initarg :position)
   (target-direction :accessor target-direction-of
                     :initarg :target-direction)))


(defclass flock-scene (okra-scene)
  ((birds :accessor birds-of :initarg :birds :initform nil)
   (input-system :accessor input-system-of :initarg :input-system)
   (triangles :accessor triangles-in :initarg :triangles :initform 0)
   (water :accessor water-of :initarg :water :initform nil)))


(defclass water ()
  ((grid :accessor grid-of :initarg :grid :initform 10.0)
   (manual-object :reader manual-object-of :initarg :manual-object
                  :initform (error "must supply :manual-object"))
   (material :reader material-of :initarg :material
             :initform "BaseWhiteNoLighting")
   (node :reader node-of :initarg :node :initform (error "must supply :node"))
   (position :accessor position-of :initarg :position :initform #(0.0 0.0 0.0))
   (size :accessor size-of :initarg :size :initform 300.0)
   (ripple-x-position :accessor ripple-x-position-of
                      :initarg :ripple-x-position :initform 0.0)
   (ripple-x-speed :accessor ripple-x-speed-of :initarg :ripple-x-speed
                   :initform 0.0008)
   (ripple-z-position :accessor ripple-z-position-of
                      :initarg :ripple-z-position :initform 0.0)
   (ripple-z-speed :accessor ripple-z-speed-of :initarg :ripple-z-speed
                   :initform 0.002)
   (wave-position :accessor wave-position-of :initarg :wave-position
                  :initform 0.0)
   (wave-speed :accessor wave-speed-of :initarg :wave-speed :initform 0.025)))


;;; Parameters

(defparameter *scene* nil)  ; this should be the only global parameter

;; for MYGUI
(defvar *mygui-actions*
  '((("quit" . :mouse-button-click) . mygui-stop-running)
    (:default . echo-self)))

;; for clois-lane
(defvar *actions*
  '((:kc-escape . stop-running)   (:kc-w . toggle-wireframe)
    (:kc-pgdown . move-down)      (:kc-v . move-down)
    (:kc-pgup   . move-up)        (:kc-r . move-up)
    (:kc-up     . move-forward)   (:kc-e . move-forward)
    (:kc-down   . move-backward)  (:kc-d . move-backward)
    (:kc-left   . move-left)      (:kc-s . move-left)
    (:kc-right  . move-right)     (:kc-f . move-right)
    (:kc-a      . add-bird) (:mouse-button-1 . toggle-mouse-look)
    (:mouse-x   . camera-x-look)  (:mouse-y . camera-y-look)))

(defparameter *mouse-look* nil)
(defparameter *move-backward* nil)
(defparameter *move-forward* nil)
(defparameter *move-left* nil)
(defparameter *move-right* nil)
(defparameter *move-down* nil)
(defparameter *move-up* nil)
(defparameter *running* nil)


;;; MYGUI Actions

(defun mygui-stop-running (widget)
  (declare (ignore widget))
  (setf *running* nil))


;;; Key Actions

(defun make-bird (&key direction position)
  (declare (ignore direction position)))

(defun add-bird (key text state)
  (declare (ignore key text))
  (when (equal state :released)
    (push (make-bird :direction #(1.0 0.0 0.0) :position #(0.0 25.0 0.0))
          (birds-of *scene*))))


(let ((last-x 0))
  (defun camera-x-look (axis rel-x abs-x)
    (declare (ignore axis abs-x))
    (when *mouse-look*
      ;; this smooths the mouse movement a little
      (yaw (first (cameras-of *scene*)) (* (/ (+ rel-x last-x) 2.0) -0.01))
      (setf last-x rel-x))))


(let ((last-y 0))
  (defun camera-y-look (axis rel-y abs-y)
    (declare (ignore axis abs-y))
    (when *mouse-look*
      ;; this smooths the mouse movement a little
      (pitch (first (cameras-of *scene*)) (* (/ (+ rel-y last-y) 2.0) 0.01))
      (setf last-y rel-y))))


;; "(and *move-dir* (not *move-opposite*))" is for when both keys are pressed
(defun do-movement ()
  (let* ((cam (first (cameras-of *scene*)))
         (cd (get-derived-direction cam))
         (cp (get-derived-position cam))
         (cr (get-derived-right cam))
         (moved nil)
         (new-position (vector 0.0 0.0 0.0)))
    ;; I need to add a vector multiply function to src/vectors.lisp.
    (setf (svref cd 0) (* (svref cd 0) 1.5))
    (setf (svref cd 1) (* (svref cd 1) 1.5))
    (setf (svref cd 2) (* (svref cd 2) 1.5))
    (setf (svref cr 0) (* (svref cr 0) 1.5))
    (setf (svref cr 1) (* (svref cr 1) 1.5))
    (setf (svref cr 2) (* (svref cr 2) 1.5))
    (when (and *move-backward* (not *move-forward*))
      (setf new-position (vector-substract new-position cd))
      (setf moved t))
    (when (and *move-down* (not *move-up*))
      (setf new-position (vector-substract new-position #(0 1 0)))
      (setf moved t))
    (when (and *move-forward* (not *move-backward*))
      (setf new-position (vector-add new-position cd))
      (setf moved t))
    (when (and *move-left* (not *move-right*))
      (setf new-position (vector-substract new-position cr))
      (setf moved t))
    (when (and *move-right* (not *move-left*))
      (setf new-position (vector-add new-position cr))
      (setf moved t))
    (when (and *move-up* (not *move-down*))
      (setf new-position (vector-add new-position #(0 1 0)))
      (setf moved t))
    (when moved
      (set-position cam (vector-add cp new-position)))))


;; for debugging, mainly
(defun echo-self (&rest args)
  (format t "~&[echo-self] ~S~%" args))


(defun move-backward (key text state)
  (declare (ignore key text))
  (if (equal state :pressed)
      (setf *move-backward* t)
      (setf *move-backward* nil)))


(defun move-down (key text state)
  (declare (ignore key text))
  (if (equal state :pressed)
      (setf *move-down* t)
      (setf *move-down* nil)))


(defun move-forward (key text state)
  (declare (ignore key text))
  (if (equal state :pressed)
      (setf *move-forward* t)
      (setf *move-forward* nil)))


(defun move-left (key text state)
  (declare (ignore key text))
  (if (equal state :pressed)
      (setf *move-left* t)
      (setf *move-left* nil)))


(defun move-right (key text state)
  (declare (ignore key text))
  (if (equal state :pressed)
      (setf *move-right* t)
      (setf *move-right* nil)))


(defun move-up (key text state)
  (declare (ignore key text))
  (if (equal state :pressed)
      (setf *move-up* t)
      (setf *move-up* nil)))


(defun stop-running (key text state)
  (declare (ignore key text))
  (when (equal state :released)
    (setf *running* nil)))


(defun toggle-mouse-look (button state)
  (declare (ignore button))
  (if (equal state :pressed)
      (setf *mouse-look* t)
      (setf *mouse-look* nil)))


(let ((pm-mode :pm-solid))
  (defun toggle-wireframe (key text state)
    (declare (ignore key text))
    (when (equal state :released)
      (if (equal pm-mode :pm-solid)
          (progn (set-polygon-mode (first (cameras-of *scene*)) :pm-wireframe)
                 (setf pm-mode :pm-wireframe))
          (progn (set-polygon-mode (first (cameras-of *scene*)) :pm-solid)
                 (setf pm-mode :pm-solid))))))


;;; Bird Functions

(defun average-heading (neighbours)
  (loop with average-heading = (vector 0.0 0.0 0.0)
        for neighbour in neighbours
        for heading = (direction-of (car neighbour))
        do (setf average-heading (vadd average-heading heading))
        finally (return (vnormalise average-heading))))


(defun average-position (neighbours)
  (loop with average-position = (vector 0.0 0.0 0.0)
        with divisor = (length neighbours)
        for neighbour in neighbours
        for position = (position-of (car neighbour))
        do (setf average-position (vadd average-position position))
        finally (return (vdiv average-position
                              (vector divisor divisor divisor)))))


(defun create-bird-model ()
  (let ((mo (make-manual-object :scene-manager (manager-of *scene*)))
        (black 0.0)
        (white 1.0))
    (begin mo "Bird" :ot-triangle-list)
    ;; top
    (let* ((vn (vnormal (vsub #(-2.0 -0.5 -1.0) #(1.0 0.0 0.0))
                        (vsub #(-2.0 -0.5  1.0) #(1.0 0.0 0.0))))
           (vnx (elt vn 0))
           (vny (elt vn 1))
           (vnz (elt vn 2)))
      (position mo 1.0 0.0 0.0)
      (colour mo black black black 1.0)
      (normal mo vnx vny vnz)
      (position mo -2.0 -0.5 -1.0)
      (colour mo white white white 1.0)
      (normal mo vnx vny vnz)
      (position mo -2.0 -0.5 1.0)
      (colour mo white white white 1.0)
      (normal mo vnx vny vnz))
    ;; bottom
    (let* ((vn (vnormal (vsub #(-2.0 -0.5  1.0) #(1.0 0.0 0.0))
                        (vsub #(-2.0 -0.5 -1.0) #(1.0 0.0 0.0))))
           (vnx (elt vn 0))
           (vny (elt vn 1))
           (vnz (elt vn 2)))
      (position mo 1.0 0.0 0.0)
      (colour mo black black black 1.0)
      (normal mo vnx vny vnz)
      (position mo -2.0 -0.5 1.0)
      (colour mo white white white 1.0)
      (normal mo vnx vny vnz)
      (position mo -2.0 -0.5 -1.0)
      (colour mo white white white 1.0)
      (normal mo vnx vny vnz))
    (end mo)
    (incf (triangles-in *scene*) 2)
    mo))


(defun neighbouring-birds (birds bird)
  ;; The length of the list determines how many neighbours will be checked for
  ;; the flocking behaviour.  The fewer neighbours the more birds will go out
  ;; on their own and thus the more neighbours the more cohesive the group
  ;; will be.
  ;(loop with neighbours = (list nil nil nil nil nil)
  ;; This makes it a little more chaotic.
  (loop with neighbours = (loop repeat (+ 2 (random 5)) collect nil)
        for other in birds
        for opos = (position-of other)
        for pos = (position-of bird)
        for dist = (vlength (vsub opos pos))
        do (loop for i from 0 below (length neighbours)
                 do (if (and (not (equal other bird))
                             (null (elt neighbours i)))
                        (setf (elt neighbours i) (cons other dist))
                        (when (and (not (equal other bird))
                                   (< dist (cdr (elt neighbours i))))
                          (setf (elt neighbours i) (cons other dist))
                          (return))))
        finally (return neighbours)))


(defun not-too-close (bird neighbours)
  (let* ((sorted (sort neighbours #'< :key (lambda (list) (cdr list))))
         (closest (car (first sorted)))
         (distance (cdr (first sorted)))
         (direction-changed nil))
    (when (<= distance 2.5)
      (setf (target-direction-of bird)
            (vnormalise (vscale (vsub (position-of closest) (position-of bird))
                                -1.0)))
      (setf direction-changed t))
    direction-changed))


(defun not-too-far (bird)
  (let* ((centre #(25.0 25.0 25.0))  ; a bit more action nearer to the camera
         (distance (vlength (vsub (position-of bird) centre)))
         (height (elt (position-of bird) 1)))
    (when (>= distance 75.0)
      (setf (target-direction-of bird)
            (vnormalise (vsub centre (position-of bird)))))
    (cond ((<= height 12.5)
           (setf (target-direction-of bird)
                 (vnormalise (vector (elt (target-direction-of bird) 0)
                                     0.25
                                     (elt (target-direction-of bird) 2)))))
          ((>= height 75.0)
           (setf (target-direction-of bird)
                 (vnormalise (vector (elt (target-direction-of bird) 0)
                                     -0.25
                                     (elt (target-direction-of bird) 2))))))))


(defun flock-birds (step &optional (birds (birds-of *scene*)))
  (loop for bird in birds
        for neighbours = (neighbouring-birds birds bird)
        for too-close = nil
        for too-far = nil
        do ;; 1) stay at least x units away from closest neighbour
           (setf too-close (not-too-close bird neighbours))
           ;; 2) don't stray too far from the centre of the scene
           (unless too-close
             (setf too-far (not-too-far bird)))
           (unless (or too-close too-far)
             ;; 3) align to average heading of neighbours
             (setf (target-direction-of bird) (average-heading neighbours))
             ;; 4) move to average position of neighbours
             (setf (target-direction-of bird)
                   (vnormalise
                     (vadd (vnormalise (vsub (average-position neighbours)
                                             (position-of bird)))
                           (target-direction-of bird)))))
           (setf (direction-of bird)
                 (vnormalise (vadd (direction-of bird)
                                   (vscale (target-direction-of bird) 0.2))))
           (setf (position-of bird)
                 (vadd (position-of bird)
                       (vscale (vscale (direction-of bird) (fly-speed-of bird))
                               step)))))


(defun make-bird (&key direction position)
  (let ((mo (create-bird-model))
        (node (make-child-scene-node :node (root-of *scene*))))
    (attach-object node (pointer-to mo))
    (set-position node (elt position 0) (elt position 1) (elt position 2))
    (make-instance 'bird :direction direction :manual-object mo :node node
                   :position position :target-direction direction)))


(defun update-bird-positions-in-world (&optional (birds (birds-of *scene*)))
  (loop for bird in birds
        for dir = (direction-of bird)
        for node = (node-of bird)
        for pos = (position-of bird)
        do (set-direction node (elt dir 0) (elt dir 1) (elt dir 2)
                          :ts-world #(1.0 0.0 0.0))
           (set-position node (elt pos 0) (elt pos 1) (elt pos 2))))


;;; Water Functions

(defun dy (x y z width)
  (* 20.0 (+ y (* (sin (+ (/ x 16.0) (wave-position-of (water-of *scene*))))
                  (sin (+ (/ z 400.0)
                          (black-tie:perlin-noise (/ x width) 0.0
                                                  (/ z width))))))))


(defun water-surface-loop (water)
  (loop with grid = (grid-of water)
        with size = (size-of water)
        with prev-dyxz = (make-array (+ 1 (ceiling (/ size grid)))
                                     :initial-element nil)
        with mo = (manual-object-of water)
        with ripple-x = (ripple-x-position-of water)
        with ripple-z = (ripple-z-position-of water)
        with w/2 = (/ size 2.0)
        with w/x = (/ size 8.0)
        with x-max = (+ (elt (position-of water) 0) w/2)
        with x-min = (- (elt (position-of water) 0) w/2)
        with y = (elt (position-of water) 1)
        with z-max = (+ (elt (position-of water) 2) w/2)
        with z-min = (- (elt (position-of water) 2) w/2)
        for z from z-min below z-max by grid
        for z+ = (+ z grid)
        do (loop for x from x-min below x-max by grid
                 for i from 0
                 for x+ = (+ x grid)
                 for dyxz = (if (aref prev-dyxz i)
                                (aref prev-dyxz i)
                                (dy x y z size))
                 for dyx+z = (if (aref prev-dyxz (+ i 1))
                                 (aref prev-dyxz (+ i 1))
                                 (dy x+ y z size))
                 for dyxz+ = (dy x y z+ size)
                 for dyx+z+ = (dy x+ y z+ size)
                 ;; fvn = face normal
                 for fn1 = (vector-normal (xyz2v x dyxz z x+ dyx+z+ z+)
                                          (xyz2v x dyxz z x+ dyx+z z))
                 for fn2 = (vector-normal (xyz2v x dyxz z x dyxz+ z+)
                                          (xyz2v x dyxz z x+ dyx+z+ z+))
                 do (setf (aref prev-dyxz i) dyxz+)
                    ;; 1st grid triangle
                    (position mo x dyxz z)
                    ;(normal mo fn1)  ; passing a vector is slow as shit!
                    (normal mo (elt fn1 0) (elt fn1 1) (elt fn1 2))
                    (texture-coord mo (+ ripple-x (/ (- x x-min) w/x))
                                      (+ ripple-z (/ (- z z-min) w/x)))
                    (position mo x+ dyx+z+ z+)
                    (normal mo (elt fn1 0) (elt fn1 1) (elt fn1 2))
                    (texture-coord mo (+ ripple-x (/ (- x+ x-min) w/x))
                                      (+ ripple-z (/ (- z+ z-min) w/x)))
                    (position mo x+ dyx+z z)
                    (normal mo (elt fn1 0) (elt fn1 1) (elt fn1 2))
                    (texture-coord mo (+ ripple-x (/ (- x+ x-min) w/x))
                                      (+ ripple-z (/ (- z z-min) w/x)))
                    ;; 2nd grid triangle
                    (position mo x dyxz z)
                    (normal mo (elt fn2 0) (elt fn2 1) (elt fn2 2))
                    (texture-coord mo (+ ripple-x (/ (- x x-min) w/x))
                                      (+ ripple-z (/ (- z z-min) w/x)))
                    (position mo x dyxz+ z+)
                    (normal mo (elt fn2 0) (elt fn2 1) (elt fn2 2))
                    (texture-coord mo (+ ripple-x (/ (- x x-min) w/x))
                                      (+ ripple-z (/ (- z+ z-min) w/x)))
                    (position mo x+ dyx+z+ z+)
                    (normal mo (elt fn2 0) (elt fn2 1) (elt fn2 2))
                    (texture-coord mo (+ ripple-x (/ (- x+ x-min) w/x))
                                      (+ ripple-z (/ (- z+ z-min) w/x)))
                 finally (setf (aref prev-dyxz (+ i 1)) dyx+z+))))


;; We construct a minimal surface that can be updated later.
;; Unfortunately Ogre won't let us get away with constructing an empty surface.
(defun create-water-surface (position size &key (grid 4.0)
                             (material "BaseWhiteNoLighting"))
  (let* ((mo (make-manual-object :scene-manager (manager-of *scene*)))
         (x (elt position 0))
         (y (elt position 1))
         (z (elt position 2)))
    (set-dynamic mo t)
    (set-cast-shadows mo nil)
    (begin mo material :ot-triangle-list)
    (loop with w/2 = (/ size 2.0)
          with x-max = (+ x w/2)
          with x-min = (- x w/2)
          with z-max = (+ z w/2)
          with z-min = (- z w/2)
          for z from z-min below z-max by grid
          do (loop for x from x-min below x-max by grid
                   do (loop repeat 6
                            do (position mo x y z)
                               (normal mo 0.0 1.0 0.0)
                               (texture-coord mo 0.0 0.0))))
    (end mo)
    (incf (triangles-in *scene*) (ceiling (/ (* size size) grid)))
    mo))


(defun make-water (&key (grid 10.0) (material "Ocean/Calm")
                   (position #(0.0 0.0 0.0)) (ripple-x-speed 0.0008)
                   (ripple-z-speed 0.002) (size 300.0) (wave-speed 0.025))
  (let ((mo (create-water-surface position size :grid grid :material material))
        (node (make-child-scene-node :node (root-of *scene*))))
    (attach-object node (pointer-to mo))
    (make-instance 'water :grid grid :manual-object mo :material material
                   :node node :position position :ripple-x-speed ripple-x-speed
                   :ripple-z-speed ripple-z-speed :size size
                   :wave-speed wave-speed)))


(defun update-water-surface (water)
  (begin-update (manual-object-of water) 0)
  (water-surface-loop water)
  (end (manual-object-of water)))


;;; Functions

(defun update-gui (&key (fps 0.0))
  (flet ((set-text (widget text)
           (okra-mygui::set-caption (okra-mygui::find-widget widget) text)))
    (set-text "birds" (format nil "~D" (length (birds-of *scene*))))
    (set-text "fps" (format nil "~,2F" fps))
    (set-text "triangles" (format nil "~D" (triangles-in *scene*)))))



(defun update-physics (&optional (step 1.0))
  (let* ((water (water-of *scene*))
         (drx (* (ripple-x-speed-of water) step))
         (drz (* (ripple-z-speed-of water) step)))
    (incf (wave-position-of water) (* (wave-speed-of water) step))
    (if (>= (ripple-x-position-of water) 1.0)
        (decf (ripple-x-position-of water) (- 1.0 drx))
        (incf (ripple-x-position-of water) drx))
    (if (>= (ripple-z-position-of water) 1.0)
        (decf (ripple-z-position-of water) (- 1.0 drz))
        (incf (ripple-z-position-of water) drz))
    (flock-birds step)))


;;; Initialisation

(defun initialise-application ()
  (let ((window (okra-window
                 :width 1024 :height 768
                 :render-system #+windows "Direct3D9 Rendering Subsystem"
                                #-windows "OpenGL Rendering Subsystem"
                 :resources '(("resources" "FileSystem" "General")
                              ("resources/mygui" "FileSystem" "General")))))
    (setf *scene* (make-scene :class 'flock-scene
                              :manager "OctreeSceneManager"
                              :window window)))

  (set-ambient-light (manager-of *scene*) #(0.2 0.2 0.2 1.0))
  (set-shadow-technique (manager-of *scene*) :shadowtype-texture-modulative)

  (push (make-camera :position #(160.0 30.0 160.0)
                     :look-at #(-10.0 10.0 -10.0)
                     :near-clip-distance 1.0
                     :scene-manager (manager-of *scene*))
        (cameras-of *scene*))

  (push (make-viewport (first (cameras-of *scene*))
                       :background-colour '(0.0 0.0 0.0 1.0)
                       :render-window (window-of *scene*))
        (viewports-of *scene*))

  (push (make-light :diffuse-colour #(0.9 0.9 0.9 1.0)
                    ;; vnormalise doesn't seem to make a difference
                    :direction (vnormalise #(-1.0 -0.5 -1.0))
                    ;:position #(0.0 10.0 0.0)  ; not needed for directional
                    :scene-manager (manager-of *scene*)
                    :specular-colour #(0.9 0.9 0.9 1.0)
                    :type :lt-directional)
        (lights-of *scene*))

  ;; birds
  (loop repeat 20
        for dir = (vnormalise (vector 1.0 0.0 0.0))
        for pos = (vector (- (random 50.0) 25) (+ 10 (random 25.0))
                          (- (random 50.0) 25))
        for bird = (make-bird :direction dir :position pos)
        do (push bird (birds-of *scene*)))

  ;; water
  (setf (water-of *scene*)
        (make-water :grid 15.0 :material "Ocean/Calm" :ripple-x-speed 0.0008
                    :ripple-z-speed 0.002))

  ;; MyGUI
  (defparameter mygui
    #+sbcl (sb-int:with-float-traps-masked (:divide-by-zero :invalid)
             (okra-mygui::mygui-initialise (pointer-to (window-of *scene*))
                                           (pointer-to (manager-of *scene*))))
    #-sbcl (okra-mygui::mygui-initialise (pointer-to (window-of *scene*))
                                         (pointer-to (manager-of *scene*))))

  (okra-mygui::mygui-load-layout "flock.layout")
  (okra-mygui::set-event-mouse-button-click (okra-mygui::find-widget "quit"))
  (setf okra-mygui::*mygui-actions* *mygui-actions*)

  ;; clois-lane
  (let ((wh (get-window-handler (pointer-to (window-of *scene*)))))
    (setf (input-system-of *scene*)
          (clois-lane:create-input-system (mkstr wh) :hide-mouse t)))
  (clois-lane:set-actions *actions*)
  (setf *running* t))


;;; Main Loop

;; see: http://www.titanium.hr/Irrlicht/Tutorials/GameLoop/Tutorial.htm
(defun main-loop ()
  (clois-lane:set-actions *actions*)
  (setf *running* t)
  (loop with step = 0.02
        with then = (get-microseconds (timer-of *scene*))
        with water = (water-of *scene*)
        while *running*
        for now = (get-microseconds (timer-of *scene*))
        for delta = (/ (- now then) 1000000.0)
        for accumulator = delta
        do (setf then now)
           (when (> accumulator 0.25)
             (setf accumulator 0.25))
           (loop while (>= accumulator step)
                 do (update-physics)
                    (decf accumulator step))
           (when (> accumulator 0)
             (update-physics (/ accumulator step)))
           (update-gui :fps (/ 1.0 delta))
           (update-bird-positions-in-world)
           (update-water-surface water)
           (clois-lane:set-window-extents
             (get-actual-width (first (viewports-of *scene*)))
             (get-actual-height (first (viewports-of *scene*))))
           (clois-lane:capture)
           (do-movement)
           (new-frame)))


;;; Main Function

(defun run-flock ()
  ;; if we don't reinit the callbacks the executable will crash when using them
  (okra-mygui::initialise-mygui-callbacks)
  (clois-lane::initialise-callbacks)
  (initialise-application)
  (main-loop)
  (quit))


;;; for development so i have to type less :)

(run-flock)
