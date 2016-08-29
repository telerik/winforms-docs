---
title: DataGridView
page_title: DataGridView | Winforms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/datagridview
tags: covert, winforms, datagridview
published: True
position: 1
---

# DataGridView

The DataGridView is converted to [RadGridView]({%slug winforms/gridview%}). The following tables describe which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AllowUserToAddRows|Replaced with|   | 
|AllowUserToDeleteRows|Replaced with|   | 
|AllowUserToOrderColumns|Replaced with|   | 
|AllowUserToResizeColumns|Replaced with|   | 
|AllowUserToResizeRows|Replaced with|   | 
|AlternatingRowsDefaultCellStyle|Produces Error|   | 
|AutoSizeColumnsMode|Produces Error|   | 
|AutoSizeRowsMode|Produces Error|   | 
|BackgroundColor|Replaced with|   | 
|BorderStyle|Removed|   | 
|ClipboardCopyMode|Replaced with|ClipboardCopyMode| 
|ColumnHeadersHeightSizeMode|Removed|   | 
|ColumnHeadersDefaultCellStyle|Produces Error|   | 
|ColumnHeadersHeight|Replaced with|TableElement.TableHeaderHeight| 
|ColumnHeadersVisible|Replaced with|ShowColumnHeaders| 
|CellBorderStyle|Produces Error|   | 
|DataPropertyName|Replace with|FieldName| 
|EditMode|Replaced with|BeginEditMode| 
|EnableHeadersVisualStyles|Removed|   | 
|GridColor|Removed|   | 
|RowHeadersVisible|Replaced with|ShowRowHeaderColumn| 
|RowHeadersWidth|Replaced with|TableElement.RowHeaderColumnWidth| 
|RowHeadersWidthSizeMode|Removed  |   | 
|RowHeadersDefaultCellStyle|Produces Error|   | 
|RowsDefaultCellStyle|Produces Error|   | 
|RowHeadersBorderStyle|Produces Error|   | 
|ScrollBars|Produces Error|   | 
|ShowCellToolTips|Replaced with|ShowItemToolTips| 
|ShowEditingIcon|Removed|   | 
|SelectionMode|Replaced with|SelectionMode| 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|AutoSizeColumnModeChanged|Produces Error|   | 
|AlternatingRowsDefaultCellStyleChanged|Produces Error|   | 
|DataError|Replaced with|DataError| 
|ColumnWidthChanged|Replaced with|ColumnWidthChanged| 
|CellValuePushed|Replaced with|CellValuePushed| 
|CellValueNeeded|Replaced with |CellValueNeeded| 
|AllowUserToAddRowsChanged|Removed|   | 
|AllowUserToDeleteRowsChanged|Removed|   | 
|AllowUserToOrderColumnsChanged|Removed|   | 
|AllowUserToResizeColumnsChanged|Removed|   | 
|AllowUserToResizeRowsChanged|Removed|   | 
|AutoSizeColumnsModeChanged|Removed|   | 
|AutoSizeRowsModeChanged|Removed|   | 
|BackgroundColorChanged|Removed|   | 
|BorderStyleChanged|Removed|   | 
|CellBorderStyleChanged|Removed|   | 
|ColumnHeadersBorderStyleChanged|Removed|   | 
|ColumnHeadersDefaultCellStyleChanged|Removed|   |
|CellContentDoubleClick|Replaced with|CellDoubleClick| 
|ColumnHeadersHeightChanged|Removed|   | 
|ColumnHeadersHeightSizeModeChanged|Removed|   | 
|CellContextMenuStripChanged|Removed|   | 
|CellContextMenuStripNeeded|Removed|   | 
|CellErrorTextChanged |Removed|   | 
|CellErrorTextNeeded|Removed|   | 
|CellLeave|Produces Error|   | 
|CellMouseClick|Produces Error|   | 
|CellMouseDoubleClick|Produces Error|   | 
|CellMouseDown|Produces Error|   | 
|CellMouseEnter|Produces Error|   | 
|CellMouseLeave|Produces Error|   | 
|CellMouseMove|Removed|CellMouseMove| 
|CellValidating|Replaced with|CellValidating| 
|CellValueChanged|Replaced with|CellValueChanged| 
|CellContentClick|Produces Error|   | 
|CellContentDoubleClick |Produces Error|   | 
|CellEnter|Produces Error|   | 
|CellDoubleClick|Replaced with|CellDoubleClick| 
|CellEndEdit|Replaced with|CellEndEdit| 
|CellBeginEdit|Replaced with|CellBeginEdit| 
|CellFormatting|Replaced with|CellFormatting| 
|ColumnAdded|Produces Error|   | 
|ColumnContextMenuStripChanged|Removed|   | 
|ColumnDataPropertyNameChanged|Removed|   | 
|ColumnDefaultCellStyleChanged|Removed|   | 
|ColumnDisplayIndexChanged|Removed|   | 
|ColumnDividerDoubleClick|Removed|   | 
|ColumnDividerWidthChanged|Removed|   | 
|ColumnHeaderMouseClick|Removed|   | 
|ColumnHeaderMouseDoubleClick|Removed|   | 
|ColumnHeaderCellChanged|Removed|   | 
|ColumnMinimumWidthChanged|Removed|   | 
|ColumnNameChanged|Removed|   | 
|ColumnRemoved|Produces Error|   | 
|ColumnSortModeChanged|Removed|   | 
|ColumnStateChanged|Removed|   | 
|ColumnToolTipTextChanged|Removed|   | 
|DataMemberChanged|Removed|   | 
|DataSourceChanged|Removed|   | 
|DefaultCellStyleChanged|Removed|   | 
|EditingControlShowing|Removed|   | 
|EditModeChanged|Removed|   | 
|GridColorChanged|Removed|   | 
|MultiSelectChanged|Produces Error|   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 

|Events|Action|RadControls Equivalent|
|---|---|---|
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 
|   |   |   | 

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})