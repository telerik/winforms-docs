---
title: AllowedDockStates
page_title: AllowedDockStates
description: AllowedDockStates
slug: dock-object-model-allowed-dock-states
tags: alloweddockstates
published: True
position: 8
---

# AllowedDockStates



## 

__AllowedDockState__ property gives you the ability to determine the available dock states per ToolWindow. There are several options for this properties which can be combined by bitwise operations, for example:

#### __[C#] Setting AllowedDockState property__

{{region allowedDockState}}
	            toolWindow1.AllowedDockState = AllowedDockState.Docked | AllowedDockState.Floating;
	{{endregion}}



#### __[VB.NET] Setting AllowedDockState property__

{{region allowedDockState}}
	        toolWindow1.AllowedDockState = AllowedDockState.Docked Or AllowedDockState.Floating
	{{endregion}}



This automatically will remove the caption buttons that may be responsible for an unwanted state, for example closed. In addition, the unwanted menu items from the context menu will be disabled:![dock-object-model-allowed-dock-states 001](images/dock-object-model-allowed-dock-states001.png)

The following setting will disable the Floating option:

#### __[C#] Setting the AllowedDockState property__

{{region notFloating}}
	            toolWindow1.AllowedDockState = ~AllowedDockState.Floating; 
	{{endregion}}



#### __[VB.NET] Setting the AllowedDockState property__

{{region notFloating}}
	        toolWindow1.AllowedDockState = Not AllowedDockState.Floating
	{{endregion}}

![dock-object-model-allowed-dock-states 002](images/dock-object-model-allowed-dock-states002.png)
