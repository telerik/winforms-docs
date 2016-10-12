---
title: Logical vs. Visual Grid Structure
page_title: Logical vs. Visual Grid Structure | RadGridView
description: Logical vs. Visual Grid Structure
slug: winforms/gridview/fundamentals/logical-vs.-visual-grid-structure
tags: logical,vs.,visual,grid,structure
published: True
position: 3
previous_url: gridview-fundamentals-logical-vs-visual-grid-structure
---

# Logical vs. Visual Grid Structure

The grid can be thought of in terms of both logical and visual. The logical layer allows you to traverse grid meta data and data, i.e. templates, groups, columns, rows and cells. The visual aspect of the grid deals with the Telerik Presentation Foundation (TPF) elements that are drawn on the screen. __RadGridView__ events such as __CellFormatting__ allow you to manipulate the visual aspect of the grid.

## Logical Grid Structure

RadGridView has a logical structure that uses collections of objects such as [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%}) and [GridViewCellinfo]({%slug winforms/gridview/cells/gridviewcellinfo%}) to represent elements of the grid. The outline below shows the general structure of the logical layer:
      	

* GridViewTemplate (MasterGridViewTemplate)

   * RootGroup (RootGroups)

      * Rows ([GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%}))

      * Groups (DataGroup)

   * Columns ([GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%}), [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%}))

   * Rows ([GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%}))

   * ChildGridViewTemplates (ChildGridViewTemplates[])

Where hierarchical data is shown in the grid, the structure changes slightly:

* GridViewTemplate

   * RootGroup (contains many root groups - one for each row of the parent template)

      * Rows

      * Groups

   * Columns ([GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%}), [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%}))

   * Rows ([GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%}))

This logical tree structure allows you to traverse down through the cell level using RadGridView collections. For example, to traverse starting at the MasterTemplate rows and through every cell to perform some arbitrary operation:

#### Iterate the MasterGridViewTemplate cells

{{source=..\SamplesCS\GridView\Fundamentials\LogicalVsVisualStructure.cs region=iterateMasterGridViewTemplate}} 
{{source=..\SamplesVB\GridView\Fundamentials\LogicalVsVisualStructure.vb region=iterateMasterGridViewTemplate}} 

````C#
foreach (GridViewRowInfo rowInfo in radGridView1.MasterTemplate.Rows)
{
    foreach (GridViewCellInfo cellInfo in rowInfo.Cells)
    {
        if (cellInfo.ColumnInfo.HeaderText == "Name")
        {
        cellInfo.Value = "TestName";
        }
    }
}

````
````VB.NET
For Each rowInfo As GridViewRowInfo In RadGridView1.MasterTemplate.Rows
    For Each cellInfo As GridViewCellInfo In rowInfo.Cells
        If cellInfo.ColumnInfo.Name = "Name" Then
            cellInfo.Value = "TestName"
        End If
    Next
Next

````

{{endregion}} 

...or to iterate all the columns of each child template within the master template:

#### Iterate the child templates cells

{{source=..\SamplesCS\GridView\Fundamentials\LogicalVsVisualStructure.cs region=iterateChildTemplates}} 
{{source=..\SamplesVB\GridView\Fundamentials\LogicalVsVisualStructure.vb region=iterateChildTemplates}} 

````C#
foreach (GridViewTemplate childTemplate in radGridView1.MasterTemplate.Templates)
{
    foreach (GridViewColumn column in childTemplate.Columns)
    {
        column.HeaderTextAlignment = ContentAlignment.TopCenter;
    }
}

````
````VB.NET
For Each childtemplate As GridViewTemplate In RadGridView1.MasterTemplate.Templates
    For Each column As GridViewColumn In childtemplate.Columns
        column.HeaderTextAlignment = ContentAlignment.TopCenter
    Next
Next

````

{{endregion}} 

## Visual Grid

__RadGridView__ uses virtualization for its visual elements. This means that only the rows that are currently visible have a visual element. When the grid is scrolled up and down the visual elements are reused. For example, because of the virtualization, the __CellElement__ can only be accessed inside the __CellFormatting__ event and only for the current cell. The __CellFormatting__ event is fired every time when the cell's visual state needs to be updated.
      	

RadGridView has several events that allow you to access the visual elements of the grid:__ CreateCell__, __CellPaint__, __RowPaint__, __CellFormatting__ and __RowFormatting__. These events pass references to TPF elements that represent rows and cells. 



