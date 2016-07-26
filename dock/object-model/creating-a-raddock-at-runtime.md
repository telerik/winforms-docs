---
title: Creating a RadDock at Runtime
page_title: Creating a RadDock at Runtime | RadDock
description: Creating a RadDock at Runtime
slug: winforms/dock/object-model/creating-a-raddock-at-runtime
tags: creating,a,raddock,at,runtime
published: True
position: 1
previous_url: dock-object-model-creating-a-raddock-at-runtime
---

# Creating a RadDock at Runtime
 
To create a __RadDock__ in code, construct a __RadDock__, set properties and add to the controls collection of the form. The example below creates a __RadDock__, adds it to the form and docks a single __ToolWindow__ to it. See [DockWindows]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%}) for more information on instantiating __DockWindow__ at runtime.

![dock-object-model-creating-a-raddock-at-runtime 001](images/dock-object-model-creating-a-raddock-at-runtime001.png)

#### Creating a simple RadDock instance 

{{source=..\SamplesCS\Dock\CreatingRadDock.cs region=creatingDock}} 
{{source=..\SamplesVB\Dock\CreatingRadDock.vb region=creatingDock}} 

````C#
RadDock radDock1 = new RadDock();
radDock1.Dock = DockStyle.Fill;
this.Controls.Add(radDock1);
ToolWindow toolWindow1 = new ToolWindow();
toolWindow1.Text = "A ToolWindow";
radDock1.DockWindow(toolWindow1, DockPosition.Left);

````
````VB.NET
Dim radDock1 As RadDock = New RadDock()
radDock1.Dock = DockStyle.Fill
Me.Controls.Add(radDock1)
Dim toolWindow1 As ToolWindow = New ToolWindow()
toolWindow1.Text = "A ToolWindow"
radDock1.DockWindow(toolWindow1, DockPosition.Left)

````

{{endregion}}  

>caution You cannot set the DockPosition of the ToolWindow to Fill, unless you specify a target ToolWindow. If you try to set the DockPosition of a ToolWindow to Fill when there is no target ToolWindow, we throw an exception since a ToolWindow cannot fill RadDock entirely. This behavior is by design and it is the same as it is in Visual Studio. If you want to have a ToolWindow occupying RadDock entirely, you should dock it to a side (left/right/top/bottom) and set MainDocumentContainerVisible to false.
>

# See Also

* [AllowedDockStates]({%slug winforms/dock/object-model/alloweddockstates%})
* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
* [ Creating ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime%})
* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Customizing TabStrip Items]({%slug winforms/dock/object-model/customizing-tabstrip-items%})
* [Building an Advanced Layout at Runtime]({%slug winforms/dock/object-model/example:-building-an-advanced-layout-at-runtime%})
* [RadDock Properties and Methods]({%slug winforms/dock/object-model/raddock-properties-and-methods%})
* [Removing ToolWindow and DocumentWindow at Runtime]({%slug winforms/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime%})
* [Tabs and Captions]({%slug winforms/dock/object-model/tabs-and-captions%})
* [ToolWindow and DocumentWindow Properties and Methods]({%slug winforms/dock/object-model/toolwindow-and-documentwindow-properties-and-methods%})
* [Tracking the ActiveWindow]({%slug winforms/dock/object-model/tracking-the-activewindow%})
