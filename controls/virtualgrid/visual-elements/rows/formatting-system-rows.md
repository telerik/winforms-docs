---
title: Formatting System Rows
page_title: Formatting System Rows - RadVirtualGrid
description: The RowFormatting event is used to add formatting to grid systems rows - header row, filter row and new row.
slug: winforms/virtualgrid/rows/formatting-system-rows
tags: virtualgrid, rows, formatting
published: True
position: 1
---

# Formatting System Rows

The __RowFormatting__ event is used to add formatting to grid systems rows: header row, filter row and new row. Depending on the __RowIndex__, you can distinguish the system rows:

|RowIndex|VirtualGridRowElement|
|----|----|
|-1|VirtualGridHeaderRowElement|
|-2|VirtualGridNewRowElement|
|-3|VirtualGridFilterRowElement|

>note This would not work properly if the styles of the cells are explicitly set in the theme. For example the TelerikMetro theme explicitly sets the styles of the HeaderRow cells. 


![WinForms RadVirtualGrid Formatting System Rows](images/virtualgrid-rows-formatting-system-rows001.png)

<snippet id='virtualgrid-virtualgridformattingrows-systemrowsformatting-cs' />
<snippet id='virtualgrid-virtualgridformattingrows-systemrowsformatting-vb' />



>caution Due to the UI virtualization in __RadVirtualGrid__, row elements are created only for currently visible rows and are being reused during operations like scrolling, filtering, sorting and so on. In order to prevent applying the formatting to other columns' row elements (because of the row reuse) all customization should be reset for the rest of the row elements.

# See Also
* [Alternating Row Color]({%slug winforms/virtualgrid/rows/alternating-row-colors%})

* [Formatting Data Rows]({%slug winforms/virtualgrid/rows/formatting-data-rows%})

* [Pinned Rows]({%slug winforms/virtualgrid/rows/pinned-rows%})

* [Resizing Rows Programmatically]({%slug winforms/virtualgrid/rows/resizing-rows-programmatically%})

* [System Rows]({%slug winforms/virtualgrid/rows/system-rows%})

