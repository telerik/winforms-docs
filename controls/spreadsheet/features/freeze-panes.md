---
title: Freeze Panes
page_title: Freeze Panes - WinForms Spreadsheet Control
description: WinForms Spreadsheet offers Freeze Panes feature so specific rows and columns of the spreadsheet remains visible at all times.
slug: radspreadsheet-features-freeze-panes
tags: freeze,panes
published: True
position: 2
---

# Freeze Panes

**RadSpreadsheet** allows the user to open documents that contains 1048576 rows and 16384 columns in a single sheet. But sometimes it is difficult to read and understand very large spreadsheets. When you scroll too far to the right or down, you lose the headings that are located at the top and down the left side of the worksheet. Without the headings, it’s hard to keep track of which column or row of data you are looking at.

To avoid this problem you can use the **Freeze Panes** feature so specific rows and columns of the spreadsheet remains visible at all times. If you have a company budget, for example, you may want to see the months and the budget items at all times:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 001](images/spreadsheet-features-freeze-panes001.png)

In the scenario shown above the dark lines shows where the panes are frozen. If you scroll up or down the cells above the dark line will stay frozen and will not move, but the cells below it will be scrolled. If you scroll left or right, the column A will stay frozen and the cells on the right from the dark line will be scrolled.

## Freeze Panes

You can achieve this behavior using the **FreezePanes()** method of the active worksheet editor. The method takes as parameter the cell you want to be the top left cell of the scrollable part of the document, which is B8 in the example above, and freeze.

The following code will produce freeze panes like the example below:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 002](images/spreadsheet-features-freeze-panes002.png)

#### Freeze Panes

{{source=..\SamplesCS\Spreadsheet\FreezePanes.cs region=FreezePanes}} 
{{source=..\SamplesVB\Spreadsheet\FreezePanes.vb region=FreezePanes}}

````C#
            
Telerik.WinForms.Controls.Spreadsheet.Worksheets.RadWorksheetEditor worksheetEditor = this.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor;
worksheetEditor.FreezePanes(new Telerik.Windows.Documents.Spreadsheet.Model.CellIndex(4, 1));

````
````VB.NET
Dim worksheetEditor As Telerik.WinForms.Controls.Spreadsheet.Worksheets.RadWorksheetEditor = Me.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor
worksheetEditor.FreezePanes(New Telerik.Windows.Documents.Spreadsheet.Model.CellIndex(4, 1))

````  
{{endregion}} 

>note Note that the cell you want to freeze have to be visible at the moment you freeze.

If you want to freeze panes so there are only two panes you have to freeze using a cell index located at the top or left edge of the visible area. For example if you want to split visible area vertically like shown on the image below you have to freeze on cell F1:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 003](images/spreadsheet-features-freeze-panes003.png)

But if you want to split the visible area horizontally you like shown on the image bellow you have to freeze on cell A8:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 004](images/spreadsheet-features-freeze-panes004.png)

Here is an example showing what happens when frozen panes splits merged cells:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 005](images/spreadsheet-features-freeze-panes005.png)

Here is the same scenario but when scrolled with one cell to the right:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 006](images/spreadsheet-features-freeze-panes006.png)

## Unfreeze Panes

To unfreeze panes simply you need to use the **UnfreezePanes**() method of the **RadWorksheetEditor**:

#### Unfreeze Panes

{{source=..\SamplesCS\Spreadsheet\FreezePanes.cs region=UnfreezePanes}} 
{{source=..\SamplesVB\Spreadsheet\FreezePanes.vb region=UnfreezePanes}}

````C#
            
this.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.UnfreezePanes();

````
````VB.NET
Me.radSpreadsheet1.SpreadsheetElement.ActiveWorksheetEditor.UnfreezePanes()

````  
{{endregion}} 

Alternatively, you can freeze/unfreeze panes from the **RadSpreadsheetRibbonBar** as well:

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 007](images/spreadsheet-features-freeze-panes008.png)

![WinForms RadSpreadsheet spreadsheet-features-freeze-panes 007](images/spreadsheet-features-freeze-panes007.png)

 
          
