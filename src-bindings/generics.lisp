;;;; generics.lisp
;;;;
;;;; This file has been generated by the Okra Bindings Generator.
;;;; You should not edit this file unless you know what you're doing.
;;;; Any changes you've made directly to this file will not be retained
;;;; when a new instance of this file is generated.
;;;;
;;;; author: Erik Winkels (aerique@xs4all.nl)
;;;;   note: For now, this file exists to silence a CL implementation about
;;;;         implicitly generated generic functions.  In the future
;;;;         documentation from the Doxygen files will be added.
;;;;
;;;; See the LICENSE file in the Okra root directory for more info.
;;;;
;;;; This file was generated on: 2009-09-28 14:07:26.

(in-package :okra-bindings)


;;; Generic Functions

(defgeneric get-animation-name (this))

(defgeneric get-time-position (this))

(defgeneric set-time-position (this arg0))

(defgeneric get-length (this))

(defgeneric set-length (this arg0))

(defgeneric get-weight (this))

(defgeneric set-weight (this arg0))

(defgeneric add-time (this arg0))

(defgeneric has-ended (this))

(defgeneric get-enabled (this))

(defgeneric set-enabled (this arg0))

(defgeneric set-loop (this arg0))

(defgeneric get-loop (this))

(defgeneric copy-state-from (this arg0))

(defgeneric get-parent (this))

(defgeneric create-blend-mask (this arg0 arg1))

(defgeneric destroy-blend-mask (this))

(defgeneric get-blend-mask (this))

(defgeneric has-blend-mask (this))

(defgeneric set-blend-mask-entry (this arg0 arg1))

(defgeneric get-blend-mask-entry (this arg0))

(defgeneric get-scene-manager (this &optional arg0))

(defgeneric get-name (this))

(defgeneric set-polygon-mode (this arg0))

(defgeneric get-polygon-mode (this))

(defgeneric set-position (this &optional arg0 arg1 arg2))

(defgeneric get-position (this))

(defgeneric move (this arg0))

(defgeneric move-relative (this arg0))

(defgeneric set-direction (this &optional arg0 arg1 arg2 arg3 arg4))

(defgeneric get-direction (this))

(defgeneric get-up (this))

(defgeneric get-right (this))

(defgeneric look-at (this &optional arg0 arg1 arg2))

(defgeneric roll (this &optional arg0 arg1))

(defgeneric yaw (this &optional arg0 arg1))

(defgeneric pitch (this &optional arg0 arg1))

(defgeneric rotate (this &optional arg0 arg1 arg2))

(defgeneric set-fixed-yaw-axis (this arg0 arg1))

(defgeneric get-orientation (this))

(defgeneric set-orientation (this &optional arg0 arg1 arg2 arg3))

(defgeneric get-derived-orientation (this))

(defgeneric get-derived-position (this &optional arg0))

(defgeneric get-derived-direction (this))

(defgeneric get-derived-up (this))

(defgeneric get-derived-right (this))

(defgeneric get-real-orientation (this))

(defgeneric get-real-position (this))

(defgeneric get-real-direction (this))

(defgeneric get-real-up (this))

(defgeneric get-real-right (this))

(defgeneric get-movable-type (this))

(defgeneric set-auto-tracking (this &optional arg0 arg1 arg2 arg3))

(defgeneric set-lod-bias (this arg0))

(defgeneric get-lod-bias (this))

(defgeneric set-lod-camera (this arg0))

(defgeneric get-lod-camera (this))

(defgeneric get-camera-to-viewport-ray (this &optional arg0 arg1 arg2))

(defgeneric get-camera-to-viewport-box-volume (this &optional arg0 arg1 arg2 arg3 arg4 arg5))

(defgeneric set-window (this arg0 arg1 arg2 arg3))

(defgeneric reset-window (this))

(defgeneric is-window-set (this))

(defgeneric get-bounding-radius (this))

(defgeneric get-auto-track-target (this))

(defgeneric get-auto-track-offset (this))

(defgeneric get-viewport (this &optional arg0))

(defgeneric set-auto-aspect-ratio (this arg0))

(defgeneric get-auto-aspect-ratio (this))

(defgeneric set-culling-frustum (this arg0))

(defgeneric get-culling-frustum (this))

(defgeneric is-visible (this &optional arg0 arg1))

(defgeneric get-world-space-corners (this))

(defgeneric get-frustum-plane (this arg0))

(defgeneric get-near-clip-distance (this))

(defgeneric get-far-clip-distance (this))

(defgeneric get-view-matrix (this &optional arg0))

(defgeneric set-use-rendering-distance (this arg0))

(defgeneric get-use-rendering-distance (this))

(defgeneric synchronise-base-settings-with (this arg0))

(defgeneric get-position-for-view-update (this))

