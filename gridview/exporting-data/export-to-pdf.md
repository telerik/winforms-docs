---
title: Export to PDF
page_title: Export to PDF
description: Export to PDF
slug: gridview-exporting-data-export-to-pdf
tags: export,to,pdf
published: True
position: 6
---

# Export to PDF



## Overview



Export to PDF offers various rendering settings. RadGridView will be first be rendered as an XHTML table and the export process will
        convert that table to a PDF document. That said, Export to PDF supports all of the ExportToHTML settings, but it also adds some PDF specific ones.

>The PDF  export functionality is located in the __TelerikData.dll__ assembly. You need to include the following
     namespaces in order to access the types contained in TelerikData:

* Telerik.WinControls.Data

* Telerik.WinControls.UI.Export



## Exporting Data



__Initialize ExportToPDF object__

Before running export to PDF, you have to initialize the ExportToPDF class. The constructor takes one parameter: the RadGridView that will be exported:

#### __[C#]  ExportToPDF initialization__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=exportToPdfInitialization}}
	            ExportToPDF exporter = new ExportToPDF(this.radGridView1);   
	{{endregion}}



#### __[VB.NET]  ExportToPDF initialization__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=exportToPdfInitialization}}
	        Dim exporter As New ExportToPDF(Me.RadGridView1)
	{{endregion}}



__File Extension__

The __FileExtension__ property allows you to change the default (*.pdf) file extension of the exported file:

#### __[C#]  Setting the FileExtension__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTheFileExtension}}
	            exporter.FileExtension = "pdf";
	{{endregion}}



#### __[VB.NET]  Setting the FileExtension__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTheFileExtension}}
	        exporter.FileExtension = "pdf"
	{{endregion}}



__Hidden columns and rows option__

ExportToPDF uses the default enumeration of hidden column and row settings. You can choose one of the three options
        by setting __HiddenColumnOption__and __HiddenRowOption__properties. However, PDF do not support real hidden columns,
        so choosing the ExportAsHidden will not behave the same as ExportAlways.

* ExportAlways

* DoNotExport (default)

* ExportAsHidden  (brings the same result as ExportAlways option)

#### __[C#]  Setting the HiddenColumnOption__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTheHiddenColumnOption}}
	            exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;
	{{endregion}}



#### __[VB.NET]  Setting the HiddenColumnOption__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTheHiddenColumnOption}}
	        exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport
	{{endregion}}



__Exporting Visual Settings__

Using the ExportToPDF class allows you to export the visual settings (themes) to the PDF file. ExportToPDF also provides
        a visual representation of the alternating row color. This feature works only if __EnableAlternatingRow__ property 
        is set to *true*. Note that it does not transfer the alternating row settings that come from the theme of the control.
        RadGridView will also export the conditional formatting to the PDF file.
        You can enable exporting visual settings through the ExportVisualSettings property. The default value of this property is *false*.

#### __[C#]  Setting the ExportVisualSettings__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingExportVisualSettings}}
	            exporter.ExportVisualSettings = true;  
	{{endregion}}



#### __[VB.NET]  Setting the ExportVisualSettings__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingExportVisualSettings}}
	        exporter.ExportVisualSettings = True
	{{endregion}}



__Page Title__

You can add a page title which will be presented on every page of the PDF document through __PageTitle__property.

#### __[C#]  Setting the PageTitle__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingThePageTitleProperty}}
	            exporter.PageTitle = "Title";
	{{endregion}}



#### __[VB.NET]  Setting the PageTitle__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingThePageTitleProperty}}
	        exporter.PageTitle = "Title"
	{{endregion}}



__Summaries export option__

You can use __SummariesExportOption__ property to specify how to export summary items. There are four options to choose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

#### __[C#]  Setting the SummariesExportOption__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingSummariesExportOption}}
	            exporter.SummariesExportOption = SummariesOption.ExportAll;    
	{{endregion}}



#### __[VB.NET]  Setting the SummariesExportOption__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingSummariesExportOption}}
	        exporter.SummariesExportOption = SummariesOption.ExportAll
	{{endregion}}



__Fit to page__

Use this property to make the grid fits to the PDF page width.

#### __[C#]  Setting the FitToPageWidth__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingFitToPageWidth}}
	            exporter.FitToPageWidth = true;
	{{endregion}}



#### __[VB.NET]  Setting the FitToPageWidth__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingFitToPageWidth}}
	        exporter.FitToPageWidth = True
	{{endregion}}



__Scale__

You can use __Scale__to change the grid size on the pdf. For example if __Scale__= 1.2f means the grid will be 20% bigger.

