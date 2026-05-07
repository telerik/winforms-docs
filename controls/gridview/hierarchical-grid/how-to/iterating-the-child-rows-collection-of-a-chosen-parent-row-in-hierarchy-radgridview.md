---
title: Iterating the child rows collection of a chosen parent row in hierarchy RadGridView
page_title: Iterating the child rows collection of a chosen parent row in hierarchy RadGridView - RadGridView
description: Iterate the child rows collection of a chosen parent row in hierarchy RadGridView.
slug: winforms/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview
tags: iterating,the,child,rows,collection,of,a,chosen,parent,row,in,hierarchy,radgridview
published: True
position: 2
previous_url: gridview-hirarchical-grid-how-to-iterating-the-child-rows-collection-of-a-chosen-parent-row
---

# Iterating the child rows collection of a chosen parent row in hierarchy RadGridView

In order to iterate all child rows in RadGridView, you need to change the ActiveView of each hierarchy row to each of the available Views. This is needed as the grid will create the child rows for the sibling views (tabs in the detail cell) only after they are requested - when the tab is clicked.

<snippet id='gridview-howto-iteratechildrows-cs' />
<snippet id='gridview-howto1-iteratechildrows-vb' />

# See Also
* [Accessing Child Templates]({%slug winforms/gridview/hierarchical-grid/how-to/accessing-child-templates%})

* [Applying formatting only to cells in a child template]({%slug winforms/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template%})

* [Expanding all rows]({%slug winforms/gridview/hierarchical-grid/how-to/expanding-all-rows%})

* [Resizing child GridViewInfo]({%slug winforms/gridview/hierarchical-grid/how-to/resizing-child-gridviewinfo%})

