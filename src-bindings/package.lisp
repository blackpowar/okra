;;;; package.lisp
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
;;;; This file was generated on: 2009-09-29 16:00:40.

(in-package :cl-user)

(defpackage :okra-bindings
  (:use :cl :cffi :okra-common)
  (:shadow :position)
  (:export *ogre-root* :ogre-object :name-of :pointer-to :conan :create-ray :ray-constructor :root-constructor :get-overlay-manager-singleton-ptr :get-resource-group-manager-singleton-ptr :get-window-handler :hw-free :hw-malloc :hw-manual-object :hw-manual-object-triangle :message-pump :simple-add-viewport :get-available-renderers-test :get-render-queue-invocation-sequence-name :set-render-queue-invocation-sequence-name :get-shadows-enabled :set-shadows-enabled :get-skies-enabled :set-skies-enabled :get-overlays-enabled :set-overlays-enabled :get-actual-dimensions :get-material-scheme :set-material-scheme :get-clear-buffers :get-clear-every-frame :set-clear-every-frame :get-background-colour :set-background-colour :get-actual-height :get-actual-width :get-actual-top :get-actual-left :set-camera :get-target :viewport :get-microseconds-cpu :get-milliseconds-cpu :get-microseconds :get-milliseconds :reset :timer :create-child-scene-node :remove-and-destroy-child :detach-object :get-attached-object :flip-visibility :get-auto-track-local-direction :find-lights :get-show-bounding-box :show-bounding-box :remove-and-destroy-all-children :get-creator :is-in-scene-graph :detach-all-objects :num-attached-objects :attach-object :scene-node :extract-movable-object :destroy-movable-object :destroy-instanced-geometry :destroy-static-geometry :set-shadow-texture-config :destroy-billboard-set :estimate-world-geometry :set-world-geometry :prepare-world-geometry :destroy-particle-system :create-particle-system :destroy-ribbon-trail :destroy-billboard-chain :destroy-manual-object :destroy-entity :create-entity :destroy-scene-node :create-scene-node :destroy-light :destroy-camera :get-camera :get-camera-relative-rendering :set-camera-relative-rendering :get-shadow-caster-bounds-info :get-visible-objects-bounds-info :get-current-viewport :get-destination-render-system :get-flip-culling-on-negative-scale :set-flip-culling-on-negative-scale :get-normalise-normals-on-scale :set-normalise-normals-on-scale :get-find-visible-objects :set-find-visible-objects :get-visibility-mask :set-visibility-mask :extract-all-movable-objects-by-type :inject-movable-object :get-movable-object-iterator :has-movable-object :get-movable-object :destroy-all-movable-objects :destroy-all-movable-objects-by-type :create-movable-object :destroy-all-instanced-geometry :get-instanced-geometry :create-instanced-geometry :destroy-all-static-geometry :has-static-geometry :get-static-geometry :create-static-geometry :get-shadow-use-light-clip-planes :set-shadow-use-light-clip-planes :is-shadow-technique-in-use :is-shadow-technique-integrated :is-shadow-technique-additive :is-shadow-technique-modulative :is-shadow-technique-texture-based :is-shadow-technique-stencil-based :set-shadow-use-infinite-far-plane :get-shadow-camera-setup :set-shadow-camera-setup :get-shadow-caster-render-back-faces :set-shadow-caster-render-back-faces :set-shadow-texture-receiver-material :set-shadow-texture-caster-material :get-shadow-texture-self-shadow :set-shadow-texture-self-shadow :set-shadow-texture-fade-end :set-shadow-texture-fade-start :get-shadow-dir-light-texture-offset :set-shadow-dir-light-texture-offset :get-shadow-texture :set-shadow-texture-settings :get-shadow-texture-count-per-light-type :set-shadow-texture-count-per-light-type :get-shadow-texture-count :set-shadow-texture-count :set-shadow-texture-pixel-format :get-shadow-texture-config-iterator :set-shadow-texture-size :get-shadow-index-buffer-size :set-shadow-index-buffer-size :get-shadow-directional-light-extrusion-distance :set-shadow-directional-light-extrusion-distance :get-shadow-colour :set-shadow-colour :get-show-debug-shadows :set-show-debug-shadows :get-shadow-technique :set-shadow-technique :get-animation-state-iterator :get-animation-iterator :get-camera-iterator :destroy-query :create-intersection-query :create-ray-query :create-plane-bounded-volume-query :create-sphere-query :create-aabbquery :get-show-bounding-boxes :show-bounding-boxes :get-world-geometry-render-queue :set-world-geometry-render-queue :is-render-queue-to-be-processed :set-special-case-render-queue-mode :clear-special-case-render-queues :remove-special-case-render-queue :add-special-case-render-queue :remove-render-queue-listener :add-render-queue-listener :get-render-queue :manual-render :destroy-all-animation-states :destroy-animation-state :has-animation-state :create-animation-state :destroy-all-animations :destroy-animation :has-animation :get-animation :create-animation :get-display-scene-nodes :set-display-scene-nodes :destroy-all-billboard-sets :has-billboard-set :get-billboard-set :create-billboard-set :get-fog-density :get-fog-end :get-fog-start :get-fog-colour :get-fog-mode :set-fog :get-sky-dome-gen-parameters :get-sky-dome-node :is-sky-dome-enabled :set-sky-dome :get-sky-box-gen-parameters :get-sky-box-node :is-sky-box-enabled :set-sky-box :get-sky-plane-gen-parameters :get-sky-plane-node :is-sky-plane-enabled :set-sky-plane :get-option-keys :get-option-values :has-option :get-option :set-option :get-suggested-viewpoint :get-ambient-light :set-ambient-light :clear-scene :destroy-all-particle-systems :has-particle-system :get-particle-system :destroy-all-ribbon-trails :has-ribbon-trail :get-ribbon-trail :create-ribbon-trail :destroy-all-billboard-chains :has-billboard-chain :get-billboard-chain :create-billboard-chain :destroy-all-manual-objects :has-manual-object :get-manual-object :create-manual-object :destroy-all-entities :has-entity :get-entity :has-scene-node :get-scene-node :get-root-scene-node :destroy-all-lights :get-light-scissor-rect :get-light-clipping-planes :has-light :get-light :create-light :destroy-all-cameras :has-camera :create-camera :scene-manager :detach-render-target :create-scene-manager :get-movable-object-factory-iterator :get-movable-object-factory :has-movable-object-factory :remove-movable-object-factory :add-movable-object-factory :get-frame-smoothing-period :set-frame-smoothing-period :clear-event-times :destroy-all-render-queue-invocation-sequences :destroy-render-queue-invocation-sequence :get-render-queue-invocation-sequence :create-render-queue-invocation-sequence :get-next-frame-number :get-timer :get-installed-plugins :uninstall-plugin :install-plugin :unload-plugin :load-plugin :get-render-target :create-render-window :get-auto-created-window :convert-colour-value :shutdown :render-one-frame :start-rendering :queue-end-rendering :remove-frame-listener :add-frame-listener :get-error-description :get-mesh-manager :get-texture-manager :get-scene-manager-iterator :destroy-scene-manager :get-scene-manager-meta-data-iterator :get-scene-manager-meta-data :remove-scene-manager-factory :add-scene-manager-factory :use-custom-render-system-capabilities :get-render-system :set-render-system :get-render-system-by-name :get-available-renderers :add-render-system :show-config-dialog :restore-config :save-config :root :declare-resource :get-loading-listener :set-loading-listener :get-resource-declaration-list :get-resource-groups :get-resource-manager-iterator :shutdown-all :unlink-world-geometry-from-resource-group :link-world-geometry-to-resource-group :get-world-resource-group-name :set-world-resource-group-name :remove-resource-group-listener :add-resource-group-listener :resource-modified-time :find-resource-file-info :find-group-containing-resource :resource-exists :find-resource-names :list-resource-file-info :list-resource-names :open-resources :open-resource :undeclare-resource :remove-resource-location :add-resource-location :is-resource-group-loaded :is-resource-group-initialised :destroy-resource-group :clear-resource-group :unload-unreferenced-resources-in-group :unload-resource-group :load-resource-group :prepare-resource-group :initialise-all-resource-groups :initialise-resource-group :create-resource-group :resource-group-manager :set-deactivate-on-focus-change :is-deactivated-on-focus-change :is-full-screen :is-closed :reposition :window-moved-or-resized :resize :set-fullscreen :render-window :get-statistics :update :get-fsaa :is-hardware-gamma-enabled :is-primary :get-batch-count :get-triangle-count :requires-texture-flipping :write-contents-to-timestamped-file :write-contents-to-file :suggest-pixel-format :is-auto-updated :set-auto-updated :set-active :is-active :get-priority :set-priority :remove-all-listeners :remove-listener :add-listener :get-custom-attribute :reset-statistics :get-worst-frame-time :get-best-frame-time :get-worst-fps :get-best-fps :get-average-fps :get-last-fps :remove-all-viewports :remove-viewport :get-num-viewports :add-viewport :swap-buffers :get-colour-depth :get-metrics :render-target :query-result :execute :clear-results :get-last-results :get-max-results :get-sort-by-distance :set-sort-by-distance :get-ray :set-ray :ray-scene-query :destroy-overlay-element :destroy :create :is-template :get-template-iterator :create-overlay-element-from-factory :clone-overlay-element-from-template :create-overlay-element-from-template :get-overlay-element-factory-map :add-overlay-element-factory :destroy-all-overlay-elements :get-overlay-element :create-overlay-element :get-viewport-aspect-ratio :get-viewport-width :get-viewport-height :has-viewport-changed :get-overlay-iterator :destroy-all :get-by-name :get-loading-order :parse-script :get-script-patterns :overlay-manager :set-dimensions :initialise :get-source-template :copy-from-template :set-cloneable :is-cloneable :is-key-enabled :is-container :contains :get-vertical-alignment :set-vertical-alignment :get-horizontal-alignment :set-horizontal-alignment :get-metrics-mode :set-metrics-mode :get-colour :set-colour :set-caption :get-type-name :get-material-name :get-top :set-top :get-left :set-left :get-height :set-height :get-width :set-width :is-enabled :overlay-element :get-origin :get2-delements-iterator :find-element-at :get-scale-y :get-scale-x :get-rotate :set-rotate :scroll :get-scroll-y :get-scroll-x :set-scroll :remove3-d :add3-d :remove2-d :add2-d :hide :show :get-zorder :set-zorder :overlay :remove-child :get-child :create-child :translate :scale :set-scale :cancel-update :request-update :need-update :get-initial-scale :get-initial-orientation :get-initial-position :reset-to-initial-state :set-initial-state :remove-all-children :get-child-iterator :num-children :add-child :get-local-axes :get-inherit-scale :set-inherit-scale :get-inherit-orientation :set-inherit-orientation :get-scale :reset-orientation :node :set-debug-display-enabled :is-debug-display-enabled :get-point-extrusion-distance :get-receives-shadows :get-cast-shadows :set-cast-shadows :get-dark-cap-bounds :get-light-cap-bounds :query-lights :get-visibility-flags :remove-visibility-flags :add-visibility-flags :set-visibility-flags :get-query-flags :remove-query-flags :add-query-flags :set-query-flags :get-render-queue-group :get-user-any :set-user-any :get-user-object :set-user-object :get-rendering-distance :set-rendering-distance :get-visible :is-in-scene :detatch-from-parent :is-attached :get-parent-scene-node :get-parent-node :movable-object :colour :texture-coord :normal :position :get-keep-declaration-order :set-keep-declaration-order :get-num-sections :get-section :set-bounding-box :get-use-identity-view :set-use-identity-view :get-use-identity-projection :set-use-identity-projection :convert-to-mesh :end :quad :triangle :index :begin-update :get-dynamic :set-dynamic :begin :estimate-index-count :estimate-vertex-count :clear :manual-object :set-visible :set-specular-colour :set-diffuse-colour :get-shadow-far-distance-squared :get-shadow-far-distance :reset-shadow-far-distance :set-shadow-far-distance :get-custom-shadow-camera-setup :reset-custom-shadow-camera-setup :set-custom-shadow-camera-setup :create-animable-value :get-as4-dvector :get-power-scale :set-power-scale :set-spotlight-falloff :set-spotlight-outer-angle :set-spotlight-inner-angle :get-spotlight-falloff :get-spotlight-outer-angle :get-spotlight-inner-angle :set-spotlight-range :get-attenuation-quadric :get-attenuation-linear :get-attenuation-constant :get-attenuation-range :set-attenuation :get-specular-colour :get-diffuse-colour :get-type :set-type :light :set-frustum-offset :is-custom-near-clip-plane-enabled :disable-custom-near-clip-plane :enable-custom-near-clip-plane :get-reflection-plane :get-reflection-matrix :is-reflected :disable-reflection :enable-reflection :get-ortho-window-width :get-ortho-window-height :set-ortho-window-width :set-ortho-window-height :set-ortho-window :get-projection-type :set-projection-type :get-lights :get-squared-view-depth :get-world-transforms :get-render-operation :get-material :get-frustum-planes :is-custom-projection-matrix-enabled :set-custom-projection-matrix :is-custom-view-matrix-enabled :set-custom-view-matrix :calc-view-matrix-relative :get-projection-matrix :get-projection-matrix-with-rsdepth :get-projection-matrix-rs :get-frustum-extents :reset-frustum-extents :set-frustum-extents :get-focal-length :set-focal-length :get-frustum-offset :get-aspect-ratio :set-aspect-ratio :set-far-clip-distance :set-near-clip-distance :get-fovy :set-fovy :frustum :detach-object-from-bone :set-material-name :get-sub-entity :visit-renderables :background-loading-complete :is-initialised :choose-vertex-data-for-binding :get-vertex-data-for-binding :get-type-flags :refresh-available-animation-state :get-skeleton-instance-sharing-set :shares-skeleton-instance :stop-sharing-skeleton-instance :has-vertex-animation :share-skeleton-instance-with :remove-software-animation-request :add-software-animation-request :get-software-animation-normals-requests :get-software-animation-requests :is-hardware-animation-enabled :get-skeleton :has-skeleton :get-shadow-volume-renderable-iterator :has-edge-list :get-edge-list :get-world-bounding-sphere :get-world-bounding-box :get-attached-object-iterator :detach-all-objects-from-bone :attach-object-to-bone :set-polygon-mode-overrideable :set-material-lod-bias :set-mesh-lod-bias :get-current-lod-index :get-num-manual-lod-levels :get-manual-lod-level :get-display-skeleton :set-display-skeleton :get-all-animation-states :get-animation-state :get-child-objects-bounding-box :get-bounding-box :set-render-queue-group :set-material :clone :get-num-sub-entities :get-mesh :entity :get-view-matrix :is-visible :get-viewport :get-camera-to-viewport-box-volume :get-camera-to-viewport-ray :set-auto-tracking :get-derived-position :set-orientation :rotate :pitch :yaw :roll :look-at :set-direction :set-position :get-scene-manager :get-orientation-for-view-update :get-position-for-view-update :synchronise-base-settings-with :get-use-rendering-distance :set-use-rendering-distance :get-far-clip-distance :get-near-clip-distance :get-frustum-plane :get-world-space-corners :get-culling-frustum :set-culling-frustum :get-auto-aspect-ratio :set-auto-aspect-ratio :get-auto-track-offset :get-auto-track-target :get-bounding-radius :is-window-set :reset-window :set-window :get-lod-camera :set-lod-camera :get-lod-bias :set-lod-bias :get-movable-type :get-real-right :get-real-up :get-real-direction :get-real-position :get-real-orientation :get-derived-right :get-derived-up :get-derived-direction :get-derived-orientation :get-orientation :set-fixed-yaw-axis :get-right :get-up :get-direction :move-relative :move :get-position :get-polygon-mode :set-polygon-mode :get-name :camera :get-blend-mask-entry :set-blend-mask-entry :has-blend-mask :get-blend-mask :destroy-blend-mask :create-blend-mask :get-parent :copy-state-from :get-loop :set-loop :set-enabled :get-enabled :has-ended :add-time :set-weight :get-weight :set-length :get-length :set-time-position :get-time-position :get-animation-name :animation-state))
