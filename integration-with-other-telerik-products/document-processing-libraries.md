---
title: Telerik Document Processing  Libraries 
page_title: Document Processing Libraries - Integration with Telerik Products
description: "Get started with Telerik UI for {{ site.framework }} and learn how to work with the PdfProcessing, SpreadStreamProcessing, WordsProcessing, and ZipLibrary libraries as part of the Telerik Document Processing Libraries."
slug: document-processing-libraries-overview
tags: document, processing, pdf, word, spread, stream, zip, doc, cross-platform
position: 0
---

# Telerik Document Processing Libraries

[Telerik Document Processing Libraries](https://docs.telerik.com/devtools/document-processing/introduction) is a bundle of UI-independent cross-platform libraries that enable you to process the most commonly used flow, fixed and spreadsheet document formats for web and desktop. The Document Processing library allows you to create, import, modify and export documents in the [supported formats](https://docs.telerik.com/devtools/document-processing/introduction#supported-formats) without relying on external dependencies like Adobe Acrobat or Microsoft Office:

![Telerik Document Processing  Libraries ](images/Telerik_Document_Processing_Libraries.png) 

## Libraries and Tools

Telerik Document Processing features the following libraries and tools:

<article-card-container>
  <article-card
        href="https://www.telerik.com/document-processing-libraries/documentation/libraries/radpdfprocessing/overview"
        src="./images/pdfprocessing-banner.png"
        darkSrc="./images/pdfprocessing-banner.png"
        title="RadPdfProcessing"
        subTitle="Document Processing"
        description="Enables the creation, editing, and export of PDF files in your .NET applications. The library supports interactive forms and form filling, as well as digital signatures.">
  </article-card>
  <article-card
        href="https://www.telerik.com/document-processing-libraries/documentation/libraries/radspreadprocessing/overview"
        src="./images/spreadprocessing-banner.jpg"
        darkSrc="./images/spreadprocessing-banner.jpg"
        title="RadSpreadProcessing"
        subTitle="Document Processing"
        description="Enables you to work with spreadsheet documents – create ones from scratch, modify existing documents or convert between the most common spreadsheet formats.">
  </article-card>
  <article-card
        href="https://www.telerik.com/document-processing-libraries/documentation/libraries/radspreadstreamprocessing/overview"
        src="./images/spreadstreamprocessing-banner.png"
        darkSrc="./images/spreadstreamprocessing-banner.png"
        title="RadSpreadStreamProcessing"
        subTitle="Document Processing"
        description="Generates big spreadsheet documents with great performance and minimal memory footprint in your .NET applications.">
  </article-card>
  <article-card
        href="https://www.telerik.com/document-processing-libraries/documentation/libraries/radwordsprocessing/overview"
        src="./images/wordsprocessing-banner.png"
        darkSrc="./images/wordsprocessing-banner.png"
        title="RadWordsProcessing"
        subTitle="Document Processing"
        description="Allows Word-like document manipulations in .NET applications and enables end-users to create, modify and export documents to various formats.">
  </article-card>
  <article-card
        href="https://www.telerik.com/document-processing-libraries/documentation/libraries/radziplibrary/overview"
        src="./images/ziplibrary-banner.png"
        darkSrc="./images/ziplibrary-banner.png"
        title="RadZipLibrary"
        subTitle="Document Processing"
        description="Can compress data like images, DOCX, PDF, or any other type of files and send them over the wire. Thus, you will achieve fast and secure transactions.">
  </article-card>
    <article-card
        href="https://www.telerik.com/document-processing-libraries/documentation/ai-tools/agent-tools/overview"
        src="./images/agent-tools-banner.png"
        darkSrc="./images/agent-tools-banner.png"
        title="AI Tools"
        subTitle="Agent Tools"
        description="Provides document processing capabilities designed to be exposed to AI agents.">
  </article-card>
</article-card-container>

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


#### RadPivotGrid

[RadPivotGrid]({%slug winforms/pivotgrid%}) for WinForms is a control which provides functionality similar to the functionality of PivotTables in MS Excel. It takes large chunks of data and summarizes it in a human readable way by the help of aggregates and field descriptors. The control utilizes the API defined in the [RadSpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) library to export the control into different formats: xlsx, csv, pdf and txt. 

#### RadListView

[RadListView]({%slug winforms/listview%}) is a bindable control for representing and editing list data with lots of customization abilities. The control utilizes the API defined in the [RadSpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) library to export the control into different formats: xlsx, csv, pdf and txt. 

#### PropertyGrid

[RadPropertyGrid]({%slug winforms/propertygrid%}) for WinForms displays the properties of a given object in a user-friendly way allowing the end-user to edit these properties using our editors. The control utilizes the API defined in the [RadSpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) library to export the control into different formats: xlsx, csv, pdf and txt.

## See Also

* [Getting Started with Telerik Document Processing Libraries](https://docs.telerik.com/devtools/document-processing/getting-started/getting-started#getting-started-with-telerik-document-processing)
* [Installing on Your Computer](https://docs.telerik.com/devtools/document-processing/getting-started/installation/installing-on-your-computer)
* [System Requirements](https://docs.telerik.com/devtools/document-processing/getting-started/installation/system-requirements)
