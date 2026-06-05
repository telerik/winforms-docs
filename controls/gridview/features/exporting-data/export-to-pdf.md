---
title: Export to PDF
page_title: Export to PDF - WinForms GridView Control
description: Learn how you can export your data to a PDF file in WinForms GridView.
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

<snippet id='gridview-gridviewpdfexport-initializepdfexporter-cs' />
<snippet id='gridview-gridviewpdfexport-initializepdfexporter-vb' />

### File Extension

The __FileExtension__ property allows you to change the default (*.pdf) file extension of the exported file:

#### Setting the file extension

<snippet id='gridview-gridviewpdfexport-setfileextension-cs' />
<snippet id='gridview-gridviewpdfexport-setfileextension-vb' />

### Hidden columns and rows option

__GridViewPdfExport__ uses the default enumeration of hidden column and row settings. You can choose one of the three options by setting __HiddenColumnOption__ and __HiddenRowOption__ properties. However, PDF do not support real hidden columns, so choosing the __ExportAsHidden__ will not behave the same as __ExportAlways__.

* ExportAlways

* DoNotExport (default)

* ExportAsHidden (brings the same result as ExportAlways option)


####  Setting the HiddenColumnOption

<snippet id='gridview-gridviewpdfexport-sethiddenpref-cs' />
<snippet id='gridview-gridviewpdfexport-sethiddenpref-vb' />

### Header and Footer

Before applying customizations to the headers and footers we need to enable them:

####  Enabling headers and footers

<snippet id='gridview-gridviewpdfexport-showheaderandfooter-cs' />
<snippet id='gridview-gridviewpdfexport-showheaderandfooter-vb' />

####  Customizing headers and footers

<snippet id='gridview-gridviewpdfexport-customizeheaderandfooter-cs' />
<snippet id='gridview-gridviewpdfexport-customizeheaderandfooter-vb' />

The __HeaderExported__ event can be used to perform custom drawing in the header. The following example shows how you can draw a two line header.

#### Using the HeaderExported event

<snippet id='gridview-gridviewpdfexport-headerexportedevent-cs' />
<snippet id='gridview-gridviewpdfexport-headerexportedevent-vb' />

### Summaries export option

The __SummariesExportOption__ property to specifies how to export summary items. There are four options to choose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

####  Setting summary items

<snippet id='gridview-gridviewpdfexport-setsummaryitems-cs' />
<snippet id='gridview-gridviewpdfexport-setsummaryitems-vb' />

### Fit to page

Use this property to make the grid fits to the PDF page width.

####  Setting FitToPageWidth

<snippet id='gridview-gridviewpdfexport-setfittopage-cs' />
<snippet id='gridview-gridviewpdfexport-setfittopage-vb' />

### Scale

You can use __Scale__ to change the grid size on the PDF. For example if __Scale__ = 1.2f means the grid will be 20% bigger.

####  Setting scale

<snippet id='gridview-gridviewpdfexport-setscale-cs' />
<snippet id='gridview-gridviewpdfexport-setscale-vb' />

__PDF Export Settings__ 

The __PDFExportSettings__ property supports various settings on PDF file level. You can set the following:

* Author

* Title

* Description

####  Using export settings

<snippet id='gridview-gridviewpdfexport-exportsettings-cs' />
<snippet id='gridview-gridviewpdfexport-exportsettings-vb' />

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

<snippet id='gridview-gridviewpdfexport-exportsettings-cs' />
<snippet id='gridview-gridviewpdfexport-exportsettings-vb' />

### Exporting to PDF

Two methods are responsible for exporting data to PDF. Both receive as a parameter the file name.     

* RunExport: Runs synchronously.

####  Running export

<snippet id='gridview-gridviewpdfexport-runexport-cs' />
<snippet id='gridview-gridviewpdfexport-runexport-vb' />

The __RunExport__ method has several overloads allowing the user to export using a stream as well:

####  Running export synchronously using a stream

<snippet id='gridview-gridviewpdfexport-streamrunexport-cs' />
<snippet id='gridview-gridviewpdfexport-streamrunexport-vb' />

* RunExportAsync: Runs on a thread different than the UI thread.

#### Running export asynchronously

<snippet id='gridview-gridviewpdfexport-runexportasync-cs' />
<snippet id='gridview-gridviewpdfexport-runexportasync-vb' />

The __RunExportAsync__ method has several overloads allowing the user to export using a stream as well:

<snippet id='gridview-gridviewpdfexport-streamrunexportasync-cs' />
<snippet id='gridview-gridviewpdfexport-streamrunexportasync-vb' />

## Events

* CellFormatting: Fires for every cell which is being exported

* CellPaint: Fires when a cell is being drawn

## Exporting Data using ExportToPDF object

__Initialization__

Before running export to PDF, you have to initialize the __ExportToPDF__ class. The constructor takes one parameter: __RadGridView__ which will be exported: 

####  ExportToPDF initialization

<snippet id='gridview-exporttopdf1-exporttopdfinitialization-cs' />
<snippet id='gridview-exporttopdf1-exporttopdfinitialization-vb' />

### File Extension

The __FileExtension__ property allows you to change the default (*.pdf) file extension of the exported file:

####  Setting the FileExtension

<snippet id='gridview-exporttopdf1-settingthefileextension-cs' />
<snippet id='gridview-exporttopdf1-settingthefileextension-vb' />