#### __[C#]  Setting the Scale__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingScale}}
	            exporter.Scale = 1.2f;    
	{{endregion}}



#### __[VB.NET]  Setting the Scale__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingScale}}
	        exporter.Scale = 1.2F
	{{endregion}}





__TableBorderThickness__

This property controls the thickness of the table border. The default value is 0 and border is not drawn. 

#### __[C#]  Setting the TableBorderTickness__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTableBorderTickness}}
	            exporter.TableBorderThickness = 1;  
	{{endregion}}



#### __[VB.NET]  Setting the TableBorderTickness__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTableBorderTickness}}
	        exporter.TableBorderThickness = 1
	{{endregion}}



__PDF Export Settings__

The __PDFExportSettings__property supports various settings on PDF file level. You can set the following:

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

#### __[C#]  Setting the PDFDocumentSettings__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=pdfDocumentSettings}}
	            exporter.PdfExportSettings.PageHeight = 210;
	            exporter.PdfExportSettings.PageWidth = 297;   
	{{endregion}}



#### __[VB.NET]  Setting the PDFDocumentSettings__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=pdfDocumentSettings}}
	        exporter.PdfExportSettings.PageHeight = 210
	        exporter.PdfExportSettings.PageWidth = 297
	{{endregion}}





## RunExport method



Exporting data to PDF is done through the __RunExport__ method of ExportToPDF object. The RunExport method accepts the following parameter:

* __fileName__ - the name of the exported file

Consider the code sample below:

#### __[C#]  Exporting to PDF format__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=exportingToPdfFormat}}
	            string fileName = "c:\\ExportedData.pdf";
	            exporter.RunExport(fileName);
	{{endregion}}



#### __[VB.NET]  Exporting to PDF format__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=exportingToPdfFormat}}
	        Dim fileName As String = "c:\ExportedData.pdf"
	        exporter.RunExport(fileName)
	{{endregion}}



## Events

____

__HTMLCellFormating__event:
		Since the the export process first renders RadGridView in XHTML format you can use the event which comes from ExportToHTML class: __HTMLCellFormatting__.
    It gives access to a single cell’s  html element that allows you to make additional formatting for every html cell related to the exported RadGridView: 

#### __[C#]  Handling the HTMLCellFormatting event__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=hanglingHtmlCellFormattingEvent}}
	        void exporter_HTMLCellFormatting(object sender, Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs e)
	        {
	            if (e.GridColumnIndex == 1 && e.GridRowInfoType == typeof(GridViewDataRowInfo))
	            {
	                e.HTMLCellElement.Value = "Test value";
	                e.HTMLCellElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Orange));
	            }
	        }
	{{endregion}}



#### __[VB.NET]  Handling the HTMLCellFormatting event__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=hanglingHtmlCellFormattingEvent}}
	    Private Sub exporter_HTMLCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs)
	        If e.GridColumnIndex = 1 AndAlso e.GridRowInfoType.Equals(GetType(GridViewDataRowInfo)) Then
	            e.HTMLCellElement.Value = "Test value"
	            e.HTMLCellElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Orange))
	        End If
	    End Sub
	{{endregion}}



## Fonts / Unicode support

ExportToPDF supports all left-to-right languages when the 
appropriate Unicode font is set. The most common international font is [Arial Unicode MS](http://support.microsoft.com/kb/287247)
, 
because it covers all Unicode characters. Of course, you can use other 
language-specific fonts such as [Batang](http://www.ascenderfonts.com/font/batang-korean.aspx)
 for Korean, [SimSun](http://www.ascenderfonts.com/font/simsun-simplified-chinese.aspx)
 for Chinese, [MS Mincho](http://www.ascenderfonts.com/font/ms-mincho-japanese.aspx)
 for Japanese, etc.
        

#### __[C#]__

{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=htmlCellFormattingUnicode}}
	        void pdfExporter_HTMLCellFormatting(object sender, HTMLCellFormattingEventArgs e)
	        {
	            //The following sets unicode font for every cell.  
	            e.HTMLCellElement.Styles.Remove("font-family");
	            e.HTMLCellElement.Styles.Add("font-family", "Arial Unicode MS");
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=htmlCellFormattingUnicode}}
	    Private Sub pdfExporter_HTMLCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs)
	        'The following sets unicode font for every cell.  
	        e.HTMLCellElement.Styles.Remove("font-family")
	        e.HTMLCellElement.Styles.Add("font-family", "Arial Unicode MS")
	    End Sub
	{{endregion}}


