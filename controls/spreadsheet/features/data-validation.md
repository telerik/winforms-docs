---
title: Data Validation
page_title: Data Validation - WinForms Spreadsheet Control
description: Data validation is a feature of WinForms Spreadsheet that helps you define restrictions on what data can be entered in a cell.
slug: radspreadsheet-features-data-validation
tags: data,validation
published: True
position: 4
---

# Data Validation

Data validation is a feature of **RadSpreadsheet** that helps you define restrictions on what data can be entered in a cell. This is achieved by defining data validation rules which consist of a rule type, one or more arguments and a comparison operator for some of the rule types. You can specify messages that users will see before editing a cell or after entering invalid data.

## How to Set Data Validation Rules

You can easily set data validation rules using the data validation dialog which can be shown from the Data tab in the predefined **RadSpreadsheetRibbonBar**.

>caption Figure 1: Data Validation Dialog

![WinForms RadSpreadsheet Data Validation Dialog](images/spreadsheet-features-data-validation001.png)

>note Detailed information on the different validation rules is available in the [Data Validation for SpreadProcessing article](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/features/data-validation).

The dialog contains two other tabs - one allowing to customize the input message that is shown when the cell is selected, and one allowing to change the alert shown when there is an error in the cell.

>important As of **R1 2021 SP2** the [ListDataValidation](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/features/data-validation#listdatavalidationrulecontext) rule is respected in RadSpreadsheet and a drop down list editor is expected to be shown for the respective cells.

## Circle Invalid Data

Data Validation allows you to turn on the option to circle invalid data. This way you can always see if there is any invalid data in your document. You can toggle this option using the ribbon or through code.

Figure 2 shows hot to turn the option on and the result when invalid data is present in the worksheet.

>caption Figure 2: Circle Invalid Data

![WinForms RadSpreadsheet Circle Invalid Data](images/spreadsheet-features-data-validation002.png)

![WinForms RadSpreadsheet Invalid cells](images/spreadsheet-features-data-validation003.png)

Example 1 shows the use of the two methods that toggle this functionality - **CircleInvalidData**() and **ClearInvalidDataCircles**().

#### Example 1: Turn on and off Invalid Data Circles.

{{source=..\SamplesCS\Spreadsheet\FreezePanes.cs region=DataValidation}} 
{{source=..\SamplesVB\Spreadsheet\FreezePanes.vb region=DataValidation}}

````C#
            
if (showCircles)
{
    this.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.CircleInvalidData();
}
else
{
    this.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.ClearInvalidDataCircles();
}

````
````VB.NET
If showCircles Then
    Me.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.CircleInvalidData()
Else
    Me.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.ClearInvalidDataCircles()
End If

````  
{{endregion}} 
