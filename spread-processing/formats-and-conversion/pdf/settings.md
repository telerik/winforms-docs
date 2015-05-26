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
        #_[C#] Example 1: Export Entire Workbook_

	

#_[VB NET] Example 1: Export Entire Workbook_

	



The following example shows how to export only two selected ranges from the active worksheet, ignoring print areas and page breaks:
        #_[C#] Example 1: Export Entire Workbook_

	

#_[VB NET] Example 1: Export Entire Workbook_

	


