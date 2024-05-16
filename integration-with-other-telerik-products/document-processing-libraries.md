---
title: Telerik Document Processing  Libraries 
page_title: Document Processing Libraries - Integration with Telerik Products
description: "Get started with Telerik UI for {{ site.framework }} and learn how to work with the PdfProcessing, SpreadStreamProcessing, WordsProcessing, and ZipLibrary libraries as part of the Telerik Document Processing Libraries."
slug: document-processing-libraries-overview
tags: document, processing, pdf, word, spread, stream, zip, doc, cross-platform
position: 11
---

# Telerik Document Processing Libraries

[Telerik Document Processing Libraries](https://docs.telerik.com/devtools/document-processing/introduction) is a bundle of UI-independent cross-platform libraries that enable you to process the most commonly used flow, fixed and spreadsheet document formats for web and desktop. The Document Processing library allows you to create, import, modify and export documents in the [supported formats](https://docs.telerik.com/devtools/document-processing/introduction#supported-formats) without relying on external dependencies like Adobe Acrobat or Microsoft Office:

![Telerik Document Processing  Libraries ](images/Telerik_Document_Processing_Libraries.png) 

|Library|Description|
|----|----|
| [RadPdfProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview)|A processing library that allows you to create, import, and export PDF documents from your code. You can use it in any web or desktop .NET application without relying on third-party software like Adobe Acrobat.|
|[RadSpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview)|A powerful library that enables you to create applications with native support for spreadsheet documents. With RadSpreadProcessing, you can create spreadsheets from scratch, modify existing documents or convert between the most common spreadsheet formats. You can save the generated workbook to a local file, stream, or stream it to the client browser.|
|[RadSpreadStreamProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadstreamprocessing/overview)|Spread streaming is a document processing paradigm that allows you to create or read big spreadsheet documents with great performance and minimal memory footprint. The key for the memory efficiency is that the spread streaming library writes the spreadsheet content directly to a stream without creating and preserving the spreadsheet document model in memory.|
|[RadWordsProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radwordsprocessing/overview)|A processing library that allows you to create, modify and export documents to a variety of formats. Through the API, you can access each element in the document and modify, remove it or add a new one. The generated content you can save as a stream, as a file, or sent it to the client browser.|
|[RadZipLibrary](https://docs.telerik.com/devtools/document-processing/libraries/radziplibrary/overview)| It allows you to compress and combine files in ZIP archives, browse and extract files from existing ZIP archives and compress streams for easy file shipping and reduced storage space.|

## Available Versions

Telerik Document Processing Libraries are available in **.NET Framework** and **.NET Standard (.NET Core)** compatible versions. Both versions are [available as NuGet packages](https://docs.telerik.com/devtools/document-processing/getting-started/installation/nuget-packages). Read more in the *[Getting Started with Telerik Document Processing Libraries](https://docs.telerik.com/devtools/document-processing/getting-started/getting-started)* article.

## Configuration Wizard

Telerik Document Processing Libraries' [Configuration Wizard](https://docs.telerik.com/devtools/document-processing/integration/integration-with-visual-studio) comes with the Visual Studio Extensions of several Telerik bundles. 

## Telerik UI for WinForms Integration

As other frameworks, Telerik UI for WinForms controls utilize document processing libraries to take most of its capabilities. In the following section we will list which controls are using these libraries.

#### RadPdfViewer

[RadPdfViewer]({%slug winforms/pdfviewer%}) enables you to easily load and display PDF documents natively in your application without using any third-party tools except Telerik’s WinForms toolbox. The control is optimized to work together with [RadPdfProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview) library model.

#### RadSpreadsheet

The [RadSpreadsheet]({%slug radspreadsheet-overview%}) control allows editing tabular data utilizing a variety of cell formatting options, styles and themes. The control utilizes the API defined in the [RadSpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) library.

#### RadGridView 

The [RadGridView]({%slug winforms/gridview%}) enables you to create fully customizable and highly interactive interfaces for display and management of large data. The control utilize different parts of Telerik Document Processing Libraries, thus allowing you to export the control into different formats: xlsx, csv, pdf or txt.

#### RadTreeView

The [RadTreeView] control facilitates display, management, and navigation of hierarchical data structures. The [__TreeViewSpreadExport__]({%slug winforms/treeview/export-data/spread-export%}) class utilize the [RadSpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) library. Thus allowing you to export the control into different formats: xlsx, csv, pdf or txt.


## See Also

* [Getting Started with Telerik Document Processing Libraries](https://docs.telerik.com/devtools/document-processing/getting-started/getting-started#getting-started-with-telerik-document-processing)
* [Installing on Your Computer](https://docs.telerik.com/devtools/document-processing/getting-started/installation/installing-on-your-computer)
* [Trial Version and Commercial License](https://docs.telerik.com/devtools/document-processing/introduction#trial-version-and-commercial-license)
* [System Requirements](https://docs.telerik.com/devtools/document-processing/getting-started/installation/system-requirements)