(defgeneric get-orientation-for-view-update (this))

(defgeneric get-mesh (this))

(defgeneric get-sub-entity (this &optional arg0))

(defgeneric get-num-sub-entities (this))

(defgeneric clone (this arg0))

(defgeneric set-material-name (this &optional arg0 arg1))

(defgeneric set-material (this arg0))

(defgeneric set-render-queue-group (this arg0))

(defgeneric get-bounding-box (this))

(defgeneric get-child-objects-bounding-box (this))

(defgeneric get-animation-state (this arg0))

(defgeneric get-all-animation-states (this))

(defgeneric set-display-skeleton (this arg0))

(defgeneric get-display-skeleton (this))

(defgeneric get-manual-lod-level (this arg0))

(defgeneric get-num-manual-lod-levels (this))

(defgeneric get-current-lod-index (this))

(defgeneric set-mesh-lod-bias (this arg0 arg1 arg2))

(defgeneric set-material-lod-bias (this arg0 arg1 arg2))

(defgeneric set-polygon-mode-overrideable (this arg0))

(defgeneric attach-object-to-bone (this arg0 arg1 arg2 arg3))

(defgeneric detach-object-from-bone (this &optional arg0))

(defgeneric detach-all-objects-from-bone (this))

(defgeneric get-attached-object-iterator (this))

(defgeneric get-world-bounding-box (this arg0))

(defgeneric get-world-bounding-sphere (this arg0))

(defgeneric get-edge-list (this))

(defgeneric has-edge-list (this))

(defgeneric get-shadow-volume-renderable-iterator (this arg0 arg1 arg2 arg3 arg4 arg5))

(defgeneric has-skeleton (this))

(defgeneric get-skeleton (this))

(defgeneric is-hardware-animation-enabled (this))

(defgeneric get-software-animation-requests (this))

(defgeneric get-software-animation-normals-requests (this))

(defgeneric add-software-animation-request (this arg0))

(defgeneric remove-software-animation-request (this arg0))

(defgeneric share-skeleton-instance-with (this arg0))

(defgeneric has-vertex-animation (this))

(defgeneric stop-sharing-skeleton-instance (this))

(defgeneric shares-skeleton-instance (this))

(defgeneric get-skeleton-instance-sharing-set (this))

(defgeneric refresh-available-animation-state (this))

(defgeneric get-type-flags (this))

(defgeneric get-vertex-data-for-binding (this))

(defgeneric choose-vertex-data-for-binding (this arg0))

(defgeneric is-initialised (this))

(defgeneric background-loading-complete (this arg0))

(defgeneric visit-renderables (this arg0 arg1))

(defgeneric set-fovy (this arg0))

(defgeneric get-fovy (this))

(defgeneric set-near-clip-distance (this arg0))

(defgeneric set-far-clip-distance (this arg0))

(defgeneric set-aspect-ratio (this arg0))

(defgeneric get-aspect-ratio (this))

(defgeneric set-frustum-offset (this &optional arg0 arg1))

(defgeneric get-frustum-offset (this))

(defgeneric set-focal-length (this arg0))

(defgeneric get-focal-length (this))

(defgeneric set-frustum-extents (this arg0 arg1 arg2 arg3))

(defgeneric reset-frustum-extents (this))

(defgeneric get-frustum-extents (this arg0 arg1 arg2 arg3))

(defgeneric get-projection-matrix-rs (this))

(defgeneric get-projection-matrix-with-rsdepth (this))

(defgeneric get-projection-matrix (this))

(defgeneric calc-view-matrix-relative (this arg0 arg1))

(defgeneric set-custom-view-matrix (this arg0 arg1))

(defgeneric is-custom-view-matrix-enabled (this))

(defgeneric set-custom-projection-matrix (this arg0 arg1))

(defgeneric is-custom-projection-matrix-enabled (this))

(defgeneric get-frustum-planes (this))

(defgeneric get-material (this))

(defgeneric get-render-operation (this arg0))

(defgeneric get-world-transforms (this arg0))

(defgeneric get-squared-view-depth (this arg0))

(defgeneric get-lights (this))

(defgeneric set-projection-type (this arg0))

(defgeneric get-projection-type (this))

(defgeneric set-ortho-window (this arg0 arg1))

(defgeneric set-ortho-window-height (this arg0))

(defgeneric set-ortho-window-width (this arg0))

(defgeneric get-ortho-window-height (this))

(defgeneric get-ortho-window-width (this))

(defgeneric enable-reflection (this arg0))

(defgeneric disable-reflection (this))

(defgeneric is-reflected (this))

(defgeneric get-reflection-matrix (this))

(defgeneric get-reflection-plane (this))

(defgeneric enable-custom-near-clip-plane (this arg0))

(defgeneric disable-custom-near-clip-plane (this))

