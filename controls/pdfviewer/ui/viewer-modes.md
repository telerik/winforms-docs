---
title: Viewer Modes
page_title: Viewer Modes - WinForms PdfViewer Control
description: There are three FixedDocumentViewerModes which specify the behavior of WinForms PdfViewer.
slug: winforms/pdfviewer/ui/viewer-modes
tags: viewer modes
published: True
position: 2
---

# Viewer Modes

There are three __FixedDocumentViewerModes__ which specify the behavior of __RadPdfViewer__ when you left-click in the document and move the mouse around (without releasing the left button of the mouse):

* *None*: The control does nothing;

* *Pan*: The document is scrolled in the respective direction;

>caption Figure 1: Pan

![WinForms RadPdfViewer Pan](images/pdfviewer-ui-viewer-modes001.gif)

* *TextSelection* – selection is initiated, which stops when you release the button of the mouse;

>caption Figure 2: TextSelection

![WinForms RadPdfViewer TextSelection](images/pdfviewer-ui-viewer-modes002.gif)

## Specify the Viewer Mode Using UI

The viewer mode can be changed using the __RadPdfViewerNavigator__ (as shown in the picture).
>caption Figure 3: Using the UI

![WinForms RadPdfViewer Using the UI](images/pdfviewer-ui-viewer-modes003.png)

## Specify the  Viewer Mode in Code

The mode of the viewer is set using the __ViewerMode__ property:

#### With Code

{{source=..\SamplesCS\PdfViewer\PdfUI.cs region=ViewerMode}} 
{{source=..\SamplesVB\PdfViewer\PdfUI.vb region=ViewerMode}} 

````C#
this.radPdfViewer1.ViewerMode = FixedDocumentViewerMode.TextSelection;

````
````VB.NET
Me.RadPdfViewer1.ViewerMode = FixedDocumentViewerMode.TextSelection

````

{{endregion}}

# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Document Modes]({%slug winforms/pdfviewer/ui/document-modes%})
* [View Modes]({%slug winforms/pdfviewer/ui/viewer-modes%})
