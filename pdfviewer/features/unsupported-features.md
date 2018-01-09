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

* JPXDecode filter: This filter does not work out of the box. However, there is API allowing to plug-in custom user-defined filters. This API is described in the [Customize PDF Rendering]({%slug winforms/pdfviewer/customize-and-extensibility/customize-pdf-rendering%}) article.

* Annotations: Full support for Widget and Link annotations. All other types of annotations are supported in read-only mode.

* Structured content: There are several ways to define structured content in a PDF file. **RadPdfViewer** does not support document outline and article threads.

When a PDF file contains some of these items, it may be shown incorrectly or not shown at all.

# See Also

* [Exception Handling]({%slug winforms/pdfviewer/exception-handling%})
* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})