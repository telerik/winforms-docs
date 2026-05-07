---
title: GridViewDecimalColumn
page_title: GridViewDecimalColumn - WinForms GridView Control
description: WinForms GridViewDecimalColumn allows decimal data to be displayed and edited.
slug: winforms/gridview/columns/column-types/gridviewdecimalcolumn
tags: gridviewdecimalcolumn
published: True
position: 9
previous_url: gridview-columns-gridviewdecimalcolumn
---

# GridViewDecimalColumn

__GridViewDecimalColumn__ allows decimal data to be displayed and edited. __GridViewDecimalColumn__ can be bound to fields of any numeric type. 

![WinForms RadGridView GridViewDecimalColumn](images/gridview-columns-gridviewdecimalcolumn001.png)

#### Add GridViewDecimalColumn to the grid.

<snippet id='gridview-gridviewdecimalcolumn1-addingdecimalcolumn-cs' />
<snippet id='gridview-gridviewdecimalcolumn1-addingdecimalcolumn-vb' />

## Setting a default value for empty cells

You may provide a default value using the following code:

<snippet id='gridview-gridviewdecimalcolumn1-settingthedefaultvalue-cs' />
<snippet id='gridview-gridviewdecimalcolumn1-settingthedefaultvalue-vb' />

##  Disable the up and down buttons of the spin editor

The code below demonstrates how you can disable the up and down arrow buttons. Using the commented code you can completely hide them.

<snippet id='gridview-gridviewdecimalcolumn1-showupdownbuttons-cs' />
<snippet id='gridview-gridviewdecimalcolumn1-showupdownbuttons-vb' />

## Setting decimal places

The rich API of RadGridView allows you to define one value for the decimal places that should be shown in the spin editor of the column and another value for the cells of the column.

__Setting decimal places to the spin editor__

You can define how many places after the decimal point the value in the spin editor should have by setting the __DecimalPlaces__ property of GridViewDecimalColumn:

<snippet id='gridview-gridviewdecimalcolumn1-decimalplaceseditor-cs' />
<snippet id='gridview-gridviewdecimalcolumn1-decimalplaceseditor-vb' />

__Setting decimal places to the column cells__

In order to define how the values should be displayed by the cells of the GridViewDecimalColumn in the sense of their decimal places, we should set the __FormatString__ property of the column:

<snippet id='gridview-gridviewdecimalcolumn1-decimalplacescell-cs' />
<snippet id='gridview-gridviewdecimalcolumn1-decimalplacescell-vb' />

>note For a list of the standard numeric format strings, see [Standard Numeric Format Strings](http://msdn.microsoft.com/en-us/library/dwhawy9k.aspx)
>

# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

* [How to Skip Rounding Decimal Values in GridView]({%slug skip-decimal-rounding-in-gridview%})

