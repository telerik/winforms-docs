---
title: Document Modes
page_title: Document Modes | RadPdfViewer
description: The document modes are controlled by a document presenter responsible for displaying the pages of the document.
slug: winforms/pdfviewer/ui/document-modes
tags: document presenters
published: True
position: 1
---

# Document Modes 

The document presenter is responsible for displaying the pages of the document, navigating in it, managing the selection markers, conversion between view coordinates and document location coordinates, plus proper response to mouse and touch events.

## Pages Mode

This document presenter displays the pages in a vertical order and is used by default by __RadPdfViewer__. There is a fixed margin between the pages, and each page is centered horizontally inside the __RadPdfViewer__.  

>caption Figure 1: Pages Mode
![pdfviewer-overview 001](images/pdfviewer-ui-documents-presenter001.gif)

## Single Page Mode (Fit Full Page)

This document presenter displays a single page at a time inside the viewer. The page is vertically and horizontally centered. In order to enable this mode, set the __FitFullPage__ property to *true*.

#### Fit Full Page

{{source=..\SamplesCS\PdfViewer\PdfUI.cs region=FitFullPage}} 
{{source=..\SamplesVB\PdfViewer\PdfUI.vb region=FitFullPage}} 

````C#
this.radPdfViewer1.FitFullPage = true;

````
````VB.NET
Me.RadPdfViewer1.FitFullPage = True

````

{{endregion}}

>caption Figure 2: Fit Full Width
![pdfviewer-overview 001](images/pdfviewer-ui-documents-presenter002.gif)

## Fit Full Width

This mode fills the window with each page and scroll through pages continuously. 

{{source=..\SamplesCS\PdfViewer\PdfUI.cs region=FitToWidth}} 
{{source=..\SamplesVB\PdfViewer\PdfUI.vb region=FitToWidth}} 

````C#
this.radPdfViewer1.FitToWidth = true;

````
````VB.NET
Me.RadPdfViewer1.FitToWidth = True

````

{{endregion}}

>caption Figure 3: Fit To Width
![pdfviewer-overview 001](images/pdfviewer-ui-documents-presenter003.gif)


# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Context Menu]({%slug winforms/pdfviewer/ui/context-menu%})
* [View Modes]({%slug winforms/pdfviewer/ui/viewer-modes%})