---
title: Export to Excel
page_title: Export to Excel
description: Export to Excel
slug: pivotgrid-export-to-excel
tags: export,to,excel
published: True
position: 17
---

# Export to Excel



This method offers exporting functionality and does not require MS Office installation on users' machines. The __PivotExcelML__ format can be read by MS Excel 2002 (MS Office XP) and above.

## Exporting Data

Before running export to ExcelML, you have to initialize the PivotExportToExcelML class. The constructor takes one parameter: the RadPivotGrid that will be exported:
        

#### __[C#]__

{{region ExportToExcelIMLInitialization}}
	            PivotExportToExcelML exporter = new PivotExportToExcelML(this.radPivotGrid1);
	{{endregion}}



#### __[VB]__

{{region ExportToExcelIMLInitialization}}
	        Dim exporter As PivotExportToExcelML = New PivotExportToExcelML(Me.radPivotGrid1)
	{{endregion}}



## Exporting Visual Settings

Using the PivotExcelML method allows you to export the visual settings (themes) to the Excel file. ExcelML has also a visual representation of the alternating column color. The row height is exported with the default DPI transformation (60pixels = 72points).
          You can enable exporting visual settings through the ExportVisualSettings property. By default the value of this property is true:
        

#### __[C#]__

{{region SettingExportVisualSettings}}
	            exporter.ExportVisualSettings = true;
	{{endregion}}



#### __[VB]__

{{region SettingExportVisualSettings}}
	        exporter.ExportVisualSettings = True
	{{endregion}}



## Setting the sheet name

You can specify the sheet name through __SheetName__ property. If your data is large enough to be split on more than one sheet, then the export method adds index to the names of the next sheets.
        

#### __[C#]__

{{region SettingTheSheetName}}
	            exporter.SheetName = "Sheet";
	{{endregion}}



#### __[VB]__

{{region SettingTheSheetName}}
	        exporter.SheetName = "Sheet"
	{{endregion}}



## RunExport method

Exporting data to Excel is done through the __RunExport__ method of  __PivotExportToExcelML__ object. The RunExport method accepts a string parameter with a valid file path. Consider the code sample below:
        

#### __[C#]__

{{region ExportToExcelInExcelMLFormat}}
	            string fileName = "c:\\Sheet1.xls";
	            exporter.RunExport(fileName);
	{{endregion}}



#### __[VB]__

{{region ExportToExcelInExcelMLFormat}}
	        Dim fileName As String = "c:\Sheet1.xls"
	        exporter.RunExport(fileName)
	{{endregion}}



## Events

__ExcelCellFormating__ event:
          It gives an access to a single cell’s __SingleStyleElement__ that allows you to make additional formatting (adding border, setting alignment, text font, colors, changing cell value, etc.) for every excel cell related to the exported RadPivotGrid:
        

#### __[C#]__

{{region ExcelCellFormating}}
	        void exporter_PivotExcelCellFormatting(object sender, Telerik.WinControls.UI.Export.ExcelPivotCellExportingEventArgs e)  
	        {   
	            if (e.ColumnIndex == 1 || e.ColumnIndex==2)//format the header columns
	            {
	                e.Cell.ForeColor = System.Drawing.Color.Red;                
	            }
	            else if (e.RowIndex == 1 )//format the header row
	            {
	                e.Cell.ForeColor = System.Drawing.Color.Green;
	            }
	        }
	{{endregion}}



#### __[VB]__

{{region ExcelCellFormating}}
	    Private Sub exporter_PivotExcelCellFormatting(sender As Object, e As Telerik.WinControls.UI.Export.ExcelPivotCellExportingEventArgs)
	        If e.ColumnIndex = 1 OrElse e.ColumnIndex = 2 Then
	            'format the header columns
	            e.Cell.ForeColor = System.Drawing.Color.Red
	        ElseIf e.RowIndex = 1 Then
	            'format the header row
	            e.Cell.ForeColor = System.Drawing.Color.Green
	        End If
	    End Sub
	{{endregion}}

![pivotgrid-export-to-excel 001](images/pivotgrid-export-to-excel001.png)
