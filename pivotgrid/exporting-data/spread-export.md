---
title: Spread Export
page_title: Spread Export | UI for WinForms Documentation
description: Spread Export
slug: winforms/pivotgrid/exporting-data/spread-export
tags: spread,export
published: True
position: 0
---

# Spread Export

__PivotGridSpreadExport__ utilizes our [RadSpreadProcessing]({%slug winforms/spreadprocessing%}) libraries to export the contents of __RadPivotGrid__ to *xlsx, csv, pdf* and *txt* formats. This article will explain in detail the SpreadExport abilities and will demonstrate how to use it.

* [Exporting Data](#exporting-data)

* [Properties](#properties)

* [Events](#events)

Here is how the following grid, looks when exported.
      
>caption Fig.1 Exporting RadPivotGrid

![pivotgrid-export-srpead-export 001](images/pivotgrid-export-srpead-export001.png)

>note The spread export functionality is located in the __TelerikExport.dll__ assembly.You need to include the following namespace in order to access the types contained in TelerikExport:
* Telerik.WinControls.TelerikExport
>

>important Since this functionality is using the [RadSpreadProcessingLibrary]({%slug winforms/spreadprocessing%}) you need to reference the following assemblies as well:
* Telerik.Windows.Documents.Core
* Telerik.Windows.Documents.Fixed
* Telerik.Windows.Documents.Spreadsheet
* Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml
* Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf
* Telerik.Windows.Maths
* Telerik.Windows.Zip
>


## Exporting Data

To use the spread export functionality, an instance of the __PivotGridSpreadExport__ object should be created, passing as parameter the __RadPivotGrid__ instance to export. Afterwards, the __RunExport__ method will trigger the export process. Data can also be exported asynchronously, in order to take advantage of this feature, you should use the __RunExportAsync__ method instead. Both methods accepts as parameter a filename of the file to be exported and an instance of the __SpreadExportRenderer__ class.

#### Running export synchronously

{{source=..\SamplesCS\PivotGrid\PivotSpreadExport.cs region=ExportingData}} 
{{source=..\SamplesVB\PivotGrid\PivotSpreadExport.vb region=ExportingData}} 

````C#
PivotGridSpreadExport spreadExport = new PivotGridSpreadExport(this.radPivotGrid1);
spreadExport.RunExport(@"..\..\exported-file.xlsx", new SpreadExportRenderer());

````
````VB.NET
Dim spreadExport As New PivotGridSpreadExport(Me.RadPivotGrid1)
spreadExport.RunExport("..\..\exported-file.xlsx", New SpreadExportRenderer())

````

{{endregion}}

#### Running export asynchronously

{{source=..\SamplesCS\PivotGrid\PivotSpreadExport.cs region=ExportingDataAsync}} 
{{source=..\SamplesVB\PivotGrid\PivotSpreadExport.vb region=ExportingDataAsync}} 

````C#
PivotGridSpreadExport spreadExport = new PivotGridSpreadExport(this.radPivotGrid1);
spreadExport.RunExportAsync(@"..\..\exported-file.xlsx", new SpreadExportRenderer());

````
````VB.NET
Dim spreadExport As New PivotGridSpreadExport(Me.RadPivotGrid1)
spreadExport.RunExportAsync("..\..\exported-file.xlsx", New SpreadExportRenderer())

````

{{endregion}}

## Properties

__ExportFormat__: Defines the format the grid will be exported to. The available values are __Xslx, Pdf, Csv, Txt__. The default value of the property is __Xslx__, hence if not other specified, the exporter will export to __Xslx__.

__ExportVisualSettings__: Allows you to export the visual settings (themes) to the exported file. RadGridView will also export all formatting to the Excel file. The column width and row height will also be matched in the exported file.

__SheetMaxRows__: Тhe exporter splits the data on separate sheets if the number of rows is greater than the Excel maximum. You can control the maximum number of rows through this SheetMaxRows property. Available options are:

* *1048576*: Max rows for Excel 2007 and above

* *65536 (default)*: Max rows for previous versions of Excel. This is the default setting.

__SheetName__: Defines the sheet name of the sheet to export to. If your data is large enough to be split on more than one sheets, then the export method adds index to the names of the next sheets.

__FileExportMode__: This property determines whether the data will be exported into an existing or a new file. If new is chosen and such exists it will be overridden. Available options are:

* *NewSheetInExistingFile*: This is the default selection and it will create a new sheet in an already existing file.

* *CreateOrOverrideFile*: Creates new or overrides an existing file.

__ExportFlatData__: Defines whether flat data (columns and rows) will be exported.

__ShowGridLines__: Indicates whether the grid lines will be exported.

__ExportSelectionOnly__: Indicates whether to export only the current selection.

The following properties define color and font of the different cell elements: __CellBackColor__, __HeadersBackColor__, __DescriptorsBackColor__, __SubTotalsBackColor__,  __GrandTotalsBackColor__ __BorderColor__, __HeaderCellsFont__, __DataCellsFont__.

## Events

__CellFormatting__: This event is used to format the cells to be exported. The event arguments provide: 

* *Cell*: Provides access to the pivot spread cell element. 

* *ColumnIndex*: Returns the index of the column to be exported. 

* *ColumnsCount*: Returns the count of the columns to be exported. 

* *RowIndex*: Returns the index of the row to be exported. 

* *RowsCount*: Returns the count of the rows to be exported. 

This is how the displayed in Fig. 1 pivot grid looks after handling the __CellFormatting__ event.
        
>caption Fig.2 Applying styles<br>![pivotgrid-export-srpead-export 002](images/pivotgrid-export-srpead-export002.png)

{{source=..\SamplesCS\PivotGrid\PivotSpreadExport.cs region=Events}} 
{{source=..\SamplesVB\PivotGrid\PivotSpreadExport.vb region=Events}} 

````C#
private void spreadExport_CellFormatting(object sender, PivotGridSpreadExportCellFormattingEventArgs e)
{
    if (e.ColumnIndex % 2 == 0 && e.RowIndex % 2 != 0)
    {
        e.Cell.BackColor = Color.LightBlue;
        e.Cell.ForeColor = Color.Black;
        e.Cell.BorderColor = Color.Black;
    }
}

````
````VB.NET
Private Sub spreadExport_CellFormatting(sender As Object, e As PivotGridSpreadExportCellFormattingEventArgs)
    If e.ColumnIndex Mod 2 = 0 AndAlso e.RowIndex Mod 2 <> 0 Then
        e.Cell.BackColor = Color.LightBlue
        e.Cell.ForeColor = Color.Black
        e.Cell.BorderColor = Color.Black
    End If
End Sub

````

{{endregion}}

__WorkbookCreated__:  This event is triggered on the __SpreadExportRenderer__ object when the workbook is ready to be exported. Allows to introduce final customizations.

* *Workbook*: Provides access to the exported Workbook object.

__AsyncExportProgressChanged__: Occurs when the progress of an asynchronous export operation changes.

__AsyncExportCompleted__: Occurs when an async export operation is completed.
