---
title: Settings
page_title: Settings | UI for WinForms Documentation
description: Settings
slug: winforms/wordsprocessing/formats-and-conversion/pdf/settings
tags: settings
published: True
position: 2
---

# Settings



__PdfFormatProvider__ allows to export of __RadFlowDocument__ to PDF. Using the provider’s ExportSettings property you can control how exactly the result file should be exported.
      

## Export Settings

The __PdfExportSettings__ class derives from the __Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export.PdfExportSettings__ class related to the [RadPdfProcessing]({%slug winforms/pdfprocessing%}) library. Thus, the export allows you to controls the encryption, image quality and other PDF format related properties. More information on the settings are available in the [export settings article for RadPdfProcessing]({%slug winforms/pdfprocessing/formats-and-conversion/pdf/settings%}).
        

__Example 1__ demonstrates how to export a __RadFlowDocument__ instance to PDF and specify that it needs to be PDF/A compliant.
        

>tip In order to specify export settings to the PdfFormatProvider you need to add both the Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export and Telerik.Windows.Documents.Flow.FormatProviders.Pdf.Export namespaces. In __Example 1__ the *Fixed* alias corresponds to the *Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export* namespace.
>

#### Example 1: Export PDF/A Compliant Document

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Pdf\WordsProcessingPdfSettings.cs region=radwordsprocessing-formats-and-conversion-pdf-settings_0}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Pdf\WordsProcessingPdfSettings.vb region=radwordsprocessing-formats-and-conversion-pdf-settings_0}} 

````C#
Telerik.Windows.Documents.Flow.FormatProviders.Pdf.PdfFormatProvider provider = new Telerik.Windows.Documents.Flow.FormatProviders.Pdf.PdfFormatProvider();
Telerik.Windows.Documents.Flow.FormatProviders.Pdf.Export.PdfExportSettings settings = new Telerik.Windows.Documents.Flow.FormatProviders.Pdf.Export.PdfExportSettings();
settings.ComplianceLevel = Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export.PdfComplianceLevel.PdfA2B;
provider.ExportSettings = settings;
using (Stream output = File.OpenWrite("sample.pdf"))
{
    Telerik.Windows.Documents.Flow.Model.RadFlowDocument document = CreateRadFlowDocument();
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As New Telerik.Windows.Documents.Flow.FormatProviders.Pdf.PdfFormatProvider()
Dim settings As New Telerik.Windows.Documents.Flow.FormatProviders.Pdf.Export.PdfExportSettings()
settings.ComplianceLevel = Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export.PdfComplianceLevel.PdfA2B
provider.ExportSettings = settings
Using output As Stream = File.OpenWrite("sample.pdf")
    Dim document As Telerik.Windows.Documents.Flow.Model.RadFlowDocument = CreateRadFlowDocument()
    provider.Export(document, output)
End Using

````

{{endregion}} 

>note PDF/A standard requires documents to contain all fonts used in them within the document. RadPdfProcessing does not support embedding of the standard 14 fonts used in PDF documents that are listed[here]({%slug winforms/pdfprocessing/concepts/fonts%}), so using them will prevent the document from complying with the standard.
>

## Extensibility Manager

The __ExtensibilityManager__ property of the PdfExportSettings class allows to easily extend the currently supported functionality of the RadFlowDocument export to PDF.
        

ExtensibilityManager provides an option to control how lists with different __NumberingStyle__ options are exported to PDF. This can be achieved by registering custom implementation of the __INumberingStyleConverter__ interface for some concrete __NumberingStyle__ enumeration value.
        

__Example 2__ shows how to register a custom *ChineseCountingConverter* class instance that converts a number with NumberingStyle.ChineseCounting.

#### Example 2: Register Numbering Style Converter

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Pdf\WordsProcessingPdfSettings.cs region=radwordsprocessing-formats-and-conversion-pdf-settings_1}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Pdf\WordsProcessingPdfSettings.vb region=radwordsprocessing-formats-and-conversion-pdf-settings_1}} 

````C#
provider.ExportSettings.ExtensibilityManager.RegisterNumberingStyleConverter(Telerik.Windows.Documents.Flow.Model.Lists.NumberingStyle.ChineseCounting, new ChineseCountingConverter());

````
````VB.NET
provider.ExportSettings.ExtensibilityManager.RegisterNumberingStyleConverter(Telerik.Windows.Documents.Flow.Model.Lists.NumberingStyle.ChineseCounting, New ChineseCountingConverter())

````

{{endregion}} 

>note PDF/A standard requires documents to contain all fonts used in them within the document. RadPdfProcessing does not support embedding of the standard 14 fonts used in PDF documents that are listed[here]({%slug winforms/pdfprocessing/concepts/fonts%}), so using them will prevent the document from complying with the standard.
>