(defgeneric is-custom-near-clip-plane-enabled (this))

(defgeneric set-type (this arg0))

(defgeneric get-type (this))

(defgeneric set-diffuse-colour (this &optional arg0 arg1 arg2))

(defgeneric get-diffuse-colour (this))

(defgeneric set-specular-colour (this &optional arg0 arg1 arg2))

(defgeneric get-specular-colour (this))

(defgeneric set-attenuation (this arg0 arg1 arg2 arg3))

(defgeneric get-attenuation-range (this))

(defgeneric get-attenuation-constant (this))

(defgeneric get-attenuation-linear (this))

(defgeneric get-attenuation-quadric (this))

(defgeneric set-spotlight-range (this arg0 arg1 arg2))

(defgeneric get-spotlight-inner-angle (this))

(defgeneric get-spotlight-outer-angle (this))

(defgeneric get-spotlight-falloff (this))

(defgeneric set-spotlight-inner-angle (this arg0))

(defgeneric set-spotlight-outer-angle (this arg0))

(defgeneric set-spotlight-falloff (this arg0))

(defgeneric set-power-scale (this arg0))

(defgeneric get-power-scale (this))

(defgeneric set-visible (this &optional arg0 arg1))

(defgeneric get-as4-dvector (this arg0))

(defgeneric create-animable-value (this arg0))

(defgeneric set-custom-shadow-camera-setup (this arg0))

(defgeneric reset-custom-shadow-camera-setup (this))

(defgeneric get-custom-shadow-camera-setup (this))

(defgeneric set-shadow-far-distance (this arg0))

(defgeneric reset-shadow-far-distance (this))

(defgeneric get-shadow-far-distance (this))

(defgeneric get-shadow-far-distance-squared (this))

(defgeneric clear (this))

(defgeneric estimate-vertex-count (this arg0))

(defgeneric estimate-index-count (this arg0))

(defgeneric begin (this arg0 arg1))

(defgeneric set-dynamic (this arg0))

(defgeneric get-dynamic (this))

(defgeneric begin-update (this arg0))

(defgeneric position (this &optional arg0 arg1 arg2))

(defgeneric normal (this &optional arg0 arg1 arg2))

(defgeneric texture-coord (this &optional arg0 arg1 arg2 arg3))

(defgeneric colour (this &optional arg0 arg1 arg2 arg3))

(defgeneric index (this arg0))

(defgeneric triangle (this arg0 arg1 arg2))

(defgeneric quad (this arg0 arg1 arg2 arg3))

(defgeneric end (this))

(defgeneric convert-to-mesh (this arg0 arg1))

(defgeneric set-use-identity-projection (this arg0))

(defgeneric get-use-identity-projection (this))

(defgeneric set-use-identity-view (this arg0))

(defgeneric get-use-identity-view (this))

(defgeneric set-bounding-box (this arg0))

(defgeneric get-section (this arg0))

(defgeneric get-num-sections (this))

(defgeneric set-keep-declaration-order (this arg0))

(defgeneric get-keep-declaration-order (this))

(defgeneric get-parent-node (this))

(defgeneric get-parent-scene-node (this))

(defgeneric is-attached (this))

(defgeneric detatch-from-parent (this))

(defgeneric is-in-scene (this))

(defgeneric get-visible (this))

(defgeneric set-rendering-distance (this arg0))

(defgeneric get-rendering-distance (this))

(defgeneric set-user-object (this arg0))

(defgeneric get-user-object (this))

(defgeneric set-user-any (this arg0))

(defgeneric get-user-any (this))

(defgeneric get-render-queue-group (this))

(defgeneric set-query-flags (this arg0))

(defgeneric add-query-flags (this arg0))

(defgeneric remove-query-flags (this arg0))

(defgeneric get-query-flags (this))

(defgeneric set-visibility-flags (this arg0))

(defgeneric add-visibility-flags (this arg0))

(defgeneric remove-visibility-flags (this arg0))

(defgeneric get-visibility-flags (this))

(defgeneric query-lights (this))

(defgeneric get-light-cap-bounds (this))

(defgeneric get-dark-cap-bounds (this arg0 arg1))

(defgeneric set-cast-shadows (this arg0))

(defgeneric get-cast-shadows (this))

(defgeneric get-point-extrusion-distance (this arg0))

(defgeneric set-debug-display-enabled (this &optional arg0 arg1))

(defgeneric is-debug-display-enabled (this))

(defgeneric reset-orientation (this))

(defgeneric set-scale (this &optional arg0 arg1 arg2))

(defgeneric get-scale (this))

(defgeneric set-inherit-orientation (this arg0))

(defgeneric get-inherit-orientation (this))

(defgeneric set-inherit-scale (this arg0))

(defgeneric get-inherit-scale (this))

(defgeneric scale (this &optional arg0 arg1 arg2))

