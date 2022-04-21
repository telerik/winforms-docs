---
title: Cell Types
page_title: Cell Types | RadGridView
description: This article explains what cell type is used considering the column.
slug: winforms/gridview/cells/cell-types
tags: cells types
published: True
position: 0
---

# Cell Types

Depending on the [column type]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%}) **RadGridView** uses different cells in order to display the respective data in the most suitable way. **GridViewDataColumn** is the basic column type from which all data columns derive. Considering the row, the column uses different cell elements, e.g. the header row uses a header cell, the filter row uses a filter cell, the summary row uses a summary cell, etc. 

All columns together with the respective cell type for the different rows are listed in the following tables:

* **GridViewRowHeaderColumn** - the left-most column in the grid. Used to mark whether a row is current/in edit mode/etc.

|RowType|Cell Type|
|----|----|
|GridViewTableHeaderRowInfo|GridTableHeaderCellElement|
|other|GridRowHeaderCellElement|

* **GridViewIndentColumn** - presents indentation between levels in grouping

|RowType|Cell Type|
|----|----|
|GridViewTableHeaderRowInfo|GridHeaderIndentCellElement|
|other|GridIndentCellElement|

* **GridViewGroupColumn** - presents group of columns

|RowType|Cell Type|
|----|----|
|GridViewTableHeaderRowInfo|GridColumnGroupCellElement|

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%}) - base for all data-bound columns

|RowType|Cell Type|
|----|----|
|GridViewTableHeaderRowInfo|GridHeaderCellElement|
|GridViewFilteringRowInfo|GridFilterCellElement|
|GridViewSummaryRowInfo|GridSummaryCellElement|
|GridViewGroupRowInfo|GridGroupContentCellElement| 
|other|GridDataCellElement|

Note that if the row and the respective cell are not specified for a certain column the default ones for the **GridViewDataColumn** are used.

* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridBrowseCellElement|
|GridViewNewRowInfo|GridBrowseCellElement|

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridCalculatorCellElement|
|GridViewNewRowInfo|GridCalculatorCellElement|

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewFilteringRowInfo|GridFilterCheckBoxCellElement|
|GridViewTableHeaderRowInfo|GridCheckBoxHeaderCellElement|
|GridViewDataRowInfo|GridCheckBoxCellElement|
|GridViewNewRowInfo|GridCheckBoxCellElement|

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridColorCellElement|
|GridViewNewRowInfo|GridColorCellElement|


* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridComboBoxCellElement|
|GridViewNewRowInfo|GridComboBoxCellElement|
|GridViewFilteringRowInfo|GridFilterComboBoxCellElement|


* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridCommandCellElement|
|GridViewNewRowInfo|GridCommandCellElement|

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridDateTimeCellElement|
|GridViewNewRowInfo|GridDateTimeCellElement|

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%}) - refer to the **GridViewDataColumn**.

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridHyperlinkCellElement|
|GridViewNewRowInfo|GridHyperlinkCellElement|

* [GridViewImageColumn]({%slug winforms/gridview/columns/column-types/gridviewimagecolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridImageCellElement|
|GridViewNewRowInfo|GridImageCellElement|

* [GridViewMaskBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmaskboxcolumn%}) - refer to the **GridViewDataColumn**.
 
* [GridViewRatingColumn]({%slug winforms/gridview/columns/column-types/gridviewratingcolumn%})

|RowType|Cell Type|
|----|----|
|GridViewDataRowInfo|GridRatingCellElement|

* [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%}) - refer to the **GridViewDataColumn**.  


# See Also
* [Columns]({%slug winforms/gridview/columns/converting-data-types%})
