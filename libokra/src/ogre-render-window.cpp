// ogre-render-window.cpp
//
// This file has been generated by the Okra Bindings Generator.
// You should not edit this file unless you know what you're doing.
// Any changes you've made directly to this file will not be retained
// when a new instance of this file is generated.
//
// author: Erik Winkels (aerique@xs4all.nl)
//
// See the LICENSE file in the Okra root directory for more info.
//
// This file was generated on: 2009-09-29 16:00:39.

#include "handwritten/okra.h"


// Prototypes

extern "C"
{
    void ogre_render_window_create_string_unsignedint_unsignedint_bool_namevaluepairlist (RenderWindow*, const char*, unsigned int, unsigned int, bool, const NameValuePairList*);
    void ogre_render_window_set_fullscreen (RenderWindow*, bool, unsigned int, unsigned int);
    void ogre_render_window_destroy_void (RenderWindow*);
    void ogre_render_window_resize (RenderWindow*, unsigned int, unsigned int);
    void ogre_render_window_window_moved_or_resized (RenderWindow*);
    void ogre_render_window_reposition (RenderWindow*, int, int);
    bool ogre_render_window_is_visible_void (RenderWindow*);
    void ogre_render_window_set_visible_bool (RenderWindow*, bool);
    bool ogre_render_window_is_active (RenderWindow*);
    bool ogre_render_window_is_closed (RenderWindow*);
    bool ogre_render_window_is_primary (RenderWindow*);
    bool ogre_render_window_is_full_screen (RenderWindow*);
    PixelFormat ogre_render_window_suggest_pixel_format (RenderWindow*);
    bool ogre_render_window_is_deactivated_on_focus_change (RenderWindow*);
    void ogre_render_window_set_deactivate_on_focus_change (RenderWindow*, bool);
}


// Functions

// name: "create"
// type: "void"
// args: (("const String&" . "name") ("unsigned int" . "width") ("unsigned int" . "height") ("bool" . "fullScreen") ("const NameValuePairList*" . "miscParams"))
//
void ogre_render_window_create_string_unsignedint_unsignedint_bool_namevaluepairlist (RenderWindow* ogre_render_window, const char* name, unsigned int width, unsigned int height, bool fullScreen, const NameValuePairList* miscParams)
{
    ogre_render_window->create(name, width, height, fullScreen, miscParams);
}

// name: "setFullscreen"
// type: "void"
// args: (("bool" . "fullScreen") ("unsigned int" . "width") ("unsigned int" . "height"))
//
void ogre_render_window_set_fullscreen (RenderWindow* ogre_render_window, bool fullScreen, unsigned int width, unsigned int height)
{
    ogre_render_window->setFullscreen(fullScreen, width, height);
}

// name: "destroy"
// type: "void"
// args: "void"
//
void ogre_render_window_destroy_void (RenderWindow* ogre_render_window)
{
    ogre_render_window->destroy();
}

// name: "resize"
// type: "void"
// args: (("unsigned int" . "width") ("unsigned int" . "height"))
//
void ogre_render_window_resize (RenderWindow* ogre_render_window, unsigned int width, unsigned int height)
{
    ogre_render_window->resize(width, height);
}

// name: "windowMovedOrResized"
// type: "void"
// args: "void"
//
void ogre_render_window_window_moved_or_resized (RenderWindow* ogre_render_window)
{
    ogre_render_window->windowMovedOrResized();
}

// name: "reposition"
// type: "void"
// args: (("int" . "left") ("int" . "top"))
//
void ogre_render_window_reposition (RenderWindow* ogre_render_window, int left, int top)
{
    ogre_render_window->reposition(left, top);
}

// name: "isVisible"
// type: "bool"
// args: "void"
//
bool ogre_render_window_is_visible_void (RenderWindow* ogre_render_window)
{
    return ogre_render_window->isVisible();
}

// name: "setVisible"
// type: "void"
// args: (("bool" . "visible"))
//
void ogre_render_window_set_visible_bool (RenderWindow* ogre_render_window, bool visible)
{
    ogre_render_window->setVisible(visible);
}

// name: "isActive"
// type: "bool"
// args: "void"
//
bool ogre_render_window_is_active (RenderWindow* ogre_render_window)
{
    return ogre_render_window->isActive();
}

// name: "isClosed"
// type: "bool"
// args: "void"
//
bool ogre_render_window_is_closed (RenderWindow* ogre_render_window)
{
    return ogre_render_window->isClosed();
}

// name: "isPrimary"
// type: "bool"
// args: "void"
//
bool ogre_render_window_is_primary (RenderWindow* ogre_render_window)
{
    return ogre_render_window->isPrimary();
}

// name: "isFullScreen"
// type: "bool"
// args: "void"
//
bool ogre_render_window_is_full_screen (RenderWindow* ogre_render_window)
{
    return ogre_render_window->isFullScreen();
}

// name: "suggestPixelFormat"
// type: "PixelFormat"
// args: "void"
//
PixelFormat ogre_render_window_suggest_pixel_format (RenderWindow* ogre_render_window)
{
    return ogre_render_window->suggestPixelFormat();
}

// name: "isDeactivatedOnFocusChange"
// type: "bool"
// args: "void"
//
bool ogre_render_window_is_deactivated_on_focus_change (RenderWindow* ogre_render_window)
{
    return ogre_render_window->isDeactivatedOnFocusChange();
}

// name: "setDeactivateOnFocusChange"
// type: "void"
// args: (("bool" . "deactivate"))
//
void ogre_render_window_set_deactivate_on_focus_change (RenderWindow* ogre_render_window, bool deactivate)
{
    ogre_render_window->setDeactivateOnFocusChange(deactivate);
}