(defgeneric translate (this &optional arg0 arg1 arg2 arg3 arg4))

(defgeneric get-local-axes (this))

(defgeneric create-child (this &optional arg0 arg1 arg2))

(defgeneric add-child (this arg0))

(defgeneric num-children (this))

(defgeneric get-child (this &optional arg0))

(defgeneric get-child-iterator (this))

(defgeneric remove-child (this &optional arg0))

(defgeneric remove-all-children (this))

(defgeneric set-initial-state (this))

(defgeneric reset-to-initial-state (this))

(defgeneric get-initial-position (this))

(defgeneric get-initial-orientation (this))

(defgeneric get-initial-scale (this))

(defgeneric need-update (this arg0))

(defgeneric request-update (this arg0 arg1))

(defgeneric cancel-update (this arg0))

(defgeneric set-zorder (this arg0))

(defgeneric get-zorder (this))

(defgeneric show (this))

(defgeneric hide (this))

(defgeneric add2-d (this arg0))

(defgeneric remove2-d (this arg0))

(defgeneric add3-d (this arg0))

(defgeneric remove3-d (this arg0))

(defgeneric set-scroll (this arg0 arg1))

(defgeneric get-scroll-x (this))

(defgeneric get-scroll-y (this))

(defgeneric scroll (this arg0 arg1))

(defgeneric set-rotate (this arg0))

(defgeneric get-rotate (this))

(defgeneric get-scale-x (this))

(defgeneric get-scale-y (this))

(defgeneric find-element-at (this arg0 arg1))

(defgeneric get2-delements-iterator (this))

(defgeneric get-origin (this))

(defgeneric initialise (this &optional arg0 arg1 arg2))

(defgeneric is-enabled (this))

(defgeneric set-dimensions (this &optional arg0 arg1 arg2 arg3))

(defgeneric set-width (this arg0))

(defgeneric get-width (this))

(defgeneric set-height (this arg0))

(defgeneric get-height (this))

(defgeneric set-left (this arg0))

(defgeneric get-left (this))

(defgeneric set-top (this arg0))

(defgeneric get-top (this))

(defgeneric get-material-name (this))

(defgeneric get-type-name (this))

(defgeneric set-caption (this arg0))

(defgeneric set-colour (this arg0))

(defgeneric get-colour (this))

(defgeneric set-metrics-mode (this arg0))

(defgeneric get-metrics-mode (this))

(defgeneric set-horizontal-alignment (this arg0))

(defgeneric get-horizontal-alignment (this))

(defgeneric set-vertical-alignment (this arg0))

(defgeneric get-vertical-alignment (this))

(defgeneric contains (this arg0 arg1))

(defgeneric is-container (this))

(defgeneric is-key-enabled (this))

(defgeneric is-cloneable (this))

(defgeneric set-cloneable (this arg0))

(defgeneric copy-from-template (this arg0))

(defgeneric get-source-template (this))

(defgeneric get-script-patterns (this))

(defgeneric parse-script (this arg0 arg1))

(defgeneric get-loading-order (this))

(defgeneric create (this &optional arg0 arg1 arg2 arg3 arg4))

(defgeneric get-by-name (this arg0))

(defgeneric destroy (this &optional arg0))

(defgeneric destroy-all (this))

(defgeneric get-overlay-iterator (this))

(defgeneric has-viewport-changed (this))

(defgeneric get-viewport-height (this))

(defgeneric get-viewport-width (this))

(defgeneric get-viewport-aspect-ratio (this))

(defgeneric create-overlay-element (this arg0 arg1 arg2))

(defgeneric get-overlay-element (this arg0 arg1))

(defgeneric destroy-overlay-element (this &optional arg0 arg1))

(defgeneric destroy-all-overlay-elements (this arg0))

(defgeneric add-overlay-element-factory (this arg0))

(defgeneric get-overlay-element-factory-map (this))

(defgeneric create-overlay-element-from-template (this arg0 arg1 arg2 arg3))

(defgeneric clone-overlay-element-from-template (this arg0 arg1))

(defgeneric create-overlay-element-from-factory (this arg0 arg1))

(defgeneric get-template-iterator (this))

(defgeneric is-template (this arg0))

(defgeneric set-ray (this arg0))

(defgeneric get-ray (this))

(defgeneric set-sort-by-distance (this arg0 arg1))

(defgeneric get-sort-by-distance (this))

(defgeneric get-max-results (this))

(defgeneric execute (this &optional arg0))

(defgeneric get-last-results (this))

(defgeneric clear-results (this))

(defgeneric query-result (this &optional arg0 arg1))

(defgeneric get-metrics (this arg0 arg1 arg2))

(defgeneric get-colour-depth (this))

(defgeneric update (this &optional arg0))

(defgeneric swap-buffers (this arg0))

