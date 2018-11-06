---
title: Tracking the ActiveWindow
page_title: Tracking the ActiveWindow | RadDock
description: This article shows how you can track the active window.
slug: winforms/dock/object-model/tracking-the-activewindow
tags: tracking,the,activewindow
published: True
position: 11
previous_url: dock-object-model-tracking-the-activewindow
---

# Tracking the ActiveWindow

In certain scenarios you may need to track the moment the __ActiveWindow__ of __RadDock__ is being changed. For this purpose **RadDock** exposes two events:
      

* __ActiveWindowChanging:__ This event is fired when the active window is about to be changed, but it is still not changed. This allows you to cancel the active window changing operation. Depending on the scenario, you may need to understand which the currently active window is and which is the window that is about to become active. For this purpose, the event arguments of `ActiveWindowChanging` expose two useful properties:
        
    - __NewWindow__: returns the dock window that is about to become active.
                
    - __OldWindow__: returns the currently active window.
    
     In the picture below the currently active window is `toolWindow2`. Activating `toolWindow1` will cause `ActiveWindowChanging` to fire, and we can expect __NewWindow__ to return `toolWindow1` and __OldWindow__ to return `toolWindow2`.
     ![dock-object-model-tracking-the-activewindow 001](images/dock-object-model-tracking-the-activewindow001.png)



* __AcitveWindowChanged:__ is fired after the active window is changed. Its arguments provide one property:
        
    * __DockWindow__: returns the activated window.
            

Considering the same scenario, where the currently active window is `toolWindow2`, activating the `toolWindow1` will first fire **ActiveWindowChanging** and if it is not canceled, **ActiveWindowChanged** will be fired. There, the __DockWindow__ property from the event arguments will return `toolWindow1`. In this case, you may also use __RadDock.ActiveWindow__ that will also return `toolWindow1`.
        
# See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Creating a RadDock at Runtime]({%slug winforms/dock/object-model/creating-a-raddock-at-runtime%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Customizing TabStrip Items]({%slug winforms/dock/object-model/customizing-tabstrip-items%})
* [Building an Advanced Layout at Runtime]({%slug winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime%})
* [RadDock Properties and Methods]({%slug winforms/dock/object-model/raddock-properties-and-methods%})
* [Removing ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
