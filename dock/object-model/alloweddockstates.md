---
title: AllowedDockStates
page_title: AllowedDockStates | RadDock
description: Describes how you can set the allowed dock states. 
slug: winforms/dock/object-model/alloweddockstates
tags: alloweddockstates
published: True
position: 8
previous_url: dock-object-model-allowed-dock-states
---

# AllowedDockStates
 
__AllowedDockState__ property gives you the ability to determine the available dock states per ToolWindow. There are several options for this properties which can be combined by bitwise operations. For example:

#### Allow two stats only.

{{source=..\SamplesCS\Dock\CreatingRadDock.cs region=allowedDockState}} 
{{source=..\SamplesVB\Dock\CreatingRadDock.vb region=allowedDockState}} 

````C#
toolWindow1.AllowedDockState = AllowedDockState.Docked | AllowedDockState.Floating;

````
````VB.NET
toolWindow1.AllowedDockState = AllowedDockState.Docked Or AllowedDockState.Floating

````

{{endregion}} 
 
This automatically will remove the caption buttons that may be responsible for an unwanted state, for example *Closed*. In addition, the unwanted menu items from the context menu will be disabled:

![dock-object-model-allowed-dock-states 001](images/dock-object-model-allowed-dock-states001.png)

The following setting will disable the __Floating__ option:

#### Disable the floating dock state.

{{source=..\SamplesCS\Dock\CreatingRadDock.cs region=notFloating}} 
{{source=..\SamplesVB\Dock\CreatingRadDock.vb region=notFloating}} 

````C#
toolWindow1.AllowedDockState = ~AllowedDockState.Floating;

````
````VB.NET
toolWindow1.AllowedDockState = Not AllowedDockState.Floating

````

{{endregion}} 


![dock-object-model-allowed-dock-states 002](images/dock-object-model-allowed-dock-states002.png)

# See Also

* [Accessing DockWindows]({%slug winforms/dock/object-model/accessing-dockwindows%})
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
