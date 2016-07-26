---
title: Removing ToolWindow and DocumentWindow at Runtime
page_title: Removing ToolWindow and DocumentWindow at Runtime | RadDock
description: Removing ToolWindow and DocumentWindow at Runtime.
slug: winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime
tags: removing,toolwindow,and,documentwindow,at,runtime
published: True
position: 5
previous_url: dock-object-model-removing-toolwindow-and-documentwindow-at-runtime
---

# Removing ToolWindow and DocumentWindow at Runtime
 
__RadDock__ has two different methods which you can call if you want to remove a ToolWindow/DocumentWindow. The of from these methods depends on the __CloseAction__ property which can have one of these values

* __Close.__ When a DockWindow has its __CloseAction__ set to *Close*, this window is closed and detached (but not disposed) from its __RadDock__. You cannot manage it from __RadDock__ collections anymore.
          
* __Hide.__ When a DockWindow has its __CloseAction__ set to *Hide*, this window is only closed (hidden) in __RadDock__. However, this window is not detached from its __RadDock__ and you can manage it from the __RadDock__ collections.

* __CloseAndDispose.__ When a __DockWindow__ has its __CloseAction__ set to __CloseAndDispose__, this window is closed and then disposed.
           
###  __RemoveWindow__ 

This method closes and detaches (but does not dispose) a DockWindow regardless of its __CloseAction__ property. This will happen if you pass only a DockWindow as a parameter. In addition, you can pass a __CloseAction__ parameter. In this case, the RemoveWindow method will act differently in accordance with this parameter. 

### CloseWindow

This method has a different result on a DockWindow instance, in accordance with the __CloseAction__ property of this instance. 
 
## Default behavior

__DocumentWindow__: If you do not set the __CloseAction__ for a DocumentWindow and you close this DocumentWindow from the UI, this window is closed with __CloseAction__ set to *CloseAndDispose*, i.e. the DocumentWindow is disposed and you cannot reuse it.

__ToolWindow__: If you do not set the __CloseAction__ for a ToolWindow and you close the ToolWindow from the UI, this window is closed with __CloseAction__ set to *Hide*, i.e. the ToolWindow is not disposed and you can reuse it later.

# See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Creating a RadDock at Runtime]({%slug winforms/dock/object-model/creating-a-raddock-at-runtime%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Customizing TabStrip Items]({%slug winforms/dock/object-model/customizing-tabstrip-items%})
* [Building an Advanced Layout at Runtime]({%slug winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime%})
* [RadDock Properties and Methods]({%slug winforms/dock/object-model/raddock-properties-and-methods%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})


