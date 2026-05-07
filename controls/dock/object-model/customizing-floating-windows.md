---
title: Customizing Floating Windows
page_title: Customizing Floating Windows - WinForms Dock Control
description: Learn how to customize Floating Windows when they are created.
slug: winforms/dock/object-model/customizing-floating-windows
tags: customizing,floating,windows
published: True
position: 9
previous_url: dock-object-model-customizing-floating-windows
---

# Customizing Floating Windows
 
__FloatingWindows__ provide a useful way of reordering pieces of content on your screen. By default, **FloatingWindows** only appear with their close button enabled, and on top of the __RadDock__ that manages them. The following paragraphs demonstrate how this behavior can be changed. In all cases you need to handle the __FloatingWindowCreated__ event which is fired after the end-user starts dragging a **ToolWindow** to float it. At this point the **FloatingWindow** is created and it is just about to be shown. This is the moment when you can plug in and modify the window your way.

## Enabling Minimize and Maximize buttons  

In order to enable the `Maximize` and `Minimize` buttons for a **FloatingWindow**, you have to handle the `FloatingWindowCreated` event and set the **MinimizeBox**, **MaximizeBox** and **FormBorderStyle** properties of the **FloatingWindow** the following way: 

<snippet id='dock-customizing-floating-windows-buttons-cs' />
<snippet id='dock-customizing-floating-windows-buttons-vb' />

 
 
The result is:
![WinForms RadDock Enabling Minimize and Maximize buttons](images/dock-object-model-customizing-floating-windows001.png)

## Allowing the FloatingWindow to be under the main form

Sometimes, you may want to prevent the **FloatingWindow** from being always on top of the form that contains the **RadDock** manager. In order to do that, you need to extend the **FloatingWindow** class and use an instance of the extended type. 
In the extended **FloatingWindow** type, we need to override the **OnActivated** method, and after the base implementation takes place, we should remove the window from the collection of owned forms that the main form has: 

<snippet id='dock-customizing-floating-windows-customfloatingwindow-cs' />
<snippet id='dock-customizing-floating-windows-customfloatingwindow-vb' />

 
 
Finally, we have to pass an instance of the custom **FloatingWindow** to the event arguments of the **FloatingWindowCreated** event: 

<snippet id='dock-customizing-floating-windows-showbehind-cs' />
<snippet id='dock-customizing-floating-windows-showbehind-vb' />

 
 

Here is the result. As you can see, the form that contains the **RadDock** manager can cover the **FloatingWindow**:
![WinForms RadDock FloatingWindow Under MainForm](images/dock-object-model-customizing-floating-windows002.png)

## Setting the theme of a FloatingWindow

**FloatingWindow** is a descendant class of **RadForm**. As such, **FloatingWindow** has the __ThemeName__ property that you can set in the **FloatingWindowCreated** event in order to change its theme: 

<snippet id='dock-customizing-floating-windows-themename-cs' />
<snippet id='dock-customizing-floating-windows-themename-vb' />

 


![WinForms RadDock FloatingWindow Theme](images/dock-object-model-customizing-floating-windows003.png)

# See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Creating a RadDock at Runtime]({%slug winforms/dock/object-model/creating-a-raddock-at-runtime%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
* [Building an Advanced Layout at Runtime]({%slug winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime%})
* [RadDock Properties and Methods]({%slug winforms/dock/object-model/raddock-properties-and-methods%})
* [Removing ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})