(defgeneric add-viewport (this arg0 arg1 arg2 arg3 arg4 arg5))

(defgeneric get-num-viewports (this))

(defgeneric remove-viewport (this arg0))

(defgeneric remove-all-viewports (this))

(defgeneric get-statistics (this &optional arg0 arg1 arg2 arg3))

(defgeneric get-last-fps (this))

(defgeneric get-average-fps (this))

(defgeneric get-best-fps (this))

(defgeneric get-worst-fps (this))

(defgeneric get-best-frame-time (this))

(defgeneric get-worst-frame-time (this))

(defgeneric reset-statistics (this))

(defgeneric get-custom-attribute (this arg0 arg1))

(defgeneric add-listener (this arg0))

(defgeneric remove-listener (this arg0))

(defgeneric remove-all-listeners (this))

(defgeneric set-priority (this arg0))

(defgeneric get-priority (this))

(defgeneric is-active (this))

(defgeneric set-active (this arg0))

(defgeneric set-auto-updated (this arg0))

(defgeneric is-auto-updated (this))

(defgeneric suggest-pixel-format (this))

(defgeneric write-contents-to-file (this arg0))

(defgeneric write-contents-to-timestamped-file (this arg0 arg1))

(defgeneric requires-texture-flipping (this))

(defgeneric get-triangle-count (this))

(defgeneric get-batch-count (this))

(defgeneric is-primary (this))

(defgeneric is-hardware-gamma-enabled (this))

(defgeneric get-fsaa (this))

(defgeneric set-fullscreen (this arg0 arg1 arg2))

(defgeneric resize (this arg0 arg1))

(defgeneric window-moved-or-resized (this))

(defgeneric reposition (this arg0 arg1))

(defgeneric is-closed (this))

(defgeneric is-full-screen (this))

(defgeneric is-deactivated-on-focus-change (this))

(defgeneric set-deactivate-on-focus-change (this arg0))

(defgeneric create-resource-group (this arg0))

(defgeneric initialise-resource-group (this arg0))

(defgeneric initialise-all-resource-groups (this))

(defgeneric prepare-resource-group (this arg0 arg1 arg2))

(defgeneric load-resource-group (this arg0 arg1 arg2))

(defgeneric unload-resource-group (this arg0 arg1))

(defgeneric unload-unreferenced-resources-in-group (this arg0 arg1))

(defgeneric clear-resource-group (this arg0))

(defgeneric destroy-resource-group (this arg0))

(defgeneric is-resource-group-initialised (this arg0))

(defgeneric is-resource-group-loaded (this arg0))

(defgeneric add-resource-location (this arg0 arg1 arg2 arg3))

(defgeneric remove-resource-location (this arg0 arg1))

(defgeneric declare-resource (this &optional arg0 arg1 arg2 arg3 arg4))

(defgeneric undeclare-resource (this arg0 arg1))

(defgeneric open-resource (this arg0 arg1 arg2 arg3))

(defgeneric open-resources (this arg0 arg1))

(defgeneric list-resource-names (this arg0 arg1))

(defgeneric list-resource-file-info (this arg0 arg1))

(defgeneric find-resource-names (this arg0 arg1 arg2))

(defgeneric resource-exists (this arg0 arg1))

(defgeneric find-group-containing-resource (this arg0))

(defgeneric find-resource-file-info (this arg0 arg1 arg2))

(defgeneric resource-modified-time (this arg0 arg1))

(defgeneric add-resource-group-listener (this arg0))

(defgeneric remove-resource-group-listener (this arg0))

(defgeneric set-world-resource-group-name (this arg0))

(defgeneric get-world-resource-group-name (this))

(defgeneric link-world-geometry-to-resource-group (this arg0 arg1 arg2))

(defgeneric unlink-world-geometry-from-resource-group (this arg0))

(defgeneric shutdown-all (this))

(defgeneric get-resource-manager-iterator (this))

(defgeneric get-resource-groups (this))

(defgeneric get-resource-declaration-list (this arg0))

(defgeneric set-loading-listener (this arg0))

(defgeneric get-loading-listener (this))

(defgeneric save-config (this))

(defgeneric restore-config (this))

(defgeneric show-config-dialog (this))

(defgeneric add-render-system (this arg0))

(defgeneric get-available-renderers (this))

(defgeneric get-render-system-by-name (this arg0))

(defgeneric set-render-system (this arg0))

(defgeneric get-render-system (this))

(defgeneric use-custom-render-system-capabilities (this arg0))

(defgeneric add-scene-manager-factory (this arg0))

(defgeneric remove-scene-manager-factory (this arg0))

(defgeneric get-scene-manager-meta-data (this arg0))

(defgeneric get-scene-manager-meta-data-iterator (this))

(defgeneric create-scene-manager (this &optional arg0 arg1))

