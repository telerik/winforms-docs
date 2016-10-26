---
title: Logical Structure
page_title: Logical Structure | RadPdfViewer
description: This article describes the visual as well as logical structure of the control.
slug: winforms/pdfviewer/structure/logical-structure
tags: structure
published: True
position: 0
---

# Logical Structure

This article describes the logical structure of __RadPdfViewer__.

## RadFixedDocument

When __LoadDocument__ finishes loading a document, a new __RadFixedDocument__ instance is created. RadFixedDocument represent logically a single PDF document. The members that RadFixedDocument exposes are:

* __Pages__: A collection of __RadFixedPage__ items created for the current document in the viewer.

* __Selection__: Information about the current selection in the document.

* __Annotations__: A collection of all annotations (such as links) in the current document.

* __Destinations__: A collection of all destinations (roughly said “bookmarks”) in the document that have links to them.

* __CaretPosition__: The current position of the caret.

## RadFixedPage

RadFixedPage represents logically a single page of a document. The __Pages__ collection of RadFixedDocument consists of such objects and they are used as data items by the virtualized __RadFixedPageElement__.

# See Also

* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Design Time]({%slug winforms/pdfviewer/design-time%})
* [Getting Started]({%slug winforms/pdfviewer/getting-started%})