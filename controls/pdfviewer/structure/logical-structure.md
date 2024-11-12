---
title: Logical Structure
page_title: Logical Structure - WinForms PdfViewer Control
description: Get familiar with the visual as well as logical structure of the WinForms PdfViewer.
slug: winforms/pdfviewer/structure/logical-structure
tags: structure
published: True
position: 0
---

# Logical Structure

This article describes the logical structure of __RadPdfViewer__.

## RadFixedDocument

When __LoadDocument__ finishes loading a document, a new __RadFixedDocument__ instance is created. __RadFixedDocument__ is the class that represents logically a single PDF document inside RadPdfViewer. The members that __RadFixedDocument__ exposes are:

* __Pages__: A collection of __RadFixedPage__ items created for the current document in the viewer.

* __Selection__: Information about the current selection in the document.

* __Annotations__: A collection of all annotations (such as links) in the current document.

* __Destinations__: A collection of all destinations (roughly said “bookmarks”) in the document that have links to them.
* __CaretPosition__: The current position of the caret.

#### Document information

**RadFixedDocument** exposes a **DocumentInfo** property of type **RadFixedDocumentInfo**, intended to hold additional information about the document. The RadFixedDocumentInfo class allows to set the following properties:

* **Author**: The author of the document.
* **Title**: The title of the document.
* **Description**: Text that describes the content of the document.

Other useful properties that **RadFixedDocument** exposes:

* **Bookmarks**: Gets the bookmarks.
* **Annotations**: Gets the annotations.
* **PageMode**: Gets or sets the PageMode. 
* **HasLayers**: This property indicates whether the document contains layers. 

For more details about the model used by PdfViewer and the members of [RadFixedDocument](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/radfixeddocument), check the documentation of [PdfProcessing library](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview).

## RadFixedPage

__RadFixedPage__ represents logically a single page of a document. The __Pages__ collection of RadFixedDocument consists of such objects and they are used as data items by the virtualized __RadFixedPageElement__.

For more details about the [RadFixedPage](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/model/radfixedpage), check the documentation of [PdfProcessing library](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview).

# See Also

* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Design Time]({%slug winforms/pdfviewer/design-time%})
* [Getting Started]({%slug winforms/pdfviewer/getting-started%})