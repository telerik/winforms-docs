---
title: UI Virtualization
page_title: UI Virtualization | RadVirtualGrid
description: This article shows what is UI Virtualization and how it is used in RadVirtualGrid.
slug: winforms/virtualgrid/ui-virtualization
tags: virtualgrid, ui, virtualization
published: True
position: 2
---

# UI Virtualization

__RadVirtualGrid__ uses virtualization for its cells and rows. Since not all data row objects can be visible at the same time, a visual elements (which are large objects) are created only for the currently visible rows/cells in the __RadVirtualGrid__. These visual elements are reused during scrolling, filtering and other operations with the grid, meaning dramatically improved performance and memory footprint as only a small number of visual items are created.

Because of the virtualization you cannot access UI elements at design time or directly by using the Element tree or a property. Instead, you have to use formatting events. These events in __RadVirtualGrid__ are __CellFormatting__ for all cells and __RowFormatting__ for all rows. Detailed information about these events can be found in the following articles:

* [Data Rows]({%slug winforms/virtualgrid/rows/formatting-data-rows%})
* [Data Cells]({%slug winforms/virtualgrid/cells/formatting-data-cells%})
* [System Rows]({%slug winforms/virtualgrid/rows/formatting-system-rows%})
* [System Cells]({%slug winforms/virtualgrid/cells/formatting-system-cells%})

# See Also
* [Element Hierarchy]({%slug winforms/virtualgrid/cells/element-hierarchy%})

* [Key Features]({%slug winforms/virtualgrid/cells/formatting-data-cells%})

* [Row Types]({%slug winforms/virtualgrid/fundamentals/row-types%})

