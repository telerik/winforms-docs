---
title: Printing support
page_title: Printing support | RadPdfViewer
description: This article demonstrates how RadPdfViewer can be printed. 
slug: winforms/pdfviewer/printing-support
tags: printing,support
published: True
position: 4
previous_url: pdfviewer-printing-support
---

# Printing support

RadPdfViewer can be used with [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}) just as any other control that supports printing – drag a __RadPrintDocument__ to the form and set the __Printed Object__ to the desired viewer. <br>![pdfviewer-printing-support](images/pdfviewer-printing-support001.png)

As such, RadPdfViewer allows you to benefit from the features that RadPrintDocument provides: header, footer, watermark, preview and settings dialogs.

## Using UI

__RadPdfViewerNavigator__ allows you to print the currently shown PDF document with a simple button click which opens the *Print Preview* dialog.

![pdfviewer-printing-support](images/pdfviewer-printing-support002.png)

## Printing with code

RadPdfViewer also exposes the two known methods which allow you to easily print the document without involving any complicated settings:

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=PrintMethods}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=PrintMethods}} 

````C#
this.radPdfViewer1.Print();
this.radPdfViewer1.PrintPreview();

````
````VB.NET
Me.RadPdfViewer1.Print()
Me.RadPdfViewer1.PrintPreview()

````

{{endregion}}