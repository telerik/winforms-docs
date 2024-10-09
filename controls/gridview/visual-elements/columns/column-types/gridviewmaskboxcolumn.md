---
title: GridViewMaskBoxColumn
page_title: GridViewMaskBoxColumn - WinForms GridView Control
description: WinForms GridViewMaskBoxColumn  allows restricted editing of text data.
slug: winforms/gridview/columns/column-types/gridviewmaskboxcolumn
tags: gridviewmaskboxcolumn
published: True
position: 12
previous_url: gridview-columns-gridviewmaskboxcolumn
---

# GridViewMaskBoxColumn

__GridViewMaskBoxColumn__ allows *restricted* editing of text data. Each cell in __GridViewMaskBoxColumn__ column displays the text of the cell __Value__ property according to the settings of the __TextAlignment__ (default is __ContentAlignment.MiddleLeft__), __WrapText__ (default is *false*) and __FormatString__ properties. 

![WinForms RadGridView GridViewMaskBoxColumn](images/gridview-columns-gridviewmaskboxcolumn001.png)

You can set a *mask* to GridViewMaskBoxColumn using its __Mask__ and __MaskType__ properties. You can find further information about the possible values for these properties in RadMaskEditBox documentation section.

>note You can use **FormatString** property to format the values of **GridViewMaskBoxColumn** cells not currently opened for editing.

#### Add GridViewMaskBoxColumn to the grid.

{{source=..\SamplesCS\GridView\Columns\GridViewMaskBoxColumn1.cs region=addMaskBoxColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewMaskBoxColumn1.vb region=addMaskBoxColumn}} 

````C#
GridViewMaskBoxColumn maskBoxColumn = new GridViewMaskBoxColumn();
maskBoxColumn.Name = "Price";
maskBoxColumn.FieldName = "UnitPrice";
maskBoxColumn.HeaderText = "Unit Price";
maskBoxColumn.MaskType = MaskType.Numeric;
maskBoxColumn.Mask = "C";
maskBoxColumn.TextAlignment = ContentAlignment.BottomRight;
maskBoxColumn.FormatString = "{0:C}";
maskBoxColumn.DataType = typeof(decimal);
radGridView1.MasterTemplate.Columns.Add(maskBoxColumn);

````
````VB.NET
Dim maskBoxColumn As New GridViewMaskBoxColumn()
maskBoxColumn.Name = "Price"
maskBoxColumn.FieldName = "UnitPrice"
maskBoxColumn.HeaderText = "Unit Price"
maskBoxColumn.MaskType = MaskType.Numeric
maskBoxColumn.Mask = "C"
maskBoxColumn.TextAlignment = ContentAlignment.BottomRight
maskBoxColumn.FormatString = "{0:C}"
maskBoxColumn.DataType = GetType(Decimal)
RadGridView1.MasterTemplate.Columns.Add(maskBoxColumn)

````

{{endregion}} 

>note The **GridViewMaskBoxColumn** also supports null values and this functionality can be enabled by setting the **EnableNullValueInput** property of the column to *true*. The default value of the property is set to *false*. Once this is enabled you can use `Ctrl + Delete` or `Ctrl + 0` to clear the value in the editor.

# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

