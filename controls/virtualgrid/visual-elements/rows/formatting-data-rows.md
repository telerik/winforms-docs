---
title: Formatting Data Rows
page_title: Formatting Data Rows - RadVirtualGrid
description: Use the RowFormatting event to apply custom formatting to RadVirtualGrid's data rows.
slug: winforms/virtualgrid/rows/formatting-data-rows
tags: virtualgrid, rows, formatting
published: True
position: 0
---

# Formatting Data Rows

Use the __RowFormatting__ event to apply custom formatting to RadVirtualGrid's data rows. The code snippet below demonstrates changing the __ForeColor__, __BackColor__ and __GradientStyle__ in all data rows where the cell value in the *ContactTitle* column is *Owner*:

![WinForms RadVirtualGrid Formatting Data Rows](images/virtualgrid-cells-formatting-data-rows001.png)

<snippet id='virtualgrid-virtualgridformattingrows-formattingrows-cs' />
<snippet id='virtualgrid-virtualgridformattingrows-formattingrows-vb' />



>caution Due to the UI virtualization in __RadVirtualGrid__, row elements are created only for currently visible rows and are being reused during operations like scrolling, filtering, sorting and so on. In order to prevent applying the formatting to other columns' row elements (because of the row reuse) all customization should be reset for the rest of the row elements.

# See Also
* [Alternating Row Color]({%slug winforms/virtualgrid/rows/alternating-row-colors%})

* [Formatting System Rows]({%slug winforms/virtualgrid/rows/formatting-system-rows%})

* [Pinned Rows]({%slug winforms/virtualgrid/rows/pinned-rows%})

* [Resizing Rows Programmatically]({%slug winforms/virtualgrid/rows/resizing-rows-programmatically%})

* [System Rows]({%slug winforms/virtualgrid/rows/system-rows%})