(defgeneric destroy-scene-manager (this arg0))

(defgeneric get-scene-manager-iterator (this))

(defgeneric get-texture-manager (this))

(defgeneric get-mesh-manager (this))

(defgeneric get-error-description (this arg0))

(defgeneric add-frame-listener (this arg0))

(defgeneric remove-frame-listener (this arg0))

(defgeneric queue-end-rendering (this))

(defgeneric start-rendering (this))

(defgeneric render-one-frame (this))

(defgeneric shutdown (this))

(defgeneric convert-colour-value (this arg0 arg1))

(defgeneric get-auto-created-window (this))

(defgeneric create-render-window (this arg0 arg1 arg2 arg3 arg4))

(defgeneric detach-render-target (this &optional arg0))

(defgeneric get-render-target (this arg0))

(defgeneric load-plugin (this arg0))

(defgeneric unload-plugin (this arg0))

(defgeneric install-plugin (this arg0))

(defgeneric uninstall-plugin (this arg0))

(defgeneric get-installed-plugins (this))

(defgeneric get-timer (this))

(defgeneric get-next-frame-number (this))

(defgeneric create-render-queue-invocation-sequence (this arg0))

(defgeneric get-render-queue-invocation-sequence (this arg0))

(defgeneric destroy-render-queue-invocation-sequence (this arg0))

(defgeneric destroy-all-render-queue-invocation-sequences (this))

(defgeneric clear-event-times (this))

(defgeneric set-frame-smoothing-period (this arg0))

(defgeneric get-frame-smoothing-period (this))

(defgeneric add-movable-object-factory (this arg0 arg1))

(defgeneric remove-movable-object-factory (this arg0))

(defgeneric has-movable-object-factory (this arg0))

(defgeneric get-movable-object-factory (this arg0))

(defgeneric get-movable-object-factory-iterator (this))

(defgeneric create-camera (this arg0))

(defgeneric get-camera (this &optional arg0))

(defgeneric has-camera (this arg0))

(defgeneric destroy-camera (this &optional arg0))

(defgeneric destroy-all-cameras (this))

(defgeneric create-light (this arg0))

(defgeneric get-light (this arg0))

(defgeneric has-light (this arg0))

(defgeneric get-light-clipping-planes (this arg0))

(defgeneric get-light-scissor-rect (this arg0 arg1))

(defgeneric destroy-light (this &optional arg0))

(defgeneric destroy-all-lights (this))

(defgeneric create-scene-node (this &optional arg0))

(defgeneric destroy-scene-node (this &optional arg0))

(defgeneric get-root-scene-node (this))

(defgeneric get-scene-node (this arg0))

(defgeneric has-scene-node (this arg0))

(defgeneric create-entity (this &optional arg0 arg1))

(defgeneric get-entity (this arg0))

(defgeneric has-entity (this arg0))

(defgeneric destroy-entity (this &optional arg0))

(defgeneric destroy-all-entities (this))

(defgeneric create-manual-object (this arg0))

(defgeneric get-manual-object (this arg0))

(defgeneric has-manual-object (this arg0))

(defgeneric destroy-manual-object (this &optional arg0))

(defgeneric destroy-all-manual-objects (this))

(defgeneric create-billboard-chain (this arg0))

(defgeneric get-billboard-chain (this arg0))

(defgeneric has-billboard-chain (this arg0))

(defgeneric destroy-billboard-chain (this &optional arg0))

(defgeneric destroy-all-billboard-chains (this))

(defgeneric create-ribbon-trail (this arg0))

(defgeneric get-ribbon-trail (this arg0))

(defgeneric has-ribbon-trail (this arg0))

(defgeneric destroy-ribbon-trail (this &optional arg0))

(defgeneric destroy-all-ribbon-trails (this))

(defgeneric create-particle-system (this &optional arg0 arg1 arg2))

(defgeneric get-particle-system (this arg0))

(defgeneric has-particle-system (this arg0))

(defgeneric destroy-particle-system (this &optional arg0))

(defgeneric destroy-all-particle-systems (this))

(defgeneric clear-scene (this))

(defgeneric set-ambient-light (this arg0))

(defgeneric get-ambient-light (this))

(defgeneric prepare-world-geometry (this &optional arg0 arg1))

(defgeneric set-world-geometry (this &optional arg0 arg1))

(defgeneric estimate-world-geometry (this &optional arg0 arg1))

(defgeneric get-suggested-viewpoint (this arg0))

(defgeneric set-option (this arg0 arg1))

(defgeneric get-option (this arg0 arg1))

(defgeneric has-option (this arg0))

(defgeneric get-option-values (this arg0 arg1))

(defgeneric get-option-keys (this arg0))

(defgeneric set-sky-plane (this arg0 arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9))

(defgeneric is-sky-plane-enabled (this))

