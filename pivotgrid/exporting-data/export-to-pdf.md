---
title: Export to Pdf
page_title: Export to Pdf | UI for WinForms Documentation
description: Export to Pdf
slug: winforms/pivotgrid/exporting-data/export-to-pdf
tags: export,to,pdf
published: True
position: 2
previous_url: pivotgrid-export-export-to-pdf
---

# Export to Pdf

__RadPivotGrid__ can export its contents to PDF. This is achieved with the help of the [RadPdfProcessing](http://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview) library. <br>![pivotgrid-export-export-to-pdf 001](images/pivotgrid-export-export-to-pdf001.png)

>note The PDF export functionality is located in the __TelerikExport.dll__ assembly and to use the functionality you need yo add reference to it.
>

## Execute the Exporter

Before exporting to PDF, you have to initialize the __PivotGridPdfExport__ class. The constructor takes one parameter - __RadPivotGrid__ which will be exported. You need to create  __PdfExportRenderer__ instance as well:

{{source=..\SamplesCS\Pivotgrid\PdfExportCode.cs region=RunExport}} 
{{source=..\SamplesVB\Pivotgrid\PdfExportCode.vb region=Runexport}} 

````C#
PivotGridPdfExport exporter = new PivotGridPdfExport(radPivotGrid1);
PdfExportRenderer renderer = new PdfExportRenderer();
exporter.RunExport(@"C:\PivotData.pdf", renderer);

````
````VB.NET
Dim exporter As New PivotGridPdfExport(radPivotGrid1)
Dim renderer As New PdfExportRenderer()
exporter.RunExport("C:\PivotData.pdf", renderer)

````

{{endregion}} 

The __RunExport__ method has several overloads allowing the user to export using a stream as well:

####  Running export synchronously using a stream

{{source=..\SamplesCS\Pivotgrid\PdfExportCode.cs region=StreamRunExport}} 
{{source=..\SamplesVB\Pivotgrid\PdfExportCode.vb region=StreamRunExport}} 

````C#
string exportFile = @"..\..\exportedData.pdf";
using (System.IO.MemoryStream ms = new System.IO.MemoryStream())
{
    Telerik.WinControls.Export.PivotGridPdfExport pdfExporter = new Telerik.WinControls.Export.PivotGridPdfExport(radPivotGrid1);
    Telerik.WinControls.Export.PdfExportRenderer pdfRenderer = new Telerik.WinControls.Export.PdfExportRenderer();
    pdfExporter.RunExport(ms, pdfRenderer);
    using (System.IO.FileStream fileStream = new System.IO.FileStream(exportFile, FileMode.Create, FileAccess.Write))
    {
        ms.WriteTo(fileStream);
    }
}

````
````VB.NET
Dim exportFile As String = "..\..\exportedData.pdf"
Using ms As New System.IO.MemoryStream()
    Dim pdfExporter As New Telerik.WinControls.Export.PivotGridPdfExport(radPivotGrid1)
    Dim pdfRenderer As New Telerik.WinControls.Export.PdfExportRenderer()
    pdfExporter.RunExport(ms, pdfRenderer)
    Using fileStream As New System.IO.FileStream(exportFile, FileMode.Create, FileAccess.Write)
        ms.WriteTo(fileStream)
    End Using
End Using

````

{{endregion}} 

## Properties

* __ExportVisualSettings:__ Gets or sets a value indicating whether the visual settings should be exported.

* __ExportSelectionOnly:__  Gets or sets a value indicating whether to export only selection.

* __ExportFlatData:__ Gets or sets a value which indicates whether to export flat data (collapsed rows and columns).

* __PageSize:__ Gets or sets the page size in millimeters.

* __PageMargins:__  Gets or sets the margins of pages in millimeters.

* __FitToPageWidth:__ Gets or sets a value indicating whether the content of page should fit into the page width.

* __Scale:__ Gets or sets the document scaling. Default value is 1. For example, scale of 1.2f means 20% size increase.

* __ShowHeaderAndFooter:__ Gets or sets a value indicating whether header and footer should be exported.

* __ExportSettings:__ This property allows you to set the [document information](http://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/radfixeddocument).

The following properties define color and font of the different cell elements: __CellBackColor__, __HeadersBackColor__, __DescriptorsBackColor__, __SubTotalsBackColor__, __GrandTotalsBackColor__, __BorderColor__, __HeaderCellsFont__, __DataCellsFont__

## Events

The __PivotGridPdfExport__ exposes tree events that allows you to change the exported document.

* __CellFormatting:__ This event is fired for every exported cell. It allows you to change the cells properties including its value.

* __CellPaint:__ Occurs after a cell is drawn. This event allows you to draw additional elements to the cell.

* __PdfExported:__ Occurs when the export process completes.

The __PdfExportRenderer__ is exposing two events as well. Detailed information is available here: [PdfExportRenderer]({%slug winforms/telerik-presentation-framework/export-renderers/pdfexportrenderer%})

## Asynchronous Exporting

The __PivotGrid__ can be exported asynchronously as well. The following example shows how you can run the exporter asynchronously.

{{source=..\SamplesCS\Pivotgrid\PdfExportCode.cs region=Async}} 
{{source=..\SamplesVB\Pivotgrid\PdfExportCode.vb region=Async}} 

````C#
            
PivotGridPdfExport exporter = new PivotGridPdfExport(radPivotGrid1);
PdfExportRenderer renderer = new PdfExportRenderer();
exporter.RunExportAsync(@"C:\PivotData.pdf", renderer);

````
````VB.NET
Dim exporter As New PivotGridPdfExport(radPivotGrid1)
Dim renderer As New PdfExportRenderer()
exporter.RunExportAsync("C:\PivotData.pdf", renderer)

````

{{endregion}}

The __RunExportAsync__ method has several overloads allowing the user to export using a stream as well:

{{source=..\SamplesCS\Pivotgrid\PdfExportCode.cs region=StreamRunExportAsync}} 
{{source=..\SamplesVB\Pivotgrid\PdfExportCode.vb region=StreamRunExportAsync}} 

````C#
    
private void buttonRunExportAsync_Click(object sender, EventArgs e)
{
    System.IO.MemoryStream ms = new System.IO.MemoryStream();         
    Telerik.WinControls.Export.PivotGridPdfExport exporter = new Telerik.WinControls.Export.PivotGridPdfExport(radPivotGrid1);
    Telerik.WinControls.Export.PdfExportRenderer renderer = new Telerik.WinControls.Export.PdfExportRenderer();
    exporter.AsyncExportCompleted += exporter_AsyncExportCompleted;
    exporter.RunExportAsync(ms, renderer);
}
    
private void exporter_AsyncExportCompleted(object sender, AsyncCompletedEventArgs e)
{
    RunWorkerCompletedEventArgs args = e as RunWorkerCompletedEventArgs;
    string exportFile = @"..\..\exportedAsyncData.pdf";
    using (System.IO.FileStream fileStream = new System.IO.FileStream(exportFile, FileMode.Create, FileAccess.Write))
    { 
        MemoryStream ms = args.Result as MemoryStream;
        ms.WriteTo(fileStream);
        ms.Close();
    }
}

````
````VB.NET
Private Sub buttonRunExportAsync_Click(sender As Object, e As EventArgs)
    Dim ms As New System.IO.MemoryStream()
    Dim exporter As New Telerik.WinControls.Export.PivotGridPdfExport(radPivotGrid1)
    Dim renderer As New Telerik.WinControls.Export.PdfExportRenderer()
    AddHandler exporter.AsyncExportCompleted, AddressOf exporter_AsyncExportCompleted
    exporter.RunExportAsync(ms, renderer)
End Sub
Private Sub exporter_AsyncExportCompleted(sender As Object, e As AsyncCompletedEventArgs)
    Dim args As RunWorkerCompletedEventArgs = TryCast(e, RunWorkerCompletedEventArgs)
    Dim exportFile As String = "..\..\exportedAsyncData.pdf"
    Using fileStream As New System.IO.FileStream(exportFile, FileMode.Create, FileAccess.Write)
        Dim ms As MemoryStream = TryCast(args.Result, MemoryStream)
        ms.WriteTo(fileStream)
        ms.Close()
    End Using
End Sub

````

{{endregion}} 

There are two events that can be used with the asynchronous export:

* __AsyncExportCompleted:__ Occurs when an asynchronous export operation is completed.

* __AsyncExportProgressChanged:__ Occurs when the progress of an asynchronous export operation changes.
