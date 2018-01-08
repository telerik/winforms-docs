---
title: Unsupported features
page_title: Unsupported features | RadPdfViewer 
description: This article list some of the unsupported features.
slug: winforms/pdfviewer/unsupported-features
tags: unsupported,features
published: True
position: 5
previous_url: pdfviewer-unsupported-features
---

# Unsupported features

The unsupported features include:

* Type3 fonts;

* Almost all fonts that are embedded in the PDF file should be displayed correctly. There are minimal limitations with some font formats;

* There are some limitations with CCITTFaxDecode filter;

* Lab, ICCBased color spaces;

* Password protection.

* JPXDecode filters. We have provided API to plug-in custom user-defined filters, but the filters do not work out of the box;

* Annotations - of all annotations, only link is supported;

* Structured content: There are several ways to define structured content in a PDF file. RadPdfViewer does not support document outline and article threads. The interactive forms are currently read-only.

When a PDF file contains some of these items, it may be shown incorrectly or not shown at all.

When a PDF file contains some of these items, it may be shown incorrectly or not shown at all.

# See Also

* [Exception Handling]({%slug winforms/pdfviewer/exception-handling%})
* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})