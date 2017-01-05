---
title: Save Loaded Document
page_title: Save Loaded Document | RadPdfViewer
description: This article shows how you can use the built-in methods to save the loaded document or get is as a stream.
slug: winforms/pdfviewer/save-as 
tags: save, image
published: True
position: 17
---


# Save Programmatically

The __SaveDocument__ method allows you to save the currently loaded document in an new file:

#### Using SaveDocument method.

{{source=..\SamplesCS\PdfViewer\RotationAndExport.cs region=RotateMethod}} 
{{source=..\SamplesVB\PdfViewer\RotationAndExport.vb region=RotateMethod}} 


{{endregion}}

You can use the __GetDocumentAsStream__ method to retrieve the document stream:

#### Get the document stream

{{source=..\SamplesCS\PdfViewer\RotationAndExport.cs region=RotateMethod}} 
{{source=..\SamplesVB\PdfViewer\RotationAndExport.vb region=RotateMethod}} 


{{endregion}}


## Save from the PdfViewerNavigator

The PdfViewerNavigator has a save as button that can be used for saving the document as well.

![pdf-viewer-save-document001](images/pdf-viewer-save-document001.png)        