(defgeneric get-sky-plane-node (this))

(defgeneric get-sky-plane-gen-parameters (this))

(defgeneric set-sky-box (this arg0 arg1 arg2 arg3 arg4 arg5))

(defgeneric is-sky-box-enabled (this))

(defgeneric get-sky-box-node (this))

(defgeneric get-sky-box-gen-parameters (this))

(defgeneric set-sky-dome (this arg0 arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10))

(defgeneric is-sky-dome-enabled (this))

(defgeneric get-sky-dome-node (this))

(defgeneric get-sky-dome-gen-parameters (this))

(defgeneric set-fog (this arg0 arg1 arg2 arg3 arg4))

(defgeneric get-fog-mode (this))

(defgeneric get-fog-colour (this))

(defgeneric get-fog-start (this))

(defgeneric get-fog-end (this))

(defgeneric get-fog-density (this))

(defgeneric create-billboard-set (this arg0 arg1))

(defgeneric get-billboard-set (this arg0))

(defgeneric has-billboard-set (this arg0))

(defgeneric destroy-billboard-set (this &optional arg0))

(defgeneric destroy-all-billboard-sets (this))

(defgeneric set-display-scene-nodes (this arg0))

(defgeneric get-display-scene-nodes (this))

(defgeneric create-animation (this arg0 arg1))

(defgeneric get-animation (this arg0))

(defgeneric has-animation (this arg0))

(defgeneric destroy-animation (this arg0))

(defgeneric destroy-all-animations (this))

(defgeneric create-animation-state (this arg0))

(defgeneric has-animation-state (this arg0))

(defgeneric destroy-animation-state (this arg0))

(defgeneric destroy-all-animation-states (this))

(defgeneric manual-render (this arg0 arg1 arg2 arg3 arg4 arg5 arg6))

(defgeneric get-render-queue (this))

(defgeneric add-render-queue-listener (this arg0))

(defgeneric remove-render-queue-listener (this arg0))

(defgeneric add-special-case-render-queue (this arg0))

(defgeneric remove-special-case-render-queue (this arg0))

(defgeneric clear-special-case-render-queues (this))

(defgeneric set-special-case-render-queue-mode (this arg0))

(defgeneric is-render-queue-to-be-processed (this arg0))

(defgeneric set-world-geometry-render-queue (this arg0))

(defgeneric get-world-geometry-render-queue (this))

(defgeneric show-bounding-boxes (this arg0))

(defgeneric get-show-bounding-boxes (this))

(defgeneric create-aabbquery (this arg0 arg1))

(defgeneric create-sphere-query (this arg0 arg1))

(defgeneric create-plane-bounded-volume-query (this arg0 arg1))

(defgeneric create-ray-query (this arg0 arg1))

(defgeneric create-intersection-query (this arg0))

(defgeneric destroy-query (this arg0))

(defgeneric get-camera-iterator (this))

(defgeneric get-animation-iterator (this))

(defgeneric get-animation-state-iterator (this))

(defgeneric set-shadow-technique (this arg0))

(defgeneric get-shadow-technique (this))

(defgeneric set-show-debug-shadows (this arg0))

(defgeneric get-show-debug-shadows (this))

(defgeneric set-shadow-colour (this arg0))

(defgeneric get-shadow-colour (this))

(defgeneric set-shadow-directional-light-extrusion-distance (this arg0))

(defgeneric get-shadow-directional-light-extrusion-distance (this))

(defgeneric set-shadow-index-buffer-size (this arg0))

(defgeneric get-shadow-index-buffer-size (this))

(defgeneric set-shadow-texture-size (this arg0))

(defgeneric set-shadow-texture-config (this &optional arg0 arg1 arg2 arg3))

(defgeneric get-shadow-texture-config-iterator (this))

(defgeneric set-shadow-texture-pixel-format (this arg0))

(defgeneric set-shadow-texture-count (this arg0))

(defgeneric get-shadow-texture-count (this))

(defgeneric set-shadow-texture-count-per-light-type (this arg0 arg1))

(defgeneric get-shadow-texture-count-per-light-type (this arg0))

(defgeneric set-shadow-texture-settings (this arg0 arg1 arg2))

(defgeneric get-shadow-texture (this arg0))

(defgeneric set-shadow-dir-light-texture-offset (this arg0))

(defgeneric get-shadow-dir-light-texture-offset (this))

(defgeneric set-shadow-texture-fade-start (this arg0))

(defgeneric set-shadow-texture-fade-end (this arg0))

(defgeneric set-shadow-texture-self-shadow (this arg0))

(defgeneric get-shadow-texture-self-shadow (this))

(defgeneric set-shadow-texture-caster-material (this arg0))

(defgeneric set-shadow-texture-receiver-material (this arg0))

