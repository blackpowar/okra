;;;; animation-state.lisp
;;;;
;;;; This file has been generated by the Okra Bindings Generator.
;;;; You should not edit this file unless you know what you're doing.
;;;; Any changes you've made directly to this file will not be retained
;;;; when a new instance of this file is generated.
;;;;
;;;; author: Erik Winkels (aerique@xs4all.nl)
;;;;
;;;; See the LICENSE file in the Okra root directory for more info.
;;;;
;;;; This file was generated on: 2009-09-29 16:00:39.

(in-package :okra-bindings)


;;; Class

(defclass animation-state (ogre-object)
  ())


;;; Foreign Functions & Methods

;; name: "getAnimationName"
;; type: "const String&"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_animation_name"
    :string
  (ogre-animation-state :pointer))

(defmethod get-animation-name ((this animation-state))
  (ogre-animation-state-get-animation-name (pointer-to this)))


;; name: "getTimePosition"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_time_position"
    okra-real
  (ogre-animation-state :pointer))

(defmethod get-time-position ((this animation-state))
  (ogre-animation-state-get-time-position (pointer-to this)))


;; name: "setTimePosition"
;; type: "void"
;; args: (("Real" . "timePos"))
;;
(defcfun "ogre_animation_state_set_time_position"
    :void
  (ogre-animation-state :pointer)
  (time-pos okra-real))

(defmethod set-time-position ((this animation-state) time-pos)
  (ogre-animation-state-set-time-position (pointer-to this) time-pos))


;; name: "getLength"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_length"
    okra-real
  (ogre-animation-state :pointer))

(defmethod get-length ((this animation-state))
  (ogre-animation-state-get-length (pointer-to this)))


;; name: "setLength"
;; type: "void"
;; args: (("Real" . "len"))
;;
(defcfun "ogre_animation_state_set_length"
    :void
  (ogre-animation-state :pointer)
  (len okra-real))

(defmethod set-length ((this animation-state) len)
  (ogre-animation-state-set-length (pointer-to this) len))


;; name: "getWeight"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_weight"
    okra-real
  (ogre-animation-state :pointer))

(defmethod get-weight ((this animation-state))
  (ogre-animation-state-get-weight (pointer-to this)))


;; name: "setWeight"
;; type: "void"
;; args: (("Real" . "weight"))
;;
(defcfun "ogre_animation_state_set_weight"
    :void
  (ogre-animation-state :pointer)
  (weight okra-real))

(defmethod set-weight ((this animation-state) weight)
  (ogre-animation-state-set-weight (pointer-to this) weight))


;; name: "addTime"
;; type: "void"
;; args: (("Real" . "offset"))
;;
(defcfun "ogre_animation_state_add_time"
    :void
  (ogre-animation-state :pointer)
  (offset okra-real))

(defmethod add-time ((this animation-state) offset)
  (ogre-animation-state-add-time (pointer-to this) offset))


;; name: "hasEnded"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_animation_state_has_ended"
    :boolean
  (ogre-animation-state :pointer))

(defmethod has-ended ((this animation-state))
  (ogre-animation-state-has-ended (pointer-to this)))


;; name: "getEnabled"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_enabled"
    :boolean
  (ogre-animation-state :pointer))

(defmethod get-enabled ((this animation-state))
  (ogre-animation-state-get-enabled (pointer-to this)))


;; name: "setEnabled"
;; type: "void"
;; args: (("bool" . "enabled"))
;;
(defcfun "ogre_animation_state_set_enabled"
    :void
  (ogre-animation-state :pointer)
  (enabled :boolean))

(defmethod set-enabled ((this animation-state) enabled)
  (ogre-animation-state-set-enabled (pointer-to this) enabled))


;; name: "setLoop"
;; type: "void"
;; args: (("bool" . "loop"))
;;
(defcfun "ogre_animation_state_set_loop"
    :void
  (ogre-animation-state :pointer)
  (loop :boolean))

(defmethod set-loop ((this animation-state) loop)
  (ogre-animation-state-set-loop (pointer-to this) loop))


;; name: "getLoop"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_loop"
    :boolean
  (ogre-animation-state :pointer))

(defmethod get-loop ((this animation-state))
  (ogre-animation-state-get-loop (pointer-to this)))


;; name: "copyStateFrom"
;; type: "void"
;; args: (("const AnimationState&" . "animState"))
;;
(defcfun "ogre_animation_state_copy_state_from"
    :void
  (ogre-animation-state :pointer)
  (anim-state :pointer))

(defmethod copy-state-from ((this animation-state) anim-state)
  (ogre-animation-state-copy-state-from (pointer-to this) anim-state))


;; name: "getParent"
;; type: "AnimationStateSet*"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_parent"
    :pointer
  (ogre-animation-state :pointer))

(defmethod get-parent ((this animation-state))
  (ogre-animation-state-get-parent (pointer-to this)))


;; name: "createBlendMask"
;; type: "void"
;; args: (("size_t" . "blendMaskSizeHint") ("float" . "initialWeight"))
;;
(defcfun "ogre_animation_state_create_blend_mask"
    :void
  (ogre-animation-state :pointer)
  (blend-mask-size-hint :unsigned-int)
  (initial-weight :float))

(defmethod create-blend-mask ((this animation-state) blend-mask-size-hint initial-weight)
  (ogre-animation-state-create-blend-mask (pointer-to this) blend-mask-size-hint initial-weight))


;; name: "destroyBlendMask"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_animation_state_destroy_blend_mask"
    :void
  (ogre-animation-state :pointer))

(defmethod destroy-blend-mask ((this animation-state))
  (ogre-animation-state-destroy-blend-mask (pointer-to this)))


;; name: "getBlendMask"
;; type: "const BoneBlendMask*"
;; args: "void"
;;
(defcfun "ogre_animation_state_get_blend_mask"
    :pointer
  (ogre-animation-state :pointer))

(defmethod get-blend-mask ((this animation-state))
  (ogre-animation-state-get-blend-mask (pointer-to this)))


;; name: "hasBlendMask"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_animation_state_has_blend_mask"
    :boolean
  (ogre-animation-state :pointer))

(defmethod has-blend-mask ((this animation-state))
  (ogre-animation-state-has-blend-mask (pointer-to this)))


;; name: "setBlendMaskEntry"
;; type: "void"
;; args: (("size_t" . "boneHandle") ("float" . "weight"))
;;
(defcfun "ogre_animation_state_set_blend_mask_entry"
    :void
  (ogre-animation-state :pointer)
  (bone-handle :unsigned-int)
  (weight :float))

(defmethod set-blend-mask-entry ((this animation-state) bone-handle weight)
  (ogre-animation-state-set-blend-mask-entry (pointer-to this) bone-handle weight))


;; name: "getBlendMaskEntry"
;; type: "float"
;; args: (("size_t" . "boneHandle"))
;;
(defcfun "ogre_animation_state_get_blend_mask_entry"
    :float
  (ogre-animation-state :pointer)
  (bone-handle :unsigned-int))

(defmethod get-blend-mask-entry ((this animation-state) bone-handle)
  (ogre-animation-state-get-blend-mask-entry (pointer-to this) bone-handle))


;;; Overloaded Foreign Functions

;;; Methods for Overloaded Foreign Functions


