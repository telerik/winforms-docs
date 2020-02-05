---
title: Properties, Methods and Events
page_title: Properties, Methods, Events | RadPdfViewer
description: RadPdfViewer enables you to easily load and display PDF documents natively in your application without using any third-party tools except Telerikâ€™s WinForms toolbox.
slug: winforms/pdfviewer/properties-methods-and-events
tags: pdfviewer, properties, methods, events
published: True
position: 4
---

# Properties

|Property|Description|
|------|------|
|__HorizontalScrollState__|Gets or sets the display state of the horizontal scroll bar.|
|__VerticalScrollState__|Gets or sets the display state of the vertical scroll bar.|
|__EnableThumbnails__|Gets or sets whether the thumbnail element is visible.|
|__ContainerElement__|Gets the which represents the elements container of the control.|
|__PdfViewerElement__|Gets the which represents the main element of the control.|
|__AnnotationsColor__|Gets or sets the background color of the annotations when they are pressed.|
|__FitToWidth__|Fit to window width|
|__FitFullPage__|Fit one full page to control|
|__SelectionColor__|Gets or sets the color that highlights the current selection.|
|__ScaleFactor__|Gets or sets the factor by which the document is scaled.|
|__Document__|Gets the currently loaded|
|__ReadingMode__|Gets or sets whether the entire document is loaded at the beginning or pages are loaded on demand.|
|__RadContextMenu__|Gets or sets the associated . By default this is .|
|__ViewerMode__|Gets or sets the current viewer mode - Pan, TextSelection or None.|
|__BackColor__|RadPdfViewer consists of multiple visual elements and separate settings are provided to customize their appearance. Current BackColor property might be ignored.|
|__ForeColor__|RadPdfViewer consists of multiple visual elements and separate settings are provided to customize their appearance. Current ForeColor property might be ignored.|
|__ThumbnailListWidth__|Get or Set the width of the Thumbnail list|
|__PrintScalePageToPaperSize__|Scale page when printing to fit the paper size without keeping the aspect ratio.|
|__PrintOrientation__|Set or get the page orientation when printing.|
|__PdfViewerElement.AllowSignatureDialog__|Allows you to disable the SignatureDialog and SingSignatureDialog|
|__PdfViewerElement.AllowSignSignatureDialog__|Allows you to disable the document signing.|
|RadPdfViewerElement.**AsyncRender**|Enable or disable the async rendering of pages.|
|RadPdfViewerElement.**CachePaint**|Enable or disable the cached painting of pages.|

# Methods

|Method|Description|
|------|------|
|__Select__|Creates selection from start position to end position.|
|__PageUp__|Navigates to the previous page.|
|__PageDown__|Navigates to the next page.|
|__LoadDocument(string path)__|Loads a PDF document from a specified file name.|
|__LoadDocument(Stream stream)__|Loads a PDF document from a specified stream.|
|__UnloadDocument__|Unload the current PDF document.|
|__ShowThubnails__|Show the Pdf document's thumbnails|
|__HideThumbnails__|Hide the Pdf document's thumbnails|
|__Print__|Directly prints the document to the default printer.|
|__Print(bool showPrinterSettings)__|Prints the document with the parameter indicating whether printer settings dialog should be shown.|
|__Print(bool showPrinterSettings, RadPrintDocument document)__|Prints the document. The first parameter indicating whether printer settings dialog should be shown. The second parameter provides an option for supplying a RadPrintDocument object controlling the printing process .|
|__PrintPreview__|Shows a RadPrintPreviewDialog for editing the print settings.|
|__PrintPreview(RadPrintDocument document)__|Shows a RadPrintPreviewDialog for editing the print settings with an option for a RadPrintDocument instance.|

# Events

|Event|Description|
|------|------|
|__CurrentPageChanged__|Fires after the current page has been changed.|
|__DocumentLoaded__|Fires when the document has finished loading.|
|__DataError__|Fires when an internal exception in during loading parts of the document occurs. If the event is not handled, a default error message box will be shown, otherwise the message box will not show and handling the error should be done in the event handler.|
|__AnnotationClicked__|Fires when a link or a bookmark was clicked.|
|__FitToWidthChanged__|Fires when the FitToWidth property has changed.|
|__FitFullPageChanged__|Fires when the FitFullPage property has changed.|
|__ScaleFactorChanged__|Fires when the ScaleFactor property has changed.|
|__CaretPositionChanged__|Fires when the caret changes its position.|
|__SelectionChanged__|Fires when the text selection has changed.|
|__PageElementCreating__|Fires when a page is being created. Allows for replacing it with custom page element.|
|__ViewerModeChanged__|Fires when the ViewerMode property has changed.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpdfviewer.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpdfviewer.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpdfviewer.html#events)

