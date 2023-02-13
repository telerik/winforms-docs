---
title: Specific Properties and Methods
page_title: Common Properties - RadGridView
description: Describes the most commonly used properties of RadGridView
slug: winforms/gridview/common-properties
tags: copy/paste/cut
published: True
position: 11
---

# Commonly Used Properties

## RadGridView

|Property|Description|
|---|---|
|__ShowColumnHeaders__|Gets or sets a value indicating whether the column headers are visible.|
|__MasterView__|Gets the top-most GridViewInfo level of the grid. This class contains logical information about visual presentation of flat tabular data in RadGridView.|
|__ChildRows__|This collection contains the Rows that currently visible in the grid. More information is  available [here]({%slug winforms/gridview/rows/rows-vs-childrows%})|
|__IsCurrentRowDirty__|Gets a value indicating whether the current row has changes that are not committed.|
|__StandardTab__|Gets or sets a value indicating whether the TAB key moves the focus to the next control in the tab order rather than moving focus to the next cell in the control.|
|__EnterKeyMode__|Gets or sets value specifying the behavior when the user presses Enter.|
|__AutoSizeRows__|Gets or sets a value indicating whether row height in a RadGridView will expand for multiline cell text.|

## GridViewTemplate

|Property|Description|
|---|---|
|**SelectNewRowAsCurrent**|This property controls if the new row will be made current if there are no other row in the grid.|
|**IsUpdating**|Determines whether the template is in a Begin/End update block.|
|**SelectLastAddedRow**|Gets or sets a value indicating whether the last added row in the RadGridView DataSource will be selected by the control.|
|**NewRowText**|Gets or sets the text displayed in the new row. If this values is null or empty the text from the localization provider will be used.|
|**ShowFilterCellOperatorText**|Gets or sets a value indicating whether the filter operator text should be shown in the filter cell.|
|**HorizontalScrollState**|Gets or sets the display state of grid horizontal scrollbars.|
|**VerticalScrollState**|Gets or sets the display state of grid vertical scrollbars.|
|**AllowDragToGroup**|Gets or sets a value indicating whether user can drag a column header to grouping panel.|
|**AllowColumnReorder**|Gets or sets a value indicating whether user can reorder columns.|
|**AllowRowResize**|Gets or sets a value indicating whether user can resize a row.|
|**AutoUpdateObjectRelationalSource**|Gets or sets a value indicating whether the underlying source in Object-Relational binding should be automatically updated.|
|**Caption**|Gets or sets the caption text.|
|**EnableAlternatingRowColor**|Gets or sets a value indicating whether alternating row color is enabled.|
|**HierarchyDataProvider**|Gets or sets the hierarchy data provider.|
|**SummaryRowGroupHeaders**|Gets the collection containing the summary items placed in the group header.|
|**SummaryRowsBottom**|Gets the collection containing summary rows placed at the bottom of each DataGroup.|
|**SummaryRowsTop**|Gets the collection containing summary rows placed on top of each DataGroup.|
|**CaseSensitive**|Indicates whether string comparisons of data are case-sensitive. |
|**PinnedColumns**|Gets a read-only collection of GridViewColumns containing the pinned rows in this template.|
|**DataMember**|Gets or sets the name of the list or table in the data source for which the <see cref="GridViewTemplate"/> is displaying data.|
|**DataSource**|Gets or sets the data source that the GridViewTemplate is displaying data for.|
|**Templates**|Gets or sets the data source that the GridViewTemplate is displaying data for.|
|**MasterViewInfo**|Gets the master view info.|
|**Groups**|Gets the groups.|
|**Columns**|Gets the columns.|
|**CurrentColumn**|Gets or sets the column containing the current cell in the grid.|
|**Rows**|Gets the rows.|
|**Parent**|Gets or sets the parent GridViewTemplate.|
|**HierarchyLevel**|Gets the level of nesting for this template.|
|**MasterTemplate**|Gets the root template.|
|**ColumnCount**|Gets or sets the number of columns displayed in the current GridViewTemplate.|
|**RowCount**|Gets or sets the number of rows contained in the current GridViewTemplate.|
|**AllowEditRow**|Gets or sets a value indicating whether user can edit rows.|
|**AllowColumnChooser**|Gets or sets a value indicating whether the Column Chooser form is available to the user for this instance of GridViewTemplate|
|**AllowRowReorder**|Gets or sets a value indicating whether the user is able to reorder rows in the grid.|
|**AllowColumnHeaderContextMenu**|Gets or sets a value indicating whether context menu is displayed when user right clicks on a column header.|
|**AllowRowHeaderContextMenu**|Gets or sets a value indicating whether context menu is displayed when user right clicks on a row header.|
|**AllowColumnResize**|Gets or sets a value indicating whether user can resize columns.|
|**AllowCellContextMenu**|Gets or sets a value indicating whether context menu is displayed when user right clicks on a data cell.|
|**AllowAutoSizeColumns**|Gets or sets a value indicating whether user can automatically resize a column to fit its content by double clicking the right border of header cell.|
|**AllowDeleteRow**|Gets or sets a value indicating whether user can delete rows.|
|**AllowAddNewRow**|Gets or sets a value indicating whether the user can add new rows through the grid.|
|**AllowSearchRow**|Gets or sets a value indicating whether the user can search through the grid rows.|
|**EnableSorting**|Gets or sets a value indicating whether the data can be sorted by the end-users.|
|**EnableCustomSorting**|Gets or sets a value indicating whether the data can be sorted programatically.|
|**EnableGrouping**|Gets or sets a value indicating whether the data in the current GridViewTemplate can be grouped by users.|
|**EnableCustomGrouping**|Gets or sets a value indicating whether the data can be grouped programatically.|
|**EnableFiltering**|Gets or sets a value indicating whether the data in the current DataView can be filtered.|
|**EnableCustomFiltering**|Gets or sets a value indicating whether the data can be filtered programatically.|
|**EnableHierarchyFiltering**|Gets or sets a value indicating whether the data can be filtered using parent/child relationship.|
|**AutoSizeColumnsMode**|Gets or sets a value indicating how column widths are determined.|
|**BottomPinnedRowsMode**|Gets or sets a value indicating how bottom pinned rows are layed out.|
|**ShowGroupedColumns**|Gets or sets a value indicating whether the columns by which the data is grouped are visible.|
|**AllowMultiColumnSorting**|Gets or sets a value indicating whether the end-user can sort by more than one column.|
|**ReadOnly**|Gets or sets a value indicating whether the data in this template can be modified.|
|**AutoGenerateColumns**|Gets or sets a value indicating whether columns are created automatically when the DataSource property is set.|
|**FilterDescriptors**|Gets the filter descriptors.|
|**SortDescriptors**|Gets the sort descriptors.|
|**GroupDescriptors**|Gets the group descriptors.|
|**ViewDefinition**|Gets or sets the IGridViewDefinition associated with this template.|
|**AutoExpandGroups**|Sets or gets a value indicating the initial state of group rows when data is grouped.|
|**AddNewRowPosition**|Gets or sets a value indicating the location of the new row in the view template.|
|**SearchRowPosition**|Gets or sets a value indicating the location of the search row in the view template.|
|**ShowRowHeaderColumn**|Gets or sets a value indicating whether the row header column is visible.|
|**ShowColumnHeaders**|Gets or sets a value indicating whether the column headers are visible.|
|**ShowFilteringRow**|Gets or sets a value indicating whether the filtering row should be visible.|
|**ShowHeaderCellButtons**|Gets or sets a value indicating whether the header cell buttons are visible.|
|**ChildViewTabsPosition**|Gets or sets the position to place tabs for child views related with this template.|
|**IsSelfReference**|Gets a value indicating whether this is self reference relation.|
|**IsVirtualRows**|Gets a value indicating whether the ChildRows in hierarchy mode is virtual and hosted outside Rows collection.|
|**ShowTotals**|Gets or sets a value indicating whether total summary rows are visible in grouping.|
|**ShowParentGroupSummaries**|Gets or sets a value indicating whether parent group summary rows are visible in grouping.|
|**ShowChildViewCaptions**|Gets or sets a value indicating whether to show child view captions.|
|**ContainsColumnExpression**|Gets a value indicating if the template contains a column with defined expression.|
|**CloseEditorWhenValidationFails**|Gets or sets a value indicating whether the active editor should be closed when validation process fails.|

