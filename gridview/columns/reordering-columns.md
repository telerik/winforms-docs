---
title: Reordering Columns
page_title: Reordering Columns | RadGridView
description: RadGridView control supports column reordering by the user at run-time. 
slug: winforms/gridview/columns/reordering-columns
tags: reordering,columns
published: True
position: 5
previous_url: gridview-columns-reordering-columns
---

# Reordering Columns


RadGridView control supports column reordering by the user at run-time. The user has just to drag the desired column's header at the desired position among the other headers and drop it there. In the RadGridView control, the __AllowColumnReorder__ property value determines whether users can move columns to different positions.

#### Allow or disallow column reordering

{{source=..\SamplesCS\GridView\Columns\ReorderingColumns.cs region=allowReoder}} 
{{source=..\SamplesVB\GridView\Columns\ReorderingColumns.vb region=allowReoder}} 

````C#
radGridView1.AllowColumnReorder = true;

````
````VB.NET
RadGridView1.AllowColumnReorder = True

````

{{endregion}}

>caption Figure 1: Reorder columns in RadGridView

![gridview-columns-reordering-columns 001](images/gridview-columns-reordering-columns001.png)

## Reordering columns programmatically

In order to reorder columns in RadGridView programmatically you should use the *Move* method of the RadGridView __Columns__ collection:

#### Reordering columns programmatically

{{source=..\SamplesCS\GridView\Columns\ReorderingColumns.cs region=reorderColumns}} 
{{source=..\SamplesVB\GridView\Columns\ReorderingColumns.vb region=reorderColumns}} 

````C#
radGridView1.Columns.Move(5, 0);
radGridView1.Columns.Move(4, 1);

````
````VB.NET
RadGridView1.Columns.Move(5, 0)
RadGridView1.Columns.Move(4, 1)

````

{{endregion}}
# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Overview]({%slug winforms/gridview/columns%})

* [Converting Data Types]({%slug winforms/gridview/columns/converting-data-types%})

* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%})

