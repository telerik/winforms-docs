---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms HeatMap Control
description: Get familiar with the public API of the RadHeatMap WinForms control.
slug: heatmap-properties-methods-events
tags: heatmap, properties, methods, events
published: True
position: 7
---

# Properties, Methods and Events

## RadHeatMap's Properties

|Property|Description|
|----|----|
|**DefaultSize**|Gets the default size of the RadHeatMap when a new instance is initialized.|
|**Definition**|Gets or sets the heat map definition. The definition is responsible for managing the data and displaying the data in rows and columns.|
|**RowHeadersPosition**|Gets or sets the position of the row headers.| 
|**ColumnHeadersPosition**|Gets or sets the position of the column headers.| 
|**AllowSelection**|Gets or sets a value indicating whether the selection is enabled.| 
|**AllowHotTracking**|Gets or sets a value indicating whether the hot tracking behavior is enabled.| 
|**SelectedCellIndex**|Gets or sets the selected cell index.| 
|**SelectedDataItem**|Gets the selected data item based on the selected cell index.| 
|**HeaderCellFont**|The font used for header cells.| 
|**DescriptionContent**|Gets or sets the content of the description cell located in the corner between row and column header cells. Note that the description is not shown if row or column headers are hidden.| 
|**ColumnHeaderHeight**|Gets or sets the height of column headers.| 
|**RowHeaderWidth**|Gets or sets the width of row headers.| 
|**HeaderCellBackColor**|Gets or sets the header cell background color.| 
|**HeaderCellForeColor**|Gets or sets the header cell foreground color.| 
|**HeaderCellHoverBackColor**|Gets or sets the header cell mouse over background color.| 
|**HeaderCellHoverForeColor**|Gets or sets the header cell mouse over foreground color.| 
|**HeaderCellBorderColor**|Gets or sets the header border color.|
|**HeaderCellBorderWidth**|Gets or sets the header border width.| 
|**HoveredCellBorderColor**|Gets or sets the hovered cell border color.| 
|**HoveredCellBorderWidth**|Gets or sets the hovered cell border width.| 
|**SelectedCellBorderColor**|Gets or sets the selected cell border color.| 
|**SelectedCellBorderWidth**|Gets or sets the border width of selected cell.| 
|**WrapCellText**|Gets or sets a value indicating whether to wrap the text of the cells.| 
|**WrapHeaderCellText**|Gets or sets a value indicating whether to wrap the text of row and column header cells.| 
|**CellTextAlignment**|Gets or sets the text alignment of the cells.| 
|**HeaderCellTextAlignment**|Gets or sets the text alignment in the header cells.| 
|**Title**|Gets or sets the heat map title.|
|**ToolTipDisplayMode**|Gets or sets a value indicating how to display tool tips.| 
|**ToolTip**|Gets or sets the tool tip. It is displayed when the __RadHeatMapElement.ToolTipDisplayMode__ is __ToolTipDisplayMode.ToolTip__.| 
|**ScreenTipElement**|Gets or sets the screen tip element. It is displayed when the __RadHeatMapElement.ToolTipDisplayMode__ is __ToolTipDisplayMode.ScreenTip__.|
|**DisplayCellText**|Gets or sets a value indicating whether to paint the cell values.| 
|**EmptyCellText**|Gets or sets the text and tool tip text shown in empty cells(with no data or null values).| 
|**CellTextFormat**|Gets or sets the cell text format string.| 
|**ColumnHeaderTextFormat**|Gets or sets the column header cell text format string.| 
|**RowHeaderTextFormat**|Gets or sets the row header cell text format string.| 


## RadHeatMap's Methods

|Method|Description|
|----|----|
|**UpdateCachedBounds**|Updates the bounds of the row, column header cells and data cells.|

## RadHeatMap's Events

|Event|Description|
|----|----|
|**CellPainting**|Occurs when a cell is about to be painted.|
|**CellPainted**|Occurs when a cell has been painted.|
|**HeaderCellPainting**|Occurs when a row/column header cell is about to be painted.|
|**HeaderCellPainted**|Occurs when a row/column header cell has been painted.|
|**HoveredCellIndexChanged**|Occurs when the hovered cell index has changed. For column header cells the __CellIndex.RowIndex__ is -1. For row header cells the __CellIndex.ColumnIndex__ is -1.|
|**SelectedCellIndexChanging**|Occurs when the selected cell index is about to be changed. Cancellable.|
|**SelectedCellIndexChanged**|Occurs when the selected cell index has changed.|
|**ScreenTipShowing**|Occurs when the screen tip is about to be shown. Cancellable.|
|**ToolTipShowing**|Occurs when the tool tip is about to be shown. Cancellable.|

## HeatMapElement's Properties

|Property|Description|
|----|----|
|**AreColumnHeadersShown**|Gets a value indicating whether the column headers are shown. To hide the column headers, set the __ColumnHeadersPosition__ property to __ColumnHeadersPosition.None__|
|**AreRowHeadersShown**|Gets a value indicating whether the row headers are shown. To hide the row headers, set the __RowHeadersPosition__ property to __RowHeadersPosition.None__|
|**TitleElement**|Gets the title element.| 
|**TitleStack**|Gets the StackLayoutElement that holds the title.|


## HeatMapDefinition's Properties

The __HeatMapDefinition__ serves as the base class for definition types: CategoricalDefinition, HorizontalDefinition, and VerticalDefinition. There is another intermediate base class called __MemberDefinitionBase__, which is derived from the HeatMapDefinition. The HorizontalDefinition and VerticalDefinition further inherit from the MemberDefinitionBase class.

|Property|Description|
|----|----|
|**RowsCount**| This property retrieves the number of rows in the RadHeatMap control.|
|**ColumnsCount**|This property returns the number of columns in the RadHeatMap control.|

## HeatMapDefinition's Methods

|Method|Description|
|----|----|
|**GetValue(CellIndex cellIndex)**|Gets the value of a cell by given __CellIndex__ object.|
|**GetValue(int rowIndex, int columnIndex)**|Gets the value of a cell by a given row and column index.|
|**GetDataItem(CellIndex cellIndex)**|Gets __HeatMapDataItem__ of a cell by given __CellIndex__ object.|
|**GetDataItem(int rowIndex, int columnIndex)**|Gets __HeatMapDataItem__ of a cell by given row and column index.|

## CellIndex's Properties

|Property|Description|
|----|----|
|**RowIndex**| Gets the row index of the cell.|
|**ColumnIndex**| Gets the column index of the cell.|
|**IsDataCell**| Determine whether the current cell represents a data cell.|
|**IsHeaderCell**| Determine whether the current cell represents a header cell.|
|**IsEmpty**| Determine whether the current cell represents an empty cell.|

## See Also

* [Structure]({%slug heatmap-structure%}) 
* [Getting Started]({%slug heatmap-getting-started%})
* [Data Binding]({%slug heatmap-data-binding%})

