---
title: Export RadGridView in Docx document using RadWordsProcessing
description: An example that demonstrates how to export RadGridView in docx file  
type: how-to
page_title: Export RadGridView in Docx document using RadWordsProcessing
slug: gridview-export-in-docx
position: 28
tags: gridview, export, docx, document, wordsprocessing
res_type: kb
---

## Environment

| Product | Version | Author |
| --- | --- | --- |
| RadGridView for WinForms | 2024.2.514 | [Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

RadGridView supports exporting its content to Excel, CSV, HTML, and PDF. For more information see [Exporting Data]({%slug winforms/gridview/exporting-data/overview%}). RadGridView doesn't support exporting to a .docx file out of the box. The following example describes how you can achieve such format conversion and export the grid to .docx document.

## Solution
                                        
Use the [GridViewSpreadExport]({%slug winforms/gridview/exporting-data/spread-export%}) to export the data to xlsx file. Then use the [RadWordsProcessing library](https://docs.telerik.com/devtools/document-processing/libraries/radwordsprocessing/overview) to import the exported file and then export it to .docx format. Please refer to the following code snippet: 


#### Export RadGridView in Docx document

````C#
private void radButton_Click(object sender, EventArgs e)
{
    GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.radGridView1);
    spreadExporter.ExportFormat = Telerik.WinControls.Export.SpreadExportFormat.Txt;
    SpreadExportRenderer exportRenderer = new SpreadExportRenderer();
    spreadExporter.RunExport(@"..\..\exportedFile.xlsx", exportRenderer);
    Telerik.Windows.Documents.Flow.FormatProviders.Txt.TxtFormatProvider txtProvider = new Telerik.Windows.Documents.Flow.FormatProviders.Txt.TxtFormatProvider();
    RadFlowDocument document;
    using (Stream input = File.OpenRead(@"..\..\exportedFile.xlsx"))
    {
        document = txtProvider.Import(input);
    }

    Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider provider = new Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider();
    using (Stream output = File.OpenWrite(@"..\..\Sample.docx"))
    {
        provider.Export(document, output);
    }
}

````
````VB.NET
Private Sub radButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim spreadExporter As GridViewSpreadExport = New GridViewSpreadExport(Me.radGridView1)
    spreadExporter.ExportFormat = Telerik.WinControls.Export.SpreadExportFormat.Txt
    Dim exportRenderer As SpreadExportRenderer = New SpreadExportRenderer()
    spreadExporter.RunExport("..\..\exportedFile.xlsx", exportRenderer)
    Dim txtProvider As Telerik.Windows.Documents.Flow.FormatProviders.Txt.TxtFormatProvider = New Telerik.Windows.Documents.Flow.FormatProviders.Txt.TxtFormatProvider()
    Dim document As RadFlowDocument
    Using input As Stream = File.OpenRead("..\..\exportedFile.xlsx")
        document = txtProvider.Import(input)
    End Using

    Dim provider As Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider = New Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider()
    Using output As Stream = File.OpenWrite("..\..\Sample.docx")
        provider.Export(document, output)
    End Using
End Sub

````

