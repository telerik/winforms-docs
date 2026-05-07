---
title: Removing Rows
page_title: Removing Rows - RadGridView
description: This article describes how you can remove rows from RadgridView at runtime.
slug: winforms/gridview/rows/removing-rows
tags: removing,rows
published: True
position: 3
previous_url: gridview-rows-removing-rows
---

# Removing Rows

In order to remove a single row from __RadGridView__, you should simply call the the __Remove__ method and pass an object of type __GridViewDataRowInfo__ as an argument.

#### Remove Row

<snippet id='gridview-removingrows-removerow-cs' />
<snippet id='gridview-removingrows-removerow-vb' />

If you want to remove a row at a specific position, call __RemoveAt__ method and pass the row index.

#### Remove Row With Index

<snippet id='gridview-removingrows-removerowat-cs' />
<snippet id='gridview-removingrows-removerowat-vb' />

As to removing all rows, make a loop and remove the rows with the __RemoveAt__ method. Note: If your __RadGridView__ is bound to a __BindingList__, the __BindingList__ will be updated automatically. However, if __RadGridView__ is bound to data set, you should call the __Update__ method. Here is an example with the NorthWind data set and its `carsTableAdapter`

#### Update Adapter

<snippet id='gridview-removingrows-callingupdate-cs' />
<snippet id='gridview-removingrows-callingupdate-vb' />

An alternative to removing all the rows would be to use the __Clear__ method of the Rows collection as it will be a more efficient solution since the grid's events will be suspended and you will write less code:

#### Clearing Rows

<snippet id='gridview-removingrows-clearrows-cs' />
<snippet id='gridview-removingrows-clearrows-vb' />

# See Also

* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})
* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})
* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})
* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})
* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})
* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})
* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})
* [New Row]({%slug winforms/gridview/rows/new-row%})

