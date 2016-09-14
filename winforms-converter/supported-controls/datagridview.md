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

|Events|Action|RadControls Equivalent|
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
|ReadOnlyChanged|Removed|   | 
|RowContextMenuStripChanged|Removed|   | 
|RowContextMenuStripNeeded|Removed|   | 
|RowDefaultCellStyleChanged|Removed|   | 
|RowDirtyStateNeeded|Removed|   | 
|RowDividerDoubleClick|Removed|   | 
|RowDividerHeightChanged|Removed|   | 
|CurrentCellDirtyStateChanged|Removed|   | 
|RowHeadersBorderStyleChanged|Removed|   | 
|RowHeadersDefaultCellStyleChanged|Removed|   | 
|RowHeadersWidthChanged|Removed|   | 
|RowHeadersWidthSizeModeChanged|Removed|   | 
|RowHeightInfoNeeded|Removed|   | 
|RowHeightInfoPushed|Removed|   | 
|RowMinimumHeightChanged|Removed|   | 
|RowPostPaint|Removed|   | 
|RowsAdded|Produces Error|   | 
|RowsRemoved |Produces Error|   | 
|RowPrePaint |Removed|   | 
|RowStateChanged|Removed|   | 
|RowUnshared|Removed|   | 
|SortCompare|Removed|   | 
|RowValidating |Replaced with|RowValidating| 
|RowEnter|Removed|   | 
|RowErrorTextChanged|Removed|   | 
|RowErrorTextNeeded|Removed|   | 
|RowHeaderMouseClick|Removed|   | 
|RowHeaderMouseDoubleClick|Removed|   | 
|RowHeaderCellChanged|Removed|   | 
|RowLeave |Removed|   | 
|DataBindingComplete|Replaced with|DataBindingComplete| 
|RowValidated|Replaced with|RowValidated| 
|UserDeletingRow|Replaced with|UserDeletingRow| 
|DefaultValuesNeeded|Replace with |DefaultValuesNeeded| 
|UserAddedRow|Replace with|UserAddedRow|
|UserDeletedRow|Replace with|UserDeletedRow| 
|NewRowNeeded|Replace with |NewRowNeeded| 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|AdjustColumnHeaderBorderStyle(DataGridViewAdvancedBorderStyle dataGridViewAdvancedBorderStyleInput, DataGridViewAdvancedBorderStyle dataGridViewAdvancedBorderStylePlaceholder, bool isFirstDisplayedColumn, bool isLastVisibleColumn)|Produces Error|   |
|AreAllCellsSelected(bool includeInvisibleCells)|Produces Error|   |
|AutoResizeColumns()|Produces Error|   |
|AutoResizeColumns(DataGridViewAutoSizeColumnsModeautoSizeColumnsMode)|Produces Error|   |
|AutoResizeColumn(int columnIndex)|Produces Error|   |
|AutoResizeColumn(int columnIndex, DataGridViewAutoSizeColumnMode autoSizeColumnMode)|Produces Error|   | 
|AutoResizeColumns(DataGridViewAutoSizeColumnsMode.DisplayedCells)|Produces Error|   | 
|AutoResizeRows()|Produces Error|   | 
|AutoResizeRows(DataGridViewAutoSizeRowsMode autoSizeRowsMode)|Produces Error| | 
|AutoResizeRow(int rowIndex, DataGridViewAutoSizeRowMode autoSizeRowMode)|Produces Error|   | 
|AutoResizeRowHeadersWidth(DataGridViewRowHeadersWidthSizeMode rowHeadersWidthSizeMode)|Produces Error|   | 
|AutoResizeRowHeadersWidth(int rowIndex, DataGridViewRowHeadersWidthSizeMode rowHeadersWidthSizeMode)|Produces Error|   | 
|BeginEdit(bool selectAll)|Produces Error|   | 
|CommitEdit(DataGridViewDataErrorContexts context)|Produces Error|   | 
|GetCellCount(DataGridViewElementStates includeFilter)|Produces Error|   | 
|GetCellDisplayRectangle(int columnIndex, int rowIndex, bool cutOverflow)|Produces Error|   | 
|GetColumnDisplayRectangle(int columnIndex, bool cutOverflow)|Produces Error|   | 
|GetRowDisplayRectangle(int rowIndex, bool cutOverflow)|Produces Error|   | 
|HitTest(int x, int y)|Produces Error|   | 
|InvalidateCell(DataGridViewCell dataGridViewCell)|Produces Error|   | 
|InvalidateCell(int columnIndex, int rowIndex)|Produces Error|   | 
|InvalidateColumn(int columnIndex)|Produces Error|   | 
|InvalidateRow(int rowIndex)|Produces Error|   | 
|NotifyCurrentCellDirty(bool dirty)|Produces Error|   | 
|RefreshEdit()|Produces Error|   | 
|Sort(new RowComparer(SortOrder.Ascending))|Produces Error|   | 
|UpdateCellErrorText(int columnIndex, int rowIndex)|Produces Error|   | 
|UpdateCellValue(int columnIndex, int rowIndex)|Produces Error|   | 
|UpdateRowHeightInfo(int rowIndex, bool updateToEnd)|Produces Error|   | 
|UpdateRowErrorText(int rowIndex)|Produces Error|   | 

