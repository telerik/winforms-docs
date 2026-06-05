---
title: Selected rows and Current row
page_title: Selected rows and Current row - WinForms GridView Control
description: Learn what is the difference between the Selected and the Current rows in WinForms GridView.
slug: winforms/gridview/rows/selected-rows-and-current-row
tags: selected,rows,and,current,row
published: True
position: 7
previous_url: gridview-rows-selected-rows-and-current-row
---

# Selected rows and Current row

## IsSelected

The property __IsSelected__ determines whether a row is selected. For example, to select a row programmatically use the following code snippet:

<snippet id='gridview-selectedrowandcurrentrow-selectingarow-cs' />
<snippet id='gridview-selectedrowandcurrentrow-selectingarow-vb' />

All currently selected rows are included in the __SelectedRows__ collection. If you clear this collection and send an update message to __RadGridView__, this will essentially unselect all rows:

<snippet id='gridview-selectedrowandcurrentrow-unselectallrows-cs' />
<snippet id='gridview-selectedrowandcurrentrow-unselectallrows-vb' />

## IsCurrent

The __IsCurrent__ property determines which row is the current one. There can be only one current row or no current row if the __IsCurrent__ property is set to *null*. 

Most themes visualize the current and the selected rows with the same style although technically __IsCurrent__ and __IsSelected__ are independent of one another. The __IsCurrent__ functionality is related to the keyboard support.

Use the following code snippet to remove the current row:

<snippet id='gridview-selectedrowandcurrentrow-currentrow-cs' />
<snippet id='gridview-selectedrowandcurrentrow-currentrow-vb' />

# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

