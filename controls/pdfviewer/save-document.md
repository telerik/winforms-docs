---
title: Save Loaded Document
page_title: Save Loaded Document - RadPdfViewer
description: This article shows how you can use the built-in methods to save the loaded document or get is as a stream.
slug: winforms/pdfviewer/save-as 
tags: save, image
published: True
position: 16
---


# Save Programmatically

The __SaveDocument__ method allows you to save the currently loaded document in an new file:

#### Using SaveDocument method.

<snippet id='pdfviewer-rotationandexport-saveas-cs' />
<snippet id='pdfviewer-rotationandexport-saveas-vb' />



You can use the __GetDocumentAsStream__ method to retrieve the document stream:

#### Get the document stream

<snippet id='pdfviewer-rotationandexport-savestream-cs' />
<snippet id='pdfviewer-rotationandexport-savestream-vb' />



## Save from the PdfViewerNavigator

The PdfViewerNavigator has a __Save As__ button that can be used for saving the document as well.

![WinForms RadPdfViewer PdfViewerNavigator Save Option](images/pdf-viewer-save-document001.png)        