## TextBoxColumn

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoSizeMode |Produces Error|   | 
|DefaultCellStyle|Produces Error|   | 
|DividerWidth|Removed|   | 
|FillWeight|Removed|   | 
|Frozen |Replaced with|IsPinned| 
|MaxInputLength |Replaced with|MaxLength| 
|MinimumWidth|Replaced with|MinWidth| 
|Resizable|Replaced with|AllowResize| 
|SortMode|Produces Error|   | 
|ToolTipText|Removed|   | 
|Visible|Replaced with|IsVisible| 

## CommandColumn

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoSizeMode |Produces Error|   | 
|DefaultCellStyle|Produces Error|   | 
|DividerWidth|Removed|   | 
|FillWeight|Removed|   | 
|Frozen |Replaced with|IsPinned| 
|Text |Replaced with|DefaultText| 
|MinimumWidth|Replaced with|MinWidth| 
|Resizable|Replaced with|AllowResize| 
|SortMode|Produces Error|   | 
|ToolTipText|Removed|   | 
|Visible|Replaced with|IsVisible| 
|UseColumnTextForButtonValue|Replaced with|UseDefaultText|

## CheckBoxColumn

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoSizeMode |Produces Error|   | 
|DefaultCellStyle|Produces Error|   | 
|DividerWidth|Removed|   | 
|FillWeight|Removed|   | 
|Frozen |Replaced with|IsPinned| 
|MinimumWidth|Replaced with|MinWidth| 
|Resizable|Replaced with|AllowResize| 
|SortMode|Produces Error|   | 
|ToolTipText|Removed|   | 
|Visible|Replaced with|IsVisible| 
|FalseValue|Produces Error|   | 
|FlatStyle|Removed|   | 
|IndeterminateValue|Produces Error|   | 
|TrueValue|Produces Error|   | 
 
## ComboColumn

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoComplete|Produces Error| |
|AutoSizeMode |Produces Error|   | 
|DefaultCellStyle|Produces Error|   | 
|DividerWidth|Removed|   | 
|FillWeight|Removed|   | 
|Frozen |Replaced with|IsPinned| 
|MinimumWidth|Replaced with|MinWidth| 
|Resizable|Replaced with|AllowResize| 
|SortMode|Produces Error|   | 
|ToolTipText|Removed|   | 
|Visible|Replaced with|IsVisible| 
|DisplayStyle|Removed|   | 
|DisplayStyleForCurrentCellOnly|Removed|   | 
|DropDownWidth|Removed|   | 
|FlatStyle |Removed|   | 
|MaxDropDownItems|Removed|   | 
|Sorted |Produces Error|   | 

## LinkColumn

|Properties|Action|RadControls Equivalent|
|---|---|---|
|ActiveLinkColor|Removed|   | 
|AutoSizeMode |Produces Error|   | 
|DefaultCellStyle|Produces Error|   | 
|DividerWidth|Removed|   | 
|FillWeight|Removed|   | 
|Frozen |Replaced with|IsPinned| 
|MinimumWidth|Replaced with|MinWidth| 
|Resizable|Replaced with|AllowResize| 
|SortMode|Produces Error|   | 
|ToolTipText|Removed|   | 
|Visible|Replaced with|IsVisible|  
|LinkColor|Removed|   | 
|LinkBehavior|Removed|   | 
|TrackVisitedState|Removed|   | 
|UseColumnTextForLinkValue |Removed|   | 
|VisitedLinkColor|Removed|   | 
 
## ImageColumn

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoSizeMode |Produces Error|   | 
|DefaultCellStyle|Produces Error|   | 
|DividerWidth|Removed|   | 
|FillWeight|Removed|   | 
|Frozen |Replaced with|IsPinned| 
|MaxInputLength |Replaced with|MaxLength| 
|MinimumWidth|Replaced with|MinWidth| 
|Resizable|Replaced with|AllowResize| 
|SortMode|Produces Error|   | 
|ToolTipText|Removed|   | 
|Visible|Replaced with|IsVisible| 
|Description|Produces Error|   | 
|ImageLayout|Replaced with|ImageLayout| 

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})
