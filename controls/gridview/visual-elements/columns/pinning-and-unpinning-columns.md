---
title: Pinning and Unpinning Columns
page_title: Pinning and Unpinning Columns - WinForms GridView Control
description: Learn how to pin columns in WinForms GridView either by using the context menu or in the code.
slug: winforms/gridview/columns/pinning-and-unpinning-columns
tags: pinning,and,unpinning,columns
published: True
position: 7
previous_url: gridview-columns-pinning-and-unpinning-columns
---

# Pinning and Unpinning Columns

## Pinning single column

Columns in RadGridView can be pinned which will result in the pinned columns being anchored to the left or right side of the grid. To pin a particular column, set its __IsPinned__ property of the __Columns collection item__ to *True* (*False* if you want to unpin it). This will pin the column to the left side of RadGridView. In order to change the position where the column should be pinned you have to use the __PinPosition__ property of the particular column and choose a value from the provided enumeration. The code block below shows pinning the third column (called "FirstName") in the RadGridView:

#### Pinning a single columns

{{source=..\SamplesCS\GridView\Columns\PinningAndUnpinningColumns.cs region=pinningColumns}} 
{{source=..\SamplesVB\GridView\Columns\PinningAndUnpinningColumns.vb region=pinningColumns}} 

````C#
radGridView1.Columns[2].IsPinned = true;
radGridView1.Columns["FirstName"].IsPinned = true;

````
````VB.NET
Me.RadGridView1.Columns(2).IsPinned = True
'or you can use
Me.RadGridView1.Columns("FirstName").IsPinned = True

````

{{endregion}}

>caption Figure 1: The left-most column is pinned.

![WinForms RadGridView The left-most column is pinned](images/gridview-columns-pinning-and-unpinning-columns001.png)

## Pinning multiple columns 

Multiple column pinning is also possible. Simply set either the __IsPinned__ property or the __PinPosition__ property for all columns that you want to pin: 

#### Pinning multiple columns

{{source=..\SamplesCS\GridView\Columns\PinningAndUnpinningColumns.cs region=pinMultipleColumns}} 
{{source=..\SamplesVB\GridView\Columns\PinningAndUnpinningColumns.vb region=pinMultipleColumns}} 

````C#
radGridView1.Columns["Photo"].PinPosition = Telerik.WinControls.UI.PinnedColumnPosition.Left;
radGridView1.Columns["FirstName"].PinPosition = Telerik.WinControls.UI.PinnedColumnPosition.Left;
radGridView1.Columns["LastName"].PinPosition = Telerik.WinControls.UI.PinnedColumnPosition.Left;

````
````VB.NET
Me.RadGridView1.Columns("Photo").PinPosition = Telerik.WinControls.UI.PinnedColumnPosition.Left
Me.RadGridView1.Columns("FirstName").PinPosition = Telerik.WinControls.UI.PinnedColumnPosition.Left
Me.RadGridView1.Columns("LastName").PinPosition = Telerik.WinControls.UI.PinnedColumnPosition.Left

````

{{endregion}}

>caption Figure 2: More than one column can be pinned as well.
![WinForms RadGridView More than one column can be pinned as well](images/gridview-columns-pinning-and-unpinning-columns002.png)

>note All pinned columns appear in the selected pinned section ordered by their original column index in the Columns collection. After pinning multiple columns you can drag each of them to the desired position in the pin section.
>

>caption Figure 3: Reordering pinned columns. 

![WinForms RadGridView Reordering Pinned Columns](images/gridview-columns-pinning-and-unpinning-columns003.png)

![WinForms RadGridView Reordered Pinned Columns](images/gridview-columns-pinning-and-unpinning-columns004.png)
# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Converting Data Types]({%slug winforms/gridview/columns/converting-data-types%})

* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%})