### Hidden columns and rows option

__ExportToPDF__ uses the default enumeration of hidden column and row settings. You can choose one of the three options by setting __HiddenColumnOption__ and __HiddenRowOption__ properties. However, PDF do not support real hidden columns, so choosing the ExportAsHidden will not behave the same as ExportAlways.

* ExportAlways

* DoNotExport (default)

* ExportAsHidden  (brings the same result as ExportAlways option)

####  Setting the HiddenColumnOption

<snippet id='gridview-exporttopdf1-settingthehiddencolumnoption-cs' />
<snippet id='gridview-exporttopdf1-settingthehiddencolumnoption-vb' />

### Exporting Visual Settings

Using the __ExportToPDF__ class allows you to export the visual settings (themes) to the PDF file. __ExportToPDF__ also provides a visual representation of the alternating row color. This feature works only if __EnableAlternatingRow__ property is set to *true*. Note that it does not transfer the alternating row settings that come from the theme of the control. RadGridView will also export the conditional formatting to the PDF file. You can enable exporting visual settings through the __ExportVisualSettings__ property. The default value of this property is *false*. 

####  Setting the ExportVisualSettings

<snippet id='gridview-exporttopdf1-settingexportvisualsettings-cs' />
<snippet id='gridview-exporttopdf1-settingexportvisualsettings-vb' />

### Page Title 

You can add a page title which will be presented on every page of the PDF document through __PageTitle__property.

#### Setting the PageTitle

<snippet id='gridview-exporttopdf1-settingthepagetitleproperty-cs' />
<snippet id='gridview-exporttopdf1-settingthepagetitleproperty-vb' />

### Summaries export option 

You can use __SummariesExportOption__ property to specify how to export summary items. There are four options to choose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

####  Setting the SummariesExportOption

<snippet id='gridview-exporttopdf1-settingsummariesexportoption-cs' />
<snippet id='gridview-exporttopdf1-settingsummariesexportoption-vb' />

### Fit to page 

Use this property to make the grid fits to the PDF page width.

####  Setting the FitToPageWidth

<snippet id='gridview-exporttopdf1-settingfittopagewidth-cs' />
<snippet id='gridview-exporttopdf1-settingfittopagewidth-vb' />

### Scale 

You can use __Scale__ to change the grid size on the PDF. For example if __Scale__ = 1.2f means the grid will be 20% bigger.

####  Setting the Scale

<snippet id='gridview-exporttopdf1-settingscale-cs' />
<snippet id='gridview-exporttopdf1-settingscale-vb' />

### TableBorderThickness 

This property controls the thickness of the table border. The default value is 0 and border is not drawn. 

####  Setting the TableBorderTickness

<snippet id='gridview-exporttopdf1-settingtablebordertickness-cs' />
<snippet id='gridview-exporttopdf1-settingtablebordertickness-vb' />

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

<snippet id='gridview-exporttopdf1-pdfdocumentsettings-cs' />
<snippet id='gridview-exporttopdf1-pdfdocumentsettings-vb' />

## RunExport method

Exporting data to PDF is done through the __RunExport__ method of ExportToPDF object. The RunExport method accepts the following parameter:

* __fileName__ - the name of the exported file

Consider the code sample below:

####  Exporting to PDF format

<snippet id='gridview-exporttopdf1-exportingtopdfformat-cs' />
<snippet id='gridview-exporttopdf1-exportingtopdfformat-vb' />

## Events

__HTMLCellFormating__ event: Since the the export process first renders RadGridView in XHTML format you can use the event which comes from ExportToHTML class: __HTMLCellFormatting__.  It gives access to a single cell  HTML element that allows you to make additional formatting for every HTML cell related to the exported RadGridView:

####  Handling the HTMLCellFormatting event

<snippet id='gridview-exporttopdf1-hanglinghtmlcellformattingevent-cs' />
<snippet id='gridview-exporttopdf1-hanglinghtmlcellformattingevent-vb' />

## Fonts / Unicode support

__ExportToPDF__ supports all left-to-right languages when the appropriate Unicode font is set. The most common international font is [Arial Unicode MS](http://support.microsoft.com/kb/287247), because it covers all Unicode characters. Of course, you can use other-specific fonts such as [Batang](http://www.ascenderfonts.com/font/batang-korean.aspx) for Korean, [SimSun](http://www.ascenderfonts.com/font/simsun-simplified-chinese.aspx) for Chinese, [MS Mincho](http://www.ascenderfonts.com/font/ms-mincho-japanese.aspx) for Japanese, etc.

<snippet id='gridview-exporttopdf1-htmlcellformattingunicode-cs' />
<snippet id='gridview-exporttopdf1-htmlcellformattingunicode-vb' />

# See Also
* [Export Data in a Group to Excel]({%slug winforms/gridview/exporting-data/export-data-in-a-group-to-excel%})

* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to Excel via ExcelML Format]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%})

* [Export to HTML]({%slug winforms/gridview/exporting-data/export-to-html%})

* [Overview]({%slug winforms/gridview/exporting-data/overview%})

* [Export to Excel]({%slug winforms/gridview/exporting-data/spread-export%})

* [Troubleshooting]({%slug winforms/gridview/exporting-data/troubleshooting%})

