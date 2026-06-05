---
title: Pinned Columns
page_title: Pinned Columns - RadVirtualGrid
description: RadVirtualGrid columns can be pinned so that the rows appear anchored to the left or right of the grid.
slug: winforms/virtualgrid/columns/pinned-columns
tags: virtualgrid, cells, formatting
published: True
position: 0
---


# Pinned Columns

__RadVirtualGrid__ columns can be pinned so that the rows appear anchored to the left or right of the grid. To pin a column you should use the __SetColumnPinPosition__ method where you just need to pass the column index and the desired pin position.

<snippet id='virtualgrid-pinned-cells-rows-pincolumn-cs' />
<snippet id='virtualgrid-pinned-cells-rows-pincolumn-vb' />



The result is that the column is pined to the right.

![WinForms RadVirtualGrid Pinned Columns](images/virtualgrid-pinned-columns001.png)

To unpin a row you just need to set its pin position to *none*.

<snippet id='virtualgrid-pinned-cells-rows-unpincolumn-cs' />
<snippet id='virtualgrid-pinned-cells-rows-unpincolumn-vb' />



# See Also
* [Resizing Columns Programmatically]({%slug winforms/virtualgrid/columns/resizing-columns-programmatically%})

