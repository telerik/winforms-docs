---
title: Export to PDF
page_title: Export to PDF | UI for WinForms Documentation
description: Export to PDF
slug: winforms/gridview/exporting-data/export-to-pdf
tags: export,to,pdf
published: True
position: 6
---

# Export to PDF



## Overview



Export to PDF offers various rendering settings. RadGridView will be first be rendered as an XHTML table and the export process will
        convert that table to a PDF document. That said, Export to PDF supports all of the ExportToHTML settings, but it also adds some PDF specific ones.

>note The PDF  export functionality is located in the __TelerikData.dll__ assembly. You need to include the following
     namespaces in order to access the types contained in TelerikData:
>
* Telerik.WinControls.Data
* Telerik.WinControls.UI.Export>




## Exporting Data



__Initialize ExportToPDF object__

Before running export to PDF, you have to initialize the ExportToPDF class. The constructor takes one parameter: the RadGridView that will be exported:#_[C#]  ExportToPDF initialization_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=exportToPdfInitialization}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=exportToPdfInitialization}} 

````C#
            ExportToPDF exporter = new ExportToPDF(this.radGridView1);
````
````VB.NET        Dim exporter As New ExportToPDF(Me.RadGridView1)
        '
````

{{endregion}} 




__File Extension__

The __FileExtension__ property allows you to change the default (*.pdf) file extension of the exported file:#_[C#]  Setting the FileExtension_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTheFileExtension}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTheFileExtension}} 

````C#
            exporter.FileExtension = "pdf";
````
````VB.NET        exporter.FileExtension = "pdf"
        '
````

{{endregion}} 




__Hidden columns and rows option__

ExportToPDF uses the default enumeration of hidden column and row settings. You can choose one of the three options
        by setting __HiddenColumnOption__and __HiddenRowOption__properties. However, PDF do not support real hidden columns,
        so choosing the ExportAsHidden will not behave the same as ExportAlways.

* ExportAlways

* DoNotExport (default)

* ExportAsHidden  (brings the same result as ExportAlways option)#_[C#]  Setting the HiddenColumnOption_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTheHiddenColumnOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTheHiddenColumnOption}} 

````C#
            exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;
````
````VB.NET        exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport
        '
````

{{endregion}} 




__Exporting Visual Settings__

Using the ExportToPDF class allows you to export the visual settings (themes) to the PDF file. ExportToPDF also provides
        a visual representation of the alternating row color. This feature works only if __EnableAlternatingRow__ property 
        is set to *true*. Note that it does not transfer the alternating row settings that come from the theme of the control.
        RadGridView will also export the conditional formatting to the PDF file.
        You can enable exporting visual settings through the ExportVisualSettings property. The default value of this property is *false*.#_[C#]  Setting the ExportVisualSettings_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingExportVisualSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingExportVisualSettings}} 

````C#
            exporter.ExportVisualSettings = true;
````
````VB.NET        exporter.ExportVisualSettings = True
        '
````

{{endregion}} 




__Page Title__

You can add a page title which will be presented on every page of the PDF document through __PageTitle__property.#_[C#]  Setting the PageTitle_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingThePageTitleProperty}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingThePageTitleProperty}} 

````C#
            exporter.PageTitle = "Title";
````
````VB.NET        exporter.PageTitle = "Title"
        '
````

{{endregion}} 




__Summaries export option__

You can use __SummariesExportOption__ property to specify how to export summary items. There are four options to choose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport#_[C#]  Setting the SummariesExportOption_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingSummariesExportOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingSummariesExportOption}} 

````C#
            exporter.SummariesExportOption = SummariesOption.ExportAll;
````
````VB.NET        exporter.SummariesExportOption = SummariesOption.ExportAll
        '
````

{{endregion}} 




__Fit to page__

Use this property to make the grid fits to the PDF page width.#_[C#]  Setting the FitToPageWidth_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingFitToPageWidth}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingFitToPageWidth}} 

````C#
            exporter.FitToPageWidth = true;
````
````VB.NET        exporter.FitToPageWidth = True
        '
````

{{endregion}} 




__Scale__

You can use __Scale__to change the grid size on the pdf. For example if __Scale__= 1.2f means the grid will be 20% bigger.#_[C#]  Setting the Scale_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingScale}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingScale}} 

````C#
            exporter.Scale = 1.2f;
````
````VB.NET        exporter.Scale = 1.2F
        '
````

{{endregion}} 






__TableBorderThickness__

This property controls the thickness of the table border. The default value is 0 and border is not drawn. #_[C#]  Setting the TableBorderTickness_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=settingTableBorderTickness}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=settingTableBorderTickness}} 

````C#
            exporter.TableBorderThickness = 1;
````
````VB.NET        exporter.TableBorderThickness = 1
        '
````

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

* Title#_[C#]  Setting the PDFDocumentSettings_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=pdfDocumentSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=pdfDocumentSettings}} 

````C#
            exporter.PdfExportSettings.PageHeight = 210;
            exporter.PdfExportSettings.PageWidth = 297;
````
````VB.NET        exporter.PdfExportSettings.PageHeight = 210
        exporter.PdfExportSettings.PageWidth = 297
        '
````

{{endregion}} 






## RunExport method



Exporting data to PDF is done through the __RunExport__ method of ExportToPDF object. The RunExport method accepts the following parameter:

* __fileName__ - the name of the exported file

Consider the code sample below:#_[C#]  Exporting to PDF format_

	



{{source=..\SamplesCS\GridView\ExportingData\ExportToPDF1.cs region=exportingToPdfFormat}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToPDF1.vb region=exportingToPdfFormat}} 

````C#
            string fileName = "c:\\ExportedData.pdf";
            exporter.RunExport(fileName);
````
````VB.NET        Dim fileName As String = "c:\ExportedData.pdf"
        exporter.RunExport(fileName)
        '
````

{{endregion}} 




## Events

____

__HTMLCellFormating__event:
		Since the the export process first renders RadGridView in XHTML format you can use the event which comes from ExportToHTML class: __HTMLCellFormatting__.
    It gives access to a single cell’s  html element that allows you to make additional formatting for every html cell related to the exported RadGridView: #_[C#]  Handling the HTMLCellFormatting event_

	



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
    '
````

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
        #_[C#]_

	



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
    '
````

{{endregion}} 



