---
title: Drop down properties
page_title: Drop down properties | UI for WinForms Documentation
description: Drop down properties
slug: winforms/multicolumncombobox/drop-down-properties
tags: drop,down,properties
published: True
position: 1
---

# Drop down properties

## Drop down Width

{{source=..\SamplesCS\MultiColumnComboBox\MultiColumnComboBox1.cs region=dropDownHeight}} 
{{source=..\SamplesVB\MultiColumnComboBox\MultiColumnComboBox1.vb region=dropDownHeight}} 

````C#
            
this.radMultiColumnComboBox1.MultiColumnComboBoxElement.DropDownWidth = 500;

````
````VB.NET
Me.RadMultiColumnComboBox1.MultiColumnComboBoxElement.DropDownWidth = 500

````

{{endregion}}

## Drop down Height

{{source=..\SamplesCS\MultiColumnComboBox\MultiColumnComboBox1.cs region=dropDownWidth}} 
{{source=..\SamplesVB\MultiColumnComboBox\MultiColumnComboBox1.vb region=dropDownWidth}} 

````C#
            
this.radMultiColumnComboBox1.MultiColumnComboBoxElement.DropDownHeight = 500;

````
````VB.NET
Me.RadMultiColumnComboBox1.MultiColumnComboBoxElement.DropDownHeight = 500

````

{{endregion}}

## AutoSizeDropDownToBestFit

It determines whether the drop-down portion of the control will be auto-sized to best fit all columns. The __DropDownWidth__ property must be set to its default value (-1) to allow this setting to work properly.
>caption Fig.1 AutoSizeDropDownToBestFit

![multicolumncombobox-drop-down-properties 001](images/multicolumncombobox-drop-down-properties001.png)

#### AutoSizeDropDownToBestFit

{{source=..\SamplesCS\MultiColumnComboBox\MultiColumnComboBox1.cs region=AutoSizeDropDownToBestFit}} 
{{source=..\SamplesVB\MultiColumnComboBox\MultiColumnComboBox1.vb region=AutoSizeDropDownToBestFit}} 

````C#
this.radMultiColumnComboBox1.AutoSizeDropDownToBestFit = true;

````
````VB.NET
 
Me.RadMultiColumnComboBox1.AutoSizeDropDownToBestFit = True

````

{{endregion}}

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