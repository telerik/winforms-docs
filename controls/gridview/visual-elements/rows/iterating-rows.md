---
title: Iterating Rows
page_title: Iterating Rows - WinForms GridView Control
description: Learn how to iterate all rows in a regular and hierarchical WinForms GridView.
slug: winforms/gridview/rows/iterating-rows
tags: iterating,rows
published: True
position: 1
previous_url: gridview-rows-iterating-rows
---

# Iterating Rows

You can iterate through grid rows using the __Rows__ collection of __GridViewRowInfo__ objects. The example below selects the last row, then iterates looking for selected rows. When the selected row is found, the __GridViewRowInfo.EnsureVisible()__ method scrolls the row into the view:

<snippet id='gridview-iteratingrows-iteratingrows-cs' />
<snippet id='gridview-iteratingrows-iteratingrows-vb' />

## Finding a grid row by a value of one of its cells

You could search for a specific value in __RadGridView__ by iterating through the rows and compare cells value. In the example below, you search for __searchedStr__ in __MyColumnName__ column:

<snippet id='gridview-iteratingrows-findagridrowbycellvalue-cs' />
<snippet id='gridview-iteratingrows-findagridrowbycellvalue-vb' />

## Iterating all rows in a self-reference hierarchy

When you have a hierarchical grid with many templates you can use a recursive method to iterate trough all rows:

<snippet id='gridview-iteratingrows-hierarchy-cs' />
<snippet id='gridview-iteratingrows-hierarchy-vb' />

## Iterating hierarchical grid.

You can iterate through grid rows using the __Rows__ collection of __RadGridView__ objects. The example below cycles through the rows of the grid, modifies the values for certain cells in the different hierarchy levels and counts the rows and cells in the whole **RadGridView**.

<snippet id='gridview-iteratingrows-iteratinghierarchicalrows-cs' />
<snippet id='gridview-iteratingrows-iteratinghierarchicalrows-vb' />

# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

* [Painting Rows]({%slug winforms/gridview/rows/painting-rows%})

