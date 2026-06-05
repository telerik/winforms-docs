---
title: Formatting System Cells
page_title: Formatting System Cells - RadVirtualGrid
description: This article describes how one can format the header, filter and new row cells. 
slug: winforms/virtualgrid/cells/formatting-system-cells
tags: virtualgrid, cells, system, formatting
published: True
position: 1
---

# Formatting System Cells

The __CellFormatting__ event is used to add formatting to grid systems cells: header cells, filter cells and new row cells. Depending on the __RowIndex__, you can distinguish the system cells:

|RowIndex|VirtualGridRowElement|
|----|----|
|-1|VirtualGridHeaderRowElement|
|-2|VirtualGridNewRowElement|
|-3|VirtualGridFilterRowElement|

For example, the code sample below changes the __ForeColor__, __BackColor__ and __GradientStyle__  for the *ContactTitle* header cell, *CompanyName* new row cell and *City* filter cell:

![WinForms RadVirtualGrid Formatting System Cells](images/virtualgrid-cells-formatting-system-cells001.png)

<snippet id='virtualgrid-virtualgridformattingcells-systemcellsformatting-cs' />
<snippet id='virtualgrid-virtualgridformattingcells-systemcellsformatting-vb' />



>caution Due to the UI virtualization in __RadVirtualGrid__, cell elements are created only for currently visible cells and are being reused during operations like scrolling, filtering, sorting and so on. In order to prevent applying the formatting to other columns' cell elements (because of the cell reuse) all customization should be reset for the rest of the cell elements.

# See Also
* [Creating custom cells]({%slug winforms/virtualgrid/cells/creating-custom-cells%})

* [Formatting Data Cells]({%slug winforms/virtualgrid/cells/formatting-data-cells%})

* [ToolTips]({%slug winforms/virtualgrid/cells/tooltips%})

