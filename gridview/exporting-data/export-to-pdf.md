---
title: Export to PDF
page_title: Export to PDF | RadGridView
description: This article shows how you can export your data to a PDF file. Two distinct methods are sported.
slug: winforms/gridview/exporting-data/export-to-pdf
tags: export,to,pdf
published: True
position: 7
previous_url: gridview-exporting-data-export-to-pdf
---

# Export to PDF

## Overview

__RadGridView__ can export its contents to PDF using two separate mechanisms.

* The __GridViewPdfExport__ object utilizes the powerful [RadPdfProcessing](http://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview) library and exports __RadGridView__`s data natively to the PDF format.

* The __ExportToPdf__ object on the other hand first renders __RadGridView__ as an XHTML table and the export process will convert that table to a PDF document. That said, Export to PDF supports all of the __ExportToHTML__ settings, but it also adds some PDF specific ones.

## Exporting Data using GridViewPdfExport object

>note The __GridViewPdfExport__ functionality is located in the __TelerikExport.dll__ assembly. You need to include the following namespace in order to access the types contained in __TelerikExport__ :
* Telerik.WinControls.Export

>note The __ExportToPdf__ functionality is located in the __TelerikData.dll__ assembly. You need to include the following namespace in order to access the types contained in __TelerikData__ :
* Telerik.WinControls.UI.Export
>

### Initialization

Before running export to PDF, you have to initialize the __GridViewPdfExport__ class. The constructor takes one parameter: __RadGridView__ which will be exported:

####  GridViewPdfExport initialization

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=InitializePdfExporter}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=InitializePdfExporter}} 

````C#
            
Telerik.WinControls.Export.GridViewPdfExport pdfExporter = new Telerik.WinControls.Export.GridViewPdfExport(this.radGridView1);

````
````VB.NET
Dim pdfExporter As New Telerik.WinControls.Export.GridViewPdfExport(Me.RadGridView1)

````

{{endregion}} 

### File Extension

The __FileExtension__ property allows you to change the default (*.pdf) file extension of the exported file:

#### Setting the file extension

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=SetFileExtension}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=SetFileExtension}} 

````C#
            
pdfExporter.FileExtension = ".pdf";

````
````VB.NET
pdfExporter.FileExtension = ".pdf"

````

{{endregion}} 

### Hidden columns and rows option

__GridViewPdfExport__ uses the default enumeration of hidden column and row settings. You can choose one of the three options by setting __HiddenColumnOption__ and __HiddenRowOption__ properties. However, PDF do not support real hidden columns, so choosing the __ExportAsHidden__ will not behave the same as __ExportAlways__.

* ExportAlways

* DoNotExport (default)

* ExportAsHidden (brings the same result as ExportAlways option)


####  Setting the HiddenColumnOption

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=SetHiddenPref}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=SetHiddenPref}} 

````C#
            
pdfExporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;

````
````VB.NET
pdfExporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport

````

{{endregion}} 

### Header and Footer

Before applying customizations to the headers and footers we need to enable them:

####  Enabling headers and footers

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=ShowHeaderAndFooter}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=ShowHeaderAndFooter}} 

````C#
            
pdfExporter.ShowHeaderAndFooter = true;

````
````VB.NET
pdfExporter.ShowHeaderAndFooter = True

````

{{endregion}} 


####  Customizing headers and footers

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=CustomizeHeaderAndFooter}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=CustomizeHeaderAndFooter}} 

````C#
            
pdfExporter.HeaderHeight = 30;
pdfExporter.HeaderFont = new Font("Arial", 22);
pdfExporter.Logo = System.Drawing.Image.FromFile(@"C:\MyLogo.png");
pdfExporter.LeftHeader = "[Logo]";
pdfExporter.LogoAlignment = ContentAlignment.MiddleLeft;
pdfExporter.LogoLayout = Telerik.WinControls.Export.LogoLayout.Fit;
            
pdfExporter.MiddleHeader = "Middle header";
pdfExporter.RightHeader = "Right header";
pdfExporter.ReverseHeaderOnEvenPages = true;
            
