---
title: Settings
page_title: Settings | UI for WinForms Documentation
description: Settings
slug: winforms/spread-processing/formats-and-conversion/pdf/settings
tags: settings
published: True
position: 2
---

# Settings



__PdfFormatProvider__ allows to import and export TXT documents. Additionally, there are a number of settings that allow you to modify the import/export. The current article outlines the available settings.
      

## 

__PdfExportSettings__ allow controlling how a Workbook is exported to PDF. Using __PdfExportSettings__ you may specify:
        

* __ExportWhat option__: Enumeration specifying whether to export the __Active Sheet__, the __Entire Workbook__ or the current __Selection__.
            

* __IgnorePrintArea option__: Boolean value indicating whether or not to ignore print area when exporting worksheets.
            

* __SelectedRanges property__: A list of ranges specifying which areas of the active worksheet should be exported. Using the __ExportWhat.Selection__ option you may specify that you need to export exactly this __SelectedRanges__ from the current worksheet, __ignoring PrintArea and PageBreaks__ from __WorksheetPageSetup__.
            

The following example shows how to export the Entire Workbook without ignoring the __PrintArea__ property in all worksheets:

#### Example 1: Export Entire Workbook

	
{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingPdfSettings.cs region=radspreadprocessing-formats-and-conversion-pdf-settings_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingPdfSettings.vb region=radspreadprocessing-formats-and-conversion-pdf-settings_0}} 

{{endregion}} 

The following example shows how to export only two selected ranges from the active worksheet, ignoring print areas and page breaks:


#### Example 2: Export range

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingPdfSettings.cs region=radspreadprocessing-formats-and-conversion-pdf-settings_1}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingPdfSettings.vb region=radspreadprocessing-formats-and-conversion-pdf-settings_1}} 

{{endregion}} 

>note
In order to specify file export settings to the __PdfFormatProvider__ you need to add both the Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export and Telerik.Windows.Documents.Flow.FormatProviders.Pdf.Export namespaces. In Example 3 the Fixed alias corresponds to the __Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Export__ namespace.
>


Another export option is to specify settings specific to the PDF format to the exported document. Example 3 demonstrates how to utilize the PdfFileSettings property in order to export a PDF/A-compliant document.

#### Example 3: Export PDF/A Compliant Document

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingPdfSettings.cs region=radspreadprocessing-formats-and-conversion-pdf-settings_2}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingPdfSettings.vb region=radspreadprocessing-formats-and-conversion-pdf-settings_2}} 

{{endregion}} 