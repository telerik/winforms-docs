---
title: Export two or more grids to a single sheet
page_title: Export two or more grids to a single sheet
description: Export two or more grids to a single sheet
slug: export-to-single-sheet
tags: gridview, export, sheet
published: True
position: 0
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.3.917|RadGridView for WinForms|Dimitar Karamfilov|

# Problem

You have two or more grids and you want to export them to a single sheet in the same file. 

# Solution

To achieve this you need to copy the contents of the second sheet in the first one. The bellow example demonstrates how you can implement this approach. 

````C#
private void radButton1_Click(object sender, EventArgs e)
{

    GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.radGridView1);         
    SpreadExportRenderer exportRenderer = new SpreadExportRenderer();          
    spreadExporter.RunExport("D:\\temp.xlsx", exportRenderer);

    spreadExporter = new GridViewSpreadExport(this.radGridView1);

    exportRenderer.WorkbookCreated += ExportRenderer_WorkbookCreated;
    spreadExporter.RunExport("D:\\temp.xlsx", exportRenderer);
}

private void ExportRenderer_WorkbookCreated(object sender, WorkbookCreatedEventArgs e)
{
    var sheet1 = e.Workbook.Sheets[0] as Worksheet;
    var sheet2 = e.Workbook.Sheets[1] as Worksheet;

    var fragment = sheet2.Cells[sheet2.UsedCellRange].Copy();


    sheet1.Cells[sheet1.UsedCellRange.RowCount + 1, 0].Paste(fragment, PasteOptions.All);

}
````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)

	Dim spreadExporter As New GridViewSpreadExport(Me.radGridView1)
	Dim exportRenderer As New SpreadExportRenderer()
	spreadExporter.RunExport("D:\temp.xlsx", exportRenderer)

	spreadExporter = New GridViewSpreadExport(Me.radGridView1)

	AddHandler exportRenderer.WorkbookCreated, AddressOf ExportRenderer_WorkbookCreated
	spreadExporter.RunExport("D:\temp.xlsx", exportRenderer)
End Sub

Private Sub ExportRenderer_WorkbookCreated(ByVal sender As Object, ByVal e As WorkbookCreatedEventArgs)
	Dim sheet1 = TryCast(e.Workbook.Sheets(0), Worksheet)
	Dim sheet2 = TryCast(e.Workbook.Sheets(1), Worksheet)

	Dim fragment = sheet2.Cells(sheet2.UsedCellRange).Copy()


	sheet1.Cells(sheet1.UsedCellRange.RowCount + 1, 0).Paste(fragment, PasteOptions.All)

End Sub
````


