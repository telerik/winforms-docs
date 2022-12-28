---
title: Wrap Mode
page_title: Wrap Mode - WinForms ToolbarForm
description: Get familiar with the WrapMode to control how the element containers are wrapped in relation to the available space in the WinForms ToolbarForm.
slug: radtoolbarform-wrap-mode
tags: radtoolbarform, wrap, mode, weight
published: True
position: 1
---

# Wrap Mode

RadToolbarFormControl offers the **WrapMode** property which determines how the element containers are wrapped in relation to the available space. The **ToolbarWrapMode** enum has the following options:

* **DesiredSize** - Wrapped according to the desired size of the elements.

* **Weight** - Wrapped according to a specified weight of the elements.

Both options will allocate the space for each of the containers proportionally from the totally available space. The ToolbarWrapMode.**DesiredSize** will calculate the proportion depending on the DesiredSize of the element containers. The ToolbarWrapMode.**Weighted** option will calculate the proportion depending on the items count or the explicitly specified items weight.

When using ToolbarWrapMode.**Weight**, it is possible to specify the weight for each of the separate containers controlled by the respective properties:

* **NearItemsWrapWeight** - Gets or sets the wrap weight while performing the layout of the **NearItems** container. The property is only relevant in the ToolbarWrapMode.Weight wrap mode. The value is in percentage and determines what part of the available space is dedicated to the container.

* **CenterItemsWrapWeight** - Gets or sets the wrap weight while performing the layout of the **CenterItems** container. The property is only relevant in the ToolbarWrapMode.Weight wrap mode. The value is in percentage and determines what part of the available space is dedicated to the container.

* **FarItemsWrapWeight** - Gets or sets the wrap weight while performing the layout of the **FarItems** container. The property is only relevant in the ToolbarWrapMode.Weight wrap mode. The value is in percentage and determines what part of the available space is dedicated to the container.

{{source=..\SamplesCS\Forms and Dialogs\RadToolbarForm1.cs region=Wrap}} 
{{source=..\SamplesVB\Forms and Dialogs\RadToolbarForm1.vb region=Wrap}}

````C#

this.ToolbarFormControl.WrapMode = ToolbarWrapMode.Weight;
this.ToolbarFormControl.NearItemsWrapWeight = 20;
this.ToolbarFormControl.CenterItemsWrapWeight = 60;
this.ToolbarFormControl.FarItemsWrapWeight = 20;

````
````VB.NET

Me.ToolbarFormControl.WrapMode = ToolbarWrapMode.Weight
Me.ToolbarFormControl.NearItemsWrapWeight = 20
Me.ToolbarFormControl.CenterItemsWrapWeight = 60
Me.ToolbarFormControl.FarItemsWrapWeight = 20

```` 

{{endregion}} 

## See Also

* [Structure]({%slug radtoolbarform-structure%})
* [Design Time]({%slug radtoolbarform-design-time%})
* [Adding Items Programmatically]({%slug radtoolbarform-adding-items-programmatically%})