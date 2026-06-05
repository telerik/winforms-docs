---
title: Accessing DockWindows
page_title: Accessing DockWindows - WinForms Dock Control
description: Learn how you can access all docked windows of RadDock. 
slug: winforms/dock/object-model/accessing-dockwindows
tags: accessing,dockwindows
published: True
position: 2
previous_url: dock-object-model-accessing-dockwindows
---

# Accessing DockWindows

The __DockWindows__ property returns an array of all **DockWindow** in a __RadDock__ instance and gives you two useful properties and one method:

* __ToolWindows:__ Returns an array of **ToolWindows**.

* __DocumentWindows:__ Returns an array of **DocumentWindows**.

* __GetWindows(DockState state):__ Returns an array of **DockWindows** that are put in a specific **DockState**. For example, the following code snippet will return an array of **DockWindows** that are currently hidden: 

<snippet id='dock-accessing-dockwindows-gettinghiddenwindows-cs' />
<snippet id='dock-accessing-dockwindows-gettinghiddenwindows-vb' />

 
 
You can get a desired ToolWindow\DocumentWindow by specifying its __Name__ as an index:

<snippet id='dock-accessing-dockwindows-gettingwindowbyname-cs' />
<snippet id='dock-accessing-dockwindows-gettingwindowbyname-vb' />

 

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
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})
