---
title: Tree Lines and Rows
page_title: Tree Lines and Rows - RadTreeView
description: This article shows how you can style RadTreeView using tree lines and alternating row color. 
slug: winforms/treeview/styling-and-appearance/tree-lines-and-rows
tags: tree,lines,and,rows
published: True
position: 1
previous_url: treeview-styling-and-appearance-tree-lines-and-rows
---

# Tree Lines and Rows


To display lines connecting nodes in RadTreeView set the __ShowLines__ property to *true*. Control the appearance of the lines using the __LineStyle__ and __LineColor__ properties. __LineStyle__ is of type __TreeLineStyle__ and includes the following members __Solid__, __Dash__,  __Dot__, __DashDot__, __DashDotDot__.


<snippet id='treeview-gettingstarted-lines-cs' />
<snippet id='treeview-treeviewgettingstarted-lines-vb' />



![WinForms RadTreeView Tree Lines and Rows](images/treeview-styling-and-appearance-tree-lines-and-rows001.png)

To select rows spanning the entire width of RadTreeView (rather than just the node label), set the __FullRowSelect__ property to *true* and __ShowLines__ to *false*. In addition you can set the alternating row color by setting the __AllowAlternatingRowColor__ and __AlternatingRowColor__ properties.

<snippet id='treeview-gettingstarted-alternatingrowcolor-cs' />
<snippet id='treeview-treeviewgettingstarted-alternatingrowcolor-vb' />



![WinForms AlternatingRowColor](images/treeview-styling-and-appearance-tree-lines-and-rows002.png)

# See Also
* [Themes]({%slug winforms/treeview/styling-and-appearance/themes%})

