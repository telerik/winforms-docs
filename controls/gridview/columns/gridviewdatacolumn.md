---
title: GridViewDataColumn
page_title: GridViewDataColumn | RadGridView
description: GridViewDataColumn descends from GridViewColumn and is the base class for all data bound column types.
slug: winforms/gridview/columns/column-types/gridviewdatacolumn
tags: gridviewdatacolumn
published: True
position: 2
previous_url: gridview-columns-gridviewdatacolumn, /devtools/winforms/gridview/columns/column-types/gridviewdatacolumn
---

# GridViewDataColumn

**GridViewDataColumn** inherits from [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%}) and is the base class for all column types. Below is a list of the column types that **RadGridView** offers. All of them inherit from the **GridViewDataColumn** and enhance its capabilities:


|Column's type|Data type|
|----|----|
|[GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%})|presents String values|
|[GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})|presents Decimal values|
|[GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})|presents DateTime objects|
|[GridViewTimeSpanColumn]({%slug winforms/gridview/columns/column-types/gridviewtimespancolumn%})|presents TimeSpan objects|
|[GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})|presents Hyperlinks|
|[GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})|presents Colors|
|[GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})|presents Boolean values|
|[GridViewImageColumn]({%slug winforms/gridview/columns/column-types/gridviewimagecolumn%})|presents Images|
|[GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})|represents Calculator|
|[GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})|represents Buttons|
|[GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})|represents File paths|
|[GridViewSparklineColumn]({%slug winforms/gridview-columntypes-sparklinecolumn%})|represents Sparklines|
|[GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})|represents a column whose cells contains comboboxes|
|[GridViewMaskBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmaskboxcolumn%})|represents a column whose cells contain masked text boxes with String values|
|[GridViewRatingColumn]({%slug winforms/gridview/columns/column-types/gridviewratingcolumn%})|represents a column that visualizes the cell's value by using a rating element|
|[GridViewMultiComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmulticomboboxcolumn%})|represents a column that contain multi column combo boxes|


By default, **RadGridView** will generate its columns automatically based on the underlying data source. For example if the column contains string values, **RadGridView** will create a **GridViewTextBoxColumn**, etc. Then, depending on the column's type, **RadGridView** activates an appropriate editor to handle cell's value changes. If you have a **GridViewTextBoxColumn** the editor is **RadTextBoxEditor**. A list with all supported editors is available [here]({%slug winforms/gridview/editors/default-editors%}).

>note **GridViewDataColumn** doesn't have associated editor. Each of the above mentioned column types have a default editor.

|Property|Description|
|---|---|
|**AutoFilterDelay**|Gets or set the value in Milliseconds indicating delay between last key press and filtering operation.|
|**AllowFiltering**|Gets or sets a value indicating whether the user can filter by this column.|
|**AllowGroup**|Gets or sets a value indicating whether the user can group data based on the content of this column.|
|**AllowHide**|Gets or sets value indicating whether the user can hide the column.|
|**AllowReorder**|Gets or sets a value indicating whether the user can reorder this column using the mouse.|
|**AllowResize**|Gets or sets value indicating whether the user can resize the column.|
|**AllowSort**|Gets or sets value indicating whether the user can sort data based on the contents of this column.|
|**AllowSearching**|Gets or sets a value indicating whether the user can search by this column.|
|**AllowNaturalSort**|Gets or sets a value indicating whether clicking on the header cell of this column would allow the user to set natural (no) sort.|
|**AutoEllipsis**|Gets or sets a value which determines whether an ellipsis is shown when the whole text of the cells can not be displayed.|
|**DataTypeConverter**|Gets or sets the data type converter used to convert data between the data source and grid editors.|
|**UseDataTypeConverterWhenSorting**|Gets or sets a value indicating whether the data type converter of this column should be used when sorting.|
|**FilterDescriptor**|Gets or sets the filter descriptor.|
|**DataType**|Gets or sets the data type of the column.|
|**ExcelExportType**|Gets or sets the type of the excel export.|
|**ExcelExportFormatString**|Gets or sets the excel export format string. Note that this format is considered only if ExcelExportType property is set to DisplayFormatType.*Custom*|
|**FormatInfo**|Gets or sets the culture info used when formatting cell values.|
|**FormatString**|Gets or sets the format string applied to the textual content of each cell in the column.|
|**NullValue**|Gets or sets the cell display value corresponding to a cell value of System.DBNull or null.|
|**ReadOnly**|Gets or sets a value indicating whether the user can edit the data in the column's cells.|
|**DataSourceNullValue**|Gets or sets a value to the data source when the user enters a null value into a cell.|
|**DistinctValues**|Gets the distinct values.|
|**DistinctValuesWithFilter**|Gets the distinct values with filter.|
|**HeaderText**|Gets or sets the caption text on the column's header cell.|
|**HeaderTextAlignment**|Gets or sets a value indicating the position of the HeaderText within the header cell.|
|**TextAlignment**|Gets or sets a value indicating the position of the cell content within a column's cells.|
|**DisableHTMLRendering**| Disable or enable HTML-like text rendering in the column.|
|**WrapText**|Gets or sets value indicating whether the text in each cell in the column should be wrapped.|


# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})
* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})
* [Overview]({%slug winforms/gridview/columns%})
* [Converting Data Types]({%slug winforms/gridview/columns/converting-data-types%})
* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})
* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})
* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})
* [Pinning and Unpinning Columns]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%})

