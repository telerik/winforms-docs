---
title: Reordering Rows
page_title: Reordering Rows - WinForms GridView Control
description: WinForms GridView supports row reordering and it can be done by the user at run time. 
slug: winforms/gridview/end-user-capabilities/reordering-rows
tags: reordering,rows
published: True
position: 6
previous_url: gridview-rows-reordering-rows
---

# Reordering Rows

RadGridView supports row reordering and it can be done by the user at runtime. The user just has to drag the desired row at the desired position between two other rows and drop it there. In the RadGridView control, the RadGridView.AllowRowReorder property value determines whether users can move rows to different positions.
      
>important 
* Row reordering is only available for grids in unbound mode.
* After row reordering is enabled any sorting, grouping and filtering operations will be cleared and will not be available

>note The __RowsChanged__ event will be fired when reorder operation is performed.


![gridview-rows-reordering-rows 001](images/gridview-rows-reordering-rows001.gif)
# See Also
* [Column Chooser]({%slug winforms/gridview/end-user-capabilities/column-chooser%})

* [Editing Behavior]({%slug winforms/gridview/end-user-capabilities/editing-behavior%})

* [Filtering]({%slug winforms/gridview/end-user-capabilities/filtering%})

* [Grouping]({%slug winforms/gridview/end-user-capabilities/grouping%})

* [Keyboard Support]({%slug winforms/gridview/end-user-capabilities/keyboard-support%})

* [Printing Support]({%slug winforms/gridview/end-user-capabilities/printing-support%})

* [Resizing Columns]({%slug winforms/gridview/end-user-capabilities/resizing-columns%})

* [Scrolling Support]({%slug winforms/gridview/end-user-capabilities/scrolling-support%})

