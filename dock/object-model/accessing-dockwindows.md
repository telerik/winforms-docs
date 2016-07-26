---
title: Accessing DockWindows
page_title: Accessing DockWindows | RadDock
description: This article shows how you can access all docked windows of RadDock. 
slug: winforms/dock/object-model/accessing-dockwindows
tags: accessing,dockwindows
published: True
position: 2
previous_url: dock-object-model-accessing-dockwindows
---

# Accessing DockWindows

The __DockWindows__ property returns an array of all DockWindow in a __RadDock__ instance and gives you two useful properties and one method:

* __ToolWindows:__ Returns an array of ToolWindows.

* __DocumentWindows:__ Returns an array of DocumentWindows.

* __GetWindows(DockState state):__ Returns an array of DockWindows that are put in a specific DockState. For example, the following code snippet will return an array of DockWindows that are currently hidden: 

{{source=..\SamplesCS\Dock\CreatingWindows.cs region=gettingHiddenWindows}} 
{{source=..\SamplesVB\Dock\CreatingWindows.vb region=gettingHiddenWindows}} 

````C#
DockWindow[] hiddenWindows = radDock1.DockWindows.GetWindows(DockState.Hidden);

````
````VB.NET
Dim hiddenWindows As DockWindow() = Me.RadDock1.DockWindows.GetWindows(DockState.Hidden)

````

{{endregion}} 
 
You can get a desired ToolWindow\DocumentWindow by specifying its __Name__ as an index:

{{source=..\SamplesCS\Dock\CreatingWindows.cs region=gettingWindowByName}} 
{{source=..\SamplesVB\Dock\CreatingWindows.vb region=gettingWindowByName}} 

````C#
DockWindow window1 = this.radDock1.DockWindows["Form1"];
// or simply
DockWindow window2 = this.radDock1["Form1"];

````
````VB.NET
Dim window1 As DockWindow = Me.RadDock1.DockWindows("Form1")
' or simply
Dim window2 As DockWindow = Me.RadDock1("Form1")

````

{{endregion}} 

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