## GridViewTableElement

The following table list the properties exposed by __RadGridView.TableElement__:

|Property|Description|
|---|---|
|__RowHeight__|Gets or sets the height of all data rows.|
|__TableHeaderHeight__|Gets or sets the column headers row height.|
|__GroupHeaderHeight__|Gets or sets the group header row height.|
|__FilterRowHeight__|Gets or sets the height of the filter row.|
|__SearchRowHeight__|Gets or sets the height of the search row.|
|__ChildRowHeight__| Gets or sets the row height of the child rows in a hierarchical grid.|
|__CellSpacing__|Gets or sets the cell spacing.|
|__RowSpacing__|Gets or sets the row spacing.|
|__RowHeaderColumnWidth__|Gets or sets the width of the GridViewRowHeaderColumn row header column.|
|__TreeLevelIndent__|Gets or sets the value that determines the indent width among expander primitives in self-reference hierarchy.|
|__GroupIndent__|Gets or sets the width of the GridViewIndentColumn group indent column.|
|__NewRowHeaderImage__|Gets or sets a row header image for new row.|
|__SearchRowHeaderImage__|Gets or sets a row header image for search row.|
|__EditRowHeaderImage__|Gets or sets a row header image for editing current row.|
|__ErrorRowHeaderImage__|Gets or sets a row header image for row with error.|
|__CurrentRowHeaderImage__|Gets or sets a row header image for current row.|
|__MenuThemeName__|Gets or sets a value indicating the name of the theme for the context menu in the current GridTableElement.|
|__ScrollBarThemeName__|Gets or sets a value indicating the name of the theme for the scroll bars in the current GridTableElement.|
|__ShowSelfReferenceLines__|Gets or sets a value indicating whether to show lines in self reference mode.|
|**SkipVisibilityCheck** (introduced in R2 2021 SP1)|Get or set a value indicating whether to skip the control visibility check when ensuring cell/row visibility. If you set it to true, the control will scroll to row/cell even when not visible, when ScrollTo or similar functionality is used.|

## Methods

__Begin/End Update__

The Begin/End Update block should be used when a repeated operation that affects grid layout is performed several times. This block will suspend the grid layout and it will be updated only once when the EndUpdate method is called. An example is available [here]({%slug winforms/gridview/cells/accessing-cells%})

