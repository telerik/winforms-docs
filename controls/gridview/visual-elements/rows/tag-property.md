---
title: Tag property
page_title: Tag property - RadGridView
description: Each row has a Tag property of type object where you can store a custom object.
slug: winforms/gridview/rows/tag-property
tags: tag,property
published: True
position: 9
previous_url: gridview-rows-tag-property
---

# Tag property

Each row has a __Tag__ property of type object where you can store a custom object.

#### Setting the Tag property of a row 

<snippet id='gridview-tagproperty-assigntagproperty-cs' />
<snippet id='gridview-tagproperty-assigntagproperty-vb' />

#### Setting the Tag property of cells in CellFormatting event.

<snippet id='gridview-tagproperty-settagincellformatting-cs' />
<snippet id='gridview-tagproperty-settagincellformatting-vb' />

#### Collapsing all rows with the specified tag 

The most natural place to use the tag is in some of the row/cell events. For example, to make the content of certain cells invisible use the following code:

<snippet id='gridview-tagproperty-hiderowswithspecifiedtag-cs' />
<snippet id='gridview-tagproperty-hiderowswithspecifiedtag-vb' />

>note Cells also have Tag property but it differs substantially from rows one because of the UI Virtualization. Cells are reused and when you scroll the tag value remains unchanged while cell data value is updated.
>

# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

