---
title: Applying formatting only to cells in a child template
page_title: Applying formatting only to cells in a child template - RadGridView
description: This article shows how you can apply formatting only to cells in a child template.
slug: winforms/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template
tags: applying,formatting,only,to,cells,in,a,child,template
published: True
position: 3
previous_url: gridview-hirarchical-grid-how-to-applying-formatting-only-to-cells-in-a-child-template
---

# Applying formatting only to cells in a child template

If the parent of the *view template* is not null, the cell element is located in a child template. 

### Example 1

This idea is used in the code snippet below so that the BackColor of the cells located only in the child templates is changed:

#### Changing the cells BackColor for cells located in a child template 

<snippet id='gridview-howto-example1-cs' />
<snippet id='gridview-howto1-example1-vb' />

###  Example 2

You can use the following code snippet to change the header height of the first level child template:

#### Changing the child template header row height 

<snippet id='gridview-howto-example2-cs' />
<snippet id='gridview-howto1-example2-vb' />

# See Also
* [Accessing Child Templates]({%slug winforms/gridview/hierarchical-grid/how-to/accessing-child-templates%})

* [Expanding all rows]({%slug winforms/gridview/hierarchical-grid/how-to/expanding-all-rows%})

* [Iterating the child rows collection of a chosen parent row in hierarchy RadGridView]({%slug winforms/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview%})

* [Resizing child GridViewInfo]({%slug winforms/gridview/hierarchical-grid/how-to/resizing-child-gridviewinfo%})

