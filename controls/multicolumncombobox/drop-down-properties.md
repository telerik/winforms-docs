---
title: Drop Down Properties
page_title: Drop Down Properties - RadMultiColumnComboBox
description: RadMultiColumnComboBox is a special case of combo box control with RadGridView integrated in its drop-down.
slug: winforms/multicolumncombobox/drop-down-properties
tags: drop,down,properties
published: True
position: 7
previous_url: multicolumncombobox-drop-down-properties
---

# Drop Down Properties

This article lists all important properties that are relevant for the drop down in **RadMultiColumnComboBox**.

## DropDownWidth

The **DropDownWidth** property gets or sets the width of the of the drop-down portion of **RadMultiColumnComboBox**.

#### Setting the DropDownWidth property

<snippet id='multicolumncombobox-multicolumncombobox1-dropdownheight-cs' />
<snippet id='multicolumncombobox-multicolumncombobox1-dropdownheight-vb' />



>caption Figure 1: DropDownWidth

![WinForms RadMultiColumnComboBox DropDownWidth](images/multicolumncombobox-drop-down-properties001.png)

## DropDownHeight

The **DropDownHeight** property gets or sets the height in pixels of the drop-down portion of **RadMultiColumnComboBox**.

#### Setting the DropDownHeight property

<snippet id='multicolumncombobox-multicolumncombobox1-dropdownwidth-cs' />
<snippet id='multicolumncombobox-multicolumncombobox1-dropdownwidth-vb' />



>caption Figure 2: DropDownHeight

![WinForms RadMultiColumnComboBox DropDownHeight](images/multicolumncombobox-drop-down-properties002.png)

## AutoSizeDropDownToBestFit

It determines whether the drop-down portion of the control will be auto-sized to best fit all columns. The __DropDownWidth__ property must be set to its default value (-1) to allow this setting to work properly.

>caption Figure 3: AutoSizeDropDownToBestFit

![WinForms RadMultiColumnComboBox AutoSizeDropDownToBestFit](images/multicolumncombobox-drop-down-properties003.png)

#### AutoSizeDropDownToBestFit

The **AutoSizeDropDownToBestFit** property determines whether the drop-down portion of the control will be auto-sized to best fit all columns. The DropDownWidth property must be set to its default value (-1) to allow this setting to work properly.

#### Autosize the drop down and best-fitting columns

<snippet id='multicolumncombobox-multicolumncombobox1-autosizedropdowntobestfit-cs' />
<snippet id='multicolumncombobox-multicolumncombobox1-autosizedropdowntobestfit-vb' />



## AutoSizeDropDownColumnMode

You can customize the auto-size execution of the algorithm by setting the __AutoSizeDropDownColumnMode__ property:

* __BestFitColumnMode.None__: The column width does not automatically adjust.

* __BestFitColumnMode.AllCells__: The column width adjusts to fit the contents all cells in the control.

* __BestFitColumnMode.DisplayedDataCells__: The column width adjusts to fit the contents of the displayed data cells.     

* __BestFitColumnMode.HeaderCells__: The column width adjusts to fit the contents of the header cell.

* __BestFitColumnMode.FilterCells__: The column width adjusts to fit the contents of the filter cell.

* __BestFitColumnMode.SummaryRowCells__: The column width adjusts to fit the contents of the summary row cell.

* __BestFitColumnMode.SystemCells__: The column width adjusts to fit the contents of the system cells.

* __BestFitColumnMode.DisplayedCells__: The column width adjusts to fit the contents of the displayed cells.
