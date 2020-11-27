---
title: Fill RadSpreadsheet with DataTable  
description: This article demonstrates how to populate RadSpreadsheet with data records coming form a DataTable
type: how-to
page_title: How to Fill RadSpreadsheet with DataTable    
slug: fill-spreadsheet-with-datatable
position: 0
tags: spreadsheet, data, table
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.3.1020|RadSpreadsheet for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description
 
A common requirement is to populate [RadSpreadsheet]({%slug radspreadsheet-overview%}) with data coming from a **DataTable**. 

## Solution 

It is necessary to iterate the columns and rows in the **DataTable** and insert the respective [cell's value](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/working-with-cells/cell-value-types) to the **ActiveWorksheet** in [RadSpreadsheet]({%slug radspreadsheet-overview%}).
 

````C#
public RadForm1()
{
    InitializeComponent();
    DataTable dt = new DataTable();
    for (int i = 0; i < 10; i++)
    {
        dt.Columns.Add("Col" + i);
    }
    for (int i = 0; i < 1000; i++)
    {
        DataRow row = dt.Rows.Add();
        foreach (DataColumn col in dt.Columns)
        {
            row[col.ColumnName] = "Data" + i + "." + col.ColumnName;
        }
    }
    bool shouldImportColumnHeaders = true;
    PopulateSpreadsheet(dt, shouldImportColumnHeaders);
}

private void PopulateSpreadsheet(DataTable data, bool shouldImportColumnHeaders)
{
    Worksheet worksheet = this.radSpreadsheet1.ActiveSheet as Worksheet;
    int startRowIndex = 0;
    if (shouldImportColumnHeaders)
    {
        startRowIndex++;
        for (int i = 0; i < data.Columns.Count; i++)
        { 
            worksheet.Cells[0, i].SetValue(data.Columns[i].ColumnName);
        }
    }
    
    for (int i = 0; i < data.Rows.Count; i++)
    {
        for (int j = 0; j < data.Columns.Count; j++)
        { 
            worksheet.Cells[startRowIndex + i, j].SetValue(data.Rows[i][j] + string.Empty);
        }
    }
    worksheet.Columns[worksheet.UsedCellRange].AutoFitWidth();
}
 

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Dim dt As DataTable = New DataTable()

    For i As Integer = 0 To 10 - 1
        dt.Columns.Add("Col" & i)
    Next

    For i As Integer = 0 To 1000 - 1
        Dim row As DataRow = dt.Rows.Add()

        For Each col As DataColumn In dt.Columns
            row(col.ColumnName) = "Data" & i & "." & col.ColumnName
        Next
    Next

    Dim shouldImportColumnHeaders As Boolean = True
    PopulateSpreadsheet(dt, shouldImportColumnHeaders)
End Sub

Private Sub PopulateSpreadsheet(ByVal data As DataTable, ByVal shouldImportColumnHeaders As Boolean)
    Dim worksheet As Worksheet = TryCast(Me.RadSpreadsheet1.ActiveSheet, Worksheet)
    Dim startRowIndex As Integer = 0

    If shouldImportColumnHeaders Then
        startRowIndex += 1

        For i As Integer = 0 To data.Columns.Count - 1
            worksheet.Cells(0, i).SetValue(data.Columns(i).ColumnName)
        Next
    End If

    For i As Integer = 0 To data.Rows.Count - 1

        For j As Integer = 0 To data.Columns.Count - 1
            worksheet.Cells(startRowIndex + i, j).SetValue(data.Rows(i)(j) & String.Empty)
        Next
    Next

    worksheet.Columns(worksheet.UsedCellRange).AutoFitWidth()
End Sub
 

```` 

The provided approach inserts the cells' values as string. If you want to insert a value in a specific format, you can benefit the [RadSpreadProcessing]({%slug radspreadprocessing-overview%}) library and supported [cell value types](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/working-with-cells/cell-value-types).

# See Also

* [RadSpreadProcessing]({%slug radspreadprocessing-overview%})
* [RadSpreadsheet]({%slug radspreadsheet-overview%})

