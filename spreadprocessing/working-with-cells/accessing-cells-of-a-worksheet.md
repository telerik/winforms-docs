---
title: Accessing Cells of a Worksheet
page_title: Accessing Cells of a Worksheet | UI for WinForms Documentation
description: Accessing Cells of a Worksheet
slug: winforms/spreadprocessing/working-with-cells/accessing-cells-of-a-worksheet
tags: accessing,cells,of,a,worksheet
published: True
position: 2
previous_url: spreadprocessing-working-with-cells-accessing-cells-of-worksheet
---

# Accessing Cells of a Worksheet

Each worksheet consists of cells organized in rows and columns. In order to manipulate the data and properties of the cells, you need to create and use an instance of the __CellSelection__ class.

## 

As a worksheet contains a considerable number of rows and columns, it is unusual to perform an operation to the whole range of cells. Typically, you would like to set the value of a single cell or, for example, apply formatting to a range of cells. In order to perform an operation on a specified range of cells you need to create a __CellSelection__ object that holds the desired cell region and then invoke the appropriate action for this __CellSelection__ instance. This class exposes a rich API that allows you to get, set and clear cell's value, colors, borders and style.
        

The document model offers multiple ways to create a __CellSelection__ object. The following list contains all approaches you can use to retrieve a __CellSelection__ instance. Note that each example creates a new workbook, adds one worksheet and creates a selection for its cells.
        
#### Example 1. Create CellSelection using CellIndex

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.cs region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.vb region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_0}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();
CellIndex cellIndex = new CellIndex(0, 5);
CellSelection selection1 = worksheet.Cells[cellIndex];

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()
Dim cellIndex As New CellIndex(0, 5)
Dim selection1 As CellSelection = worksheet.Cells(cellIndex)

````

{{endregion}} 

#### Example 2 Create CellSelection using CellRange

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.cs region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_1}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.vb region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_1}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();
CellRange cellRange = new CellRange(0, 0, 5, 5);
CellSelection selection2 = worksheet.Cells[cellRange];

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()
Dim cellRange As New CellRange(0, 0, 5, 5)
Dim selection2 As CellSelection = worksheet.Cells(cellRange)

````

{{endregion}} 

#### Example 3 Create CellSelection using multiple CellRange objects.

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.cs region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_2}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.vb region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_2}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();
List<CellRange> ranges = new List<CellRange>();
ranges.Add(new CellRange(0, 0, 5, 5));
ranges.Add(new CellRange(0, 10, 5, 15));
CellSelection selection3 = worksheet.Cells[ranges];

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()
Dim ranges As New List(Of CellRange)()
ranges.Add(New CellRange(0, 0, 5, 5))
ranges.Add(New CellRange(0, 10, 5, 15))
Dim selection3 As CellSelection = worksheet.Cells(ranges)

````

{{endregion}} 

#### Example 4 Create CellSelection using two CellIndex instances that specify a CellRange.

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.cs region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_3}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.vb region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_3}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();
CellIndex fromIndex = new CellIndex(0, 0);
CellIndex toIndex = new CellIndex(5, 5);
CellSelection selection4 = worksheet.Cells[fromIndex, toIndex];

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()
Dim fromIndex As New CellIndex(0, 0)
Dim toIndex As New CellIndex(5, 5)
Dim selection4 As CellSelection = worksheet.Cells(fromIndex, toIndex)

````

{{endregion}} 

#### Example 5 Create CellSelection using two integers that indicate the CellIndex.

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.cs region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_4}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.vb region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_4}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();
CellSelection selection5 = worksheet.Cells[0, 5];

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()
Dim selection5 As CellSelection = worksheet.Cells(0, 5)

````

{{endregion}} 




#### Example 6 Create CellSelection using four integers that specify the CellRange.

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.cs region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_5}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithCells\RadSpreadProcessingAccessingCellsOfAWorksheet.vb region=radspreadprocessing-working-with-cells-accessing-cells-of-worksheet_5}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();
CellSelection selection6 = worksheet.Cells[0, 0, 5, 5];

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()
Dim selection6 As CellSelection = worksheet.Cells(0, 0, 5, 5)

````

{{endregion}} 
Once you have a __CellSelection__ object you can get, set and clear the properties of the selected cells. More information about cell properties is available in the [Get, Set and Clear Cell Properties]({%slug winforms/spreadprocessing/working-with-cells/get-set-and-clear-cell-properties%}) article.
        