(defgeneric set-shadow-caster-render-back-faces (this arg0))

(defgeneric get-shadow-caster-render-back-faces (this))

(defgeneric set-shadow-camera-setup (this arg0))

(defgeneric get-shadow-camera-setup (this))

(defgeneric set-shadow-use-infinite-far-plane (this arg0))

(defgeneric is-shadow-technique-stencil-based (this))

(defgeneric is-shadow-technique-texture-based (this))

(defgeneric is-shadow-technique-modulative (this))

(defgeneric is-shadow-technique-additive (this))

(defgeneric is-shadow-technique-integrated (this))

(defgeneric is-shadow-technique-in-use (this))

(defgeneric set-shadow-use-light-clip-planes (this arg0))

(defgeneric get-shadow-use-light-clip-planes (this))

(defgeneric create-static-geometry (this arg0))

(defgeneric get-static-geometry (this arg0))

(defgeneric has-static-geometry (this arg0))

(defgeneric destroy-static-geometry (this &optional arg0))

(defgeneric destroy-all-static-geometry (this))

(defgeneric create-instanced-geometry (this arg0))

(defgeneric get-instanced-geometry (this arg0))

(defgeneric destroy-instanced-geometry (this &optional arg0))

(defgeneric destroy-all-instanced-geometry (this))

(defgeneric create-movable-object (this arg0 arg1 arg2))

(defgeneric destroy-movable-object (this &optional arg0 arg1))

(defgeneric destroy-all-movable-objects-by-type (this arg0))

(defgeneric destroy-all-movable-objects (this))

(defgeneric get-movable-object (this arg0 arg1))

(defgeneric has-movable-object (this arg0 arg1))

(defgeneric get-movable-object-iterator (this arg0))

(defgeneric inject-movable-object (this arg0))

(defgeneric extract-movable-object (this &optional arg0 arg1))

(defgeneric extract-all-movable-objects-by-type (this arg0))

(defgeneric set-visibility-mask (this arg0))

(defgeneric get-visibility-mask (this))

(defgeneric set-find-visible-objects (this arg0))

(defgeneric get-find-visible-objects (this))

(defgeneric set-normalise-normals-on-scale (this arg0))

(defgeneric get-normalise-normals-on-scale (this))

(defgeneric set-flip-culling-on-negative-scale (this arg0))

(defgeneric get-flip-culling-on-negative-scale (this))

(defgeneric get-destination-render-system (this))

(defgeneric get-current-viewport (this))

(defgeneric get-visible-objects-bounds-info (this arg0))

(defgeneric get-shadow-caster-bounds-info (this arg0 arg1))

(defgeneric set-camera-relative-rendering (this arg0))

(defgeneric get-camera-relative-rendering (this))

(defgeneric attach-object (this arg0))

(defgeneric num-attached-objects (this))

(defgeneric get-attached-object (this &optional arg0))

(defgeneric detach-object (this &optional arg0))

(defgeneric detach-all-objects (this))

(defgeneric is-in-scene-graph (this))

(defgeneric get-creator (this))

(defgeneric remove-and-destroy-child (this &optional arg0))

(defgeneric remove-and-destroy-all-children (this))

(defgeneric show-bounding-box (this arg0))

(defgeneric get-show-bounding-box (this))

(defgeneric create-child-scene-node (this &optional arg0 arg1 arg2))

(defgeneric find-lights (this arg0 arg1))

(defgeneric get-auto-track-local-direction (this))

(defgeneric flip-visibility (this arg0))

(defgeneric reset (this))

(defgeneric get-milliseconds (this))

(defgeneric get-microseconds (this))

(defgeneric get-milliseconds-cpu (this))

(defgeneric get-microseconds-cpu (this))

(defgeneric get-target (this))

(defgeneric set-camera (this arg0))

(defgeneric get-actual-left (this))

(defgeneric get-actual-top (this))

(defgeneric get-actual-width (this))

(defgeneric get-actual-height (this))

(defgeneric set-background-colour (this arg0))

(defgeneric get-background-colour (this))

(defgeneric set-clear-every-frame (this arg0 arg1))

(defgeneric get-clear-every-frame (this))

(defgeneric get-clear-buffers (this))

(defgeneric set-material-scheme (this arg0))

(defgeneric get-material-scheme (this))

(defgeneric get-actual-dimensions (this arg0 arg1 arg2 arg3))

(defgeneric set-overlays-enabled (this arg0))

(defgeneric get-overlays-enabled (this))

(defgeneric set-skies-enabled (this arg0))

(defgeneric get-skies-enabled (this))

(defgeneric set-shadows-enabled (this arg0))

(defgeneric get-shadows-enabled (this))

(defgeneric set-render-queue-invocation-sequence-name (this arg0))

(defgeneric get-render-queue-invocation-sequence-name (this))