pdfExporter.FooterHeight = 30;
pdfExporter.FooterFont = new Font("Arial", 22);
pdfExporter.LeftFooter = "Left footer";
pdfExporter.MiddleFooter = "Middle footer";
pdfExporter.RightFooter = "Right footer";
pdfExporter.ReverseFooterOnEvenPages = true;

````
````VB.NET
pdfExporter.HeaderHeight = 30
pdfExporter.HeaderFont = New Font("Arial", 22)
pdfExporter.Logo = System.Drawing.Image.FromFile("C:\MyLogo.png")
pdfExporter.LeftHeader = "[Logo]"
pdfExporter.LogoAlignment = ContentAlignment.MiddleLeft
pdfExporter.LogoLayout = Telerik.WinControls.Export.LogoLayout.Fit
pdfExporter.MiddleHeader = "Middle header"
pdfExporter.RightHeader = "Right header"
pdfExporter.ReverseHeaderOnEvenPages = True
pdfExporter.FooterHeight = 30
pdfExporter.FooterFont = New Font("Arial", 22)
pdfExporter.LeftFooter = "Left footer"
pdfExporter.MiddleFooter = "Middle footer"
pdfExporter.RightFooter = "Right footer"
pdfExporter.ReverseFooterOnEvenPages = True

````

{{endregion}} 

### Summaries export option

The __SummariesExportOption__ property to specifies how to export summary items. There are four options to choose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

####  Setting summary items

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=SetSummaryItems}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=SetSummaryItems}} 

````C#
            
pdfExporter.SummariesExportOption = SummariesOption.ExportAll;

````
````VB.NET
pdfExporter.SummariesExportOption = SummariesOption.ExportAll

````

{{endregion}} 

### Fit to page

Use this property to make the grid fits to the PDF page width.

####  Setting FitToPageWidth

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=SetFitToPage}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=SetFitToPage}} 

````C#
            
pdfExporter.FitToPageWidth = true;

````
````VB.NET
pdfExporter.FitToPageWidth = True

````

{{endregion}} 

### Scale

You can use __Scale__ to change the grid size on the PDF. For example if __Scale__ = 1.2f means the grid will be 20% bigger.

####  Setting scale

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=SetScale}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=SetScale}} 

````C#
            
pdfExporter.Scale = 1.2;

````
````VB.NET
pdfExporter.Scale = 1.2

````

{{endregion}} 

__PDF Export Settings__ 

The __PDFExportSettings__ property supports various settings on PDF file level. You can set the following:

* Author

* Title

* Description

####  Using export settings

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=ExportSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=ExportSettings}} 

````C#
            
pdfExporter.ExportSettings.Description = "Document Description";

````
````VB.NET
pdfExporter.ExportSettings.Description = "Document Description"

````

{{endregion}} 

__ExportViewDefinition__

Gets or sets a value indicating whether to export the [view definition.]({%slug winforms/gridview/view-definitions/overview%})

__ChildViewExportMode__: Defines which child view of a hierarchy row to be exported. Available modes are:

* *ExportFirstView*: The exporter exports the first view.

* *ExportCurrentlyActiveView*: The exporter exports the view that is active in the grid.

* *ExportAllViews*: All child views are exported.

* *SelectViewToExport*: In this mode the __ChildViewExporing__ event is fired. The event allows to choose the view to export in row by row basis.

### PDF Export Settings

The __PDFExportSettings__ property supports various settings on PDF file level. You can set the following:

* Author

* Title

* Description

####  Using export settings

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=ExportSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=ExportSettings}} 

````C#
            
pdfExporter.ExportSettings.Description = "Document Description";

````
````VB.NET
pdfExporter.ExportSettings.Description = "Document Description"

````

{{endregion}} 

### Exporting to PDF

Two methods are responsible for exporting data to PDF. Both receive as a parameter the file name.     

* RunExport: Runs synchronously.

####  Running export

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=RunExport}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=RunExport}} 

````C#
            
string fileName = "c:\\ExportedData.pdf";
pdfExporter.RunExport(fileName);

````
````VB.NET
Dim fileName As String = "c:\ExportedData.pdf"
pdfExporter.RunExport(fileName)

````

{{endregion}} 


The __RunExport__ method has several overloads allowing the user to export using a stream as well:

####  Running export synchronously using a stream

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=StreamRunExport}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=StreamRunExport}} 

````C#
            
string exportFile = @"..\..\exportedData.pdf";
using (System.IO.MemoryStream ms = new System.IO.MemoryStream())
{
    Telerik.WinControls.Export.GridViewPdfExport exporter = new Telerik.WinControls.Export.GridViewPdfExport(this.radGridView1);
    Telerik.WinControls.Export.PdfExportRenderer renderer = new Telerik.WinControls.Export.PdfExportRenderer();
    exporter.RunExport(ms, renderer);
    
    using (System.IO.FileStream fileStream = new System.IO.FileStream(exportFile, FileMode.Create, FileAccess.Write))
    {
        ms.WriteTo(fileStream);
    }
}

````
````VB.NET
Dim exportFile As String = "..\..\exportedData.pdf"
Using ms As New System.IO.MemoryStream()
    Dim exporter As New Telerik.WinControls.Export.GridViewPdfExport(Me.RadGridView1)
    Dim renderer As New Telerik.WinControls.Export.PdfExportRenderer()
    exporter.RunExport(ms, renderer)
    Using fileStream As New System.IO.FileStream(exportFile, FileMode.Create, FileAccess.Write)
        ms.WriteTo(fileStream)
    End Using
End Using

````

{{endregion}} 


* RunExportAsync: Runs on a thread different than the UI thread.

#### Running export asynchronously

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=RunExportAsync}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=RunExportAsync}} 

````C#
            
string fileNameAsync = "c:\\ExportedDataAsync.pdf";
pdfExporter.RunExportAsync(fileNameAsync);

````
````VB.NET
Dim fileNameAsync As String = "c:\ExportedDataAsync.pdf"
pdfExporter.RunExportAsync(fileNameAsync)

````

{{endregion}} 


The __RunExportAsync__ method has several overloads allowing the user to export using a stream as well:

{{source=..\SamplesCS\GridView\ExportingData\GridViewPdfExport.cs region=StreamRunExportAsync}} 
{{source=..\SamplesVB\GridView\ExportingData\GridViewPdfExport.vb region=StreamRunExportAsync}} 

````C#
        
private void radButton1_Click(object sender, EventArgs e)
{
    System.IO.MemoryStream ms = new System.IO.MemoryStream();         
    Telerik.WinControls.Export.GridViewPdfExport pdfExporter = new Telerik.WinControls.Export.GridViewPdfExport(this.radGridView1);
    Telerik.WinControls.Export.PdfExportRenderer renderer = new Telerik.WinControls.Export.PdfExportRenderer();
    pdfExporter.AsyncExportCompleted += pdfExporter_AsyncExportCompleted;
    pdfExporter.RunExportAsync(ms, renderer);
}
        
private void pdfExporter_AsyncExportCompleted(object sender, AsyncCompletedEventArgs e)
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
Private Sub radButton1_Click(sender As Object, e As EventArgs)
    Dim ms As New System.IO.MemoryStream()
    Dim pdfExporter As New Telerik.WinControls.Export.GridViewPdfExport(Me.RadGridView1)
    Dim renderer As New Telerik.WinControls.Export.PdfExportRenderer()
    AddHandler pdfExporter.AsyncExportCompleted, AddressOf pdfExporter_AsyncExportCompleted
    pdfExporter.RunExportAsync(ms, renderer)
End Sub
Private Sub pdfExporter_AsyncExportCompleted(sender As Object, e As AsyncCompletedEventArgs)
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

## Events

* CellFormatting: Fires for every cell which is being exported

* CellPaint: Fires when a cell is being drawn

## Exporting Data using ExportToPDF object

__Initialization__

Before running export to PDF, you have to initialize the __ExportToPDF__ class. The constructor takes one parameter: __RadGridView__ which will be exported: 

