---
title: Selection
page_title: Selection - WinForms HeatMap Control
description: This article describes the selection functionality that the RadHeatMap exposes.
slug: heatmap-selection
tags: heatmap, selection, allowselection, events
published: True
position: 7
---

# Selection

The RadHeatMap control provides visual cell selection functionality with a default border around the selected cell. However, if you want to disable this feature, you can set the __AllowSelection__ property of the RadHeatMap control to false.

Here is a list of properties related to the selection functionality:

* __AllowSelection__: Controls whether cell selection is enabled or disabled. Set it to false to disable selection.
* __SelectedCellBorderColor__: Specifies the color of the border displayed around the selected cell.
* __SelectedCellBorderWidth__: Sets the width of the border around the selected cell.
* __SelectedDataItem__: Gets the selected data item based on the selected cell index.
* __SelectedCellIndex__: Represents the index of the currently selected cell. You can access and modify this property to programmatically track or change the selected cell.

By modifying these properties, you can customize the selection behavior of the RadHeatMap control according to your specific requirements.

In addition to these properties, the RadHeatMap control also provides two events related to the selection functionality:

* __SelectedCellIndexChanging__: This event is raised before the index of the selected cell changes. It provides an opportunity to handle the selection change event and potentially cancel the selection change if needed.

* __SelectedCellIndexChanged__: This event is triggered when the index of the selected cell changes. It allows you to respond to changes for the current selected cell and perform any necessary actions or updates.

#### __Example 1: Modify Selected Cell__
{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=Selection_Border}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=Selection_Border}} 

````C#
this.radHeatMap1.SelectedCellBorderColor = Color.Green;
this.radHeatMap1.SelectedCellBorderWidth = 3;


````
````VB.NET

Me.RadHeatMap1.SelectedCellBorderColor = Color.Green
Me.RadHeatMap1.SelectedCellBorderWidth = 3


````

{{endregion}}


#### __Figure 1: RadHeatMap with customize selection border__
![WinForms RadHeatMap Selection](images/heatmap-selection01.png)

## Set Selected Cell Programmatically

We can set the selected cell through the __SelectedCellIndex__ property.

#### __Example 2: Programmatic Selection__
{{source=..\SamplesCS\HeatMap\HeatMapDataBinding.cs region=SelectedCellIndex}} 
{{source=..\SamplesVB\HeatMap\HeatMapDataBinding.vb region=SelectedCellIndex}} 

````C#
this.radHeatMap1.SelectedCellIndex = new CellIndex(2,2);


````
````VB.NET

Me.RadHeatMap1.SelectedCellIndex = New CellIndex(2,2)


````

{{endregion}}


## Hover State

When the mouse cursor hovers over a cell, it will be visually highlighted to notify the user. This visual feedback is designed to improve the user experience by indicating the active or focused cell and providing an intuitive response to the end user's interaction.

Here is a list of properties related to the mouse over effect:

|**HeaderCellHoverBackColor**|Gets or sets the header cell mouse over background color.| 
|**HeaderCellHoverForeColor**|Gets or sets the header cell mouse over foreground color.| 
|**HoveredCellBorderColor**|Gets or sets the hovered cell border color.| 
|**HoveredCellBorderWidth**|Gets or sets the hovered cell border width.| 

By modifying these properties, you can customize the hover state appearance in your __RadHeatMap__ control, making it more visually appealing and interactive for users.

In addition, the RadHeatMap control also provides an event that will be raised when hovered cell index is changed:

* __HoveredCellIndexChanged__: Occurs when the hovered cell index has changed. For column header cells the __CellIndex.RowIndex__ is -1. For row header cells the __CellIndex.ColumnIndex__ is -1.

## See Also

* [Structure]({%slug heatmap-structure%})
* [Getting Started]({%slug heatmap-getting-started%})
* [Data Binding]({%slug heatmap-data-binding%})

