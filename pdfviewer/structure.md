---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: Structure
slug: winforms/pdfviewer/structure
tags: structure
published: True
position: 2
previous_url: pdfviewer-structure
---

# Structure



## Document model

### RadFixedDocument

When __LoadDocument__ finishes loading a document, a new RadFixedDocument instance is created. RadFixedDocument represent logically a single PDF document. The members that RadFixedDocument exposes are:

* __Pages__ - a collection of __RadFixedPage__ items created for the current document in the viewer.

* __Selection__ - information about the current selection in the document.

* __Annotations__ - a collection of all annotations (such as links) in the current document.

* __Destinations__ - a collection of all destinations (roughly said “bookmarks”) in the document that have links to them.

* __CaretPosition__ – the current position of the caret.

### RadFixedPage

RadFixedPage represents logically a single page of a document. The __Pages__ collection of RadFixedDocument consists of such objects and they are used as data items by the virtualized __RadFixedPageElement__.

## Element structure

RadPdfViewer has the following element structure:

* __RadPdfViewerElement__ – represents the main element of the control. Provides rich API for different document manipulations

  * __PdfViewerStackContainer__ – represents a virtualized container for __RadFixedPageElements__.

    * __RadFixedPageElement__– displays a single page of a document, the current selection, the caret, and any annotation highlights. These elements are virtualized.

    * ...more pages

  * __RadScrollBarElement__ – represents the horizontal scroll which allows you to pan and scroll the document horizontally.

  * __RadScrollBarElement__ - represents the vertical scroll which allows you to pan and scroll the document vertically.

  * __RadWaitingBarElement__ – represents the waiting indicator which is only visible while loading a document.