####  ExportToPDF initialization

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=exportToPdfInitialization}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=exportToPdfInitialization}} 

````C#
ExportToPDF exporter = new ExportToPDF(this.radGridView1);

````
````VB.NET
Dim exporter As New ExportToPDF(Me.RadGridView1)

````

{{endregion}} 

### File Extension

The __FileExtension__ property allows you to change the default (*.pdf) file extension of the exported file:

####  Setting the FileExtension

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTheFileExtension}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTheFileExtension}} 

````C#
exporter.FileExtension = "pdf";

````
````VB.NET
exporter.FileExtension = "pdf"

````

{{endregion}} 

### Hidden columns and rows option

__ExportToPDF__ uses the default enumeration of hidden column and row settings. You can choose one of the three options by setting __HiddenColumnOption__ and __HiddenRowOption__ properties. However, PDF do not support real hidden columns, so choosing the ExportAsHidden will not behave the same as ExportAlways.

* ExportAlways

* DoNotExport (default)

* ExportAsHidden  (brings the same result as ExportAlways option)

####  Setting the HiddenColumnOption

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTheHiddenColumnOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTheHiddenColumnOption}} 

````C#
exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;

````
````VB.NET
exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport

````

{{endregion}} 

### Exporting Visual Settings

Using the __ExportToPDF__ class allows you to export the visual settings (themes) to the PDF file. __ExportToPDF__ also provides a visual representation of the alternating row color. This feature works only if __EnableAlternatingRow__ property is set to *true*. Note that it does not transfer the alternating row settings that come from the theme of the control. RadGridView will also export the conditional formatting to the PDF file. You can enable exporting visual settings through the __ExportVisualSettings__ property. The default value of this property is *false*. 

####  Setting the ExportVisualSettings

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingExportVisualSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingExportVisualSettings}} 

````C#
exporter.ExportVisualSettings = true;

````
````VB.NET
exporter.ExportVisualSettings = True

````

{{endregion}} 

### Page Title 

You can add a page title which will be presented on every page of the PDF document through __PageTitle__property.

#### Setting the PageTitle

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingThePageTitleProperty}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingThePageTitleProperty}} 

````C#
exporter.PageTitle = "Title";

````
````VB.NET
exporter.PageTitle = "Title"

````

{{endregion}} 

### Summaries export option 

You can use __SummariesExportOption__ property to specify how to export summary items. There are four options to choose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

####  Setting the SummariesExportOption

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingSummariesExportOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingSummariesExportOption}} 

````C#
exporter.SummariesExportOption = SummariesOption.ExportAll;

````
````VB.NET
exporter.SummariesExportOption = SummariesOption.ExportAll

````

{{endregion}}

### Fit to page 

Use this property to make the grid fits to the PDF page width.

####  Setting the FitToPageWidth

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingFitToPageWidth}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingFitToPageWidth}} 

````C#
exporter.FitToPageWidth = true;

````
````VB.NET
exporter.FitToPageWidth = True

````

{{endregion}} 

### Scale 

You can use __Scale__ to change the grid size on the PDF. For example if __Scale__ = 1.2f means the grid will be 20% bigger.

####  Setting the Scale

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingScale}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingScale}} 

````C#
exporter.Scale = 1.2f;

````
````VB.NET
exporter.Scale = 1.2F

````

{{endregion}} 

### TableBorderThickness 

This property controls the thickness of the table border. The default value is 0 and border is not drawn. 

####  Setting the TableBorderTickness

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTableBorderTickness}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTableBorderTickness}} 

````C#
exporter.TableBorderThickness = 1;

````
````VB.NET
exporter.TableBorderThickness = 1

````

{{endregion}} 

### PDF Export Settings 

The __PDFExportSettings__ property supports various settings on PDF file level. You can set the following:       

* Author

* Creator

* EnableAdd

* EnableCopy

* EnableModify

* EnablePrinting

* FontType

* Keywords

* Page Margins: PageBottomMargin, PageTopMargin, PageLeftMargin, PageRightMargin, PageFooterMargin

* Page Size: PageHeight and PageWidth

* Producer

* Subject

* Title

#### Setting the PDFDocumentSettings

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=pdfDocumentSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=pdfDocumentSettings}} 

````C#
exporter.PdfExportSettings.PageHeight = 210;
exporter.PdfExportSettings.PageWidth = 297;

````
````VB.NET
exporter.PdfExportSettings.PageHeight = 210
        exporter.PdfExportSettings.PageWidth = 297

````

{{endregion}} 

## RunExport method

Exporting data to PDF is done through the __RunExport__ method of ExportToPDF object. The RunExport method accepts the following parameter:

* __fileName__ - the name of the exported file

Consider the code sample below:

####  Exporting to PDF format

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=exportingToPdfFormat}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=exportingToPdfFormat}} 

````C#
string fileName = "c:\\ExportedData.pdf";
exporter.RunExport(fileName);

````
````VB.NET
Dim fileName As String = "c:\ExportedData.pdf"
        exporter.RunExport(fileName)

````

{{endregion}} 

## Events

__HTMLCellFormating__ event: Since the the export process first renders RadGridView in XHTML format you can use the event which comes from ExportToHTML class: __HTMLCellFormatting__.  It gives access to a single cell  HTML element that allows you to make additional formatting for every HTML cell related to the exported RadGridView:

####  Handling the HTMLCellFormatting event

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=hanglingHtmlCellFormattingEvent}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=hanglingHtmlCellFormattingEvent}} 

````C#
void exporter_HTMLCellFormatting(object sender, Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs e)
{
    if (e.GridColumnIndex == 1 && e.GridRowInfoType == typeof(GridViewDataRowInfo))
    {
        e.HTMLCellElement.Value = "Test value";
        e.HTMLCellElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Orange));
    }
}

````
````VB.NET
Private Sub exporter_HTMLCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs)
        If e.GridColumnIndex = 1 AndAlso e.GridRowInfoType.Equals(GetType(GridViewDataRowInfo)) Then
            e.HTMLCellElement.Value = "Test value"
            e.HTMLCellElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Orange))
        End If
    End Sub

````

{{endregion}} 

## Fonts / Unicode support

__ExportToPDF__ supports all left-to-right languages when the appropriate Unicode font is set. The most common international font is [Arial Unicode MS](http://support.microsoft.com/kb/287247), because it covers all Unicode characters. Of course, you can use other-specific fonts such as [Batang](http://www.ascenderfonts.com/font/batang-korean.aspx) for Korean, [SimSun](http://www.ascenderfonts.com/font/simsun-simplified-chinese.aspx) for Chinese, [MS Mincho](http://www.ascenderfonts.com/font/ms-mincho-japanese.aspx) for Japanese, etc.

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=htmlCellFormattingUnicode}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=htmlCellFormattingUnicode}} 

````C#
void pdfExporter_HTMLCellFormatting(object sender, HTMLCellFormattingEventArgs e)
{
    //The following sets unicode font for every cell.  
    e.HTMLCellElement.Styles.Remove("font-family");
    e.HTMLCellElement.Styles.Add("font-family", "Arial Unicode MS");
}

````
````VB.NET
Private Sub pdfExporter_HTMLCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs)
    'The following sets unicode font for every cell.  
    e.HTMLCellElement.Styles.Remove("font-family")
    e.HTMLCellElement.Styles.Add("font-family", "Arial Unicode MS")
End Sub

````

{{endregion}} 
# See Also
* [Export Data in a Group to Excel]({%slug winforms/gridview/exporting-data/export-data-in-a-group-to-excel%})

* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to Excel via ExcelML Format]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%})

* [Export to HTML]({%slug winforms/gridview/exporting-data/export-to-html%})

* [Overview]({%slug winforms/gridview/exporting-data/overview%})

* [Export to Excel]({%slug winforms/gridview/exporting-data/spread-export%})

* [Troubleshooting]({%slug winforms/gridview/exporting-data/troubleshooting%})

