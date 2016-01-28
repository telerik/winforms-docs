---
title: Unsupported features
page_title: Unsupported features | UI for WinForms Documentation
description: Unsupported features
slug: winforms/pdfviewer/unsupported-features
tags: unsupported,features
published: True
position: 5
previous_url: pdfviewer-unsupported-features
---

# Unsupported features

## Unsupported Content

The unsupported features include:

* Type3 fonts;

* Almost all fonts that are embedded in the PDF file should be displayed correctly. There are minimal limitations with some font formats;

* There are some limitations with CCITTFaxDecode filter;

* Lab, ICCBased color spaces;

* Encrypted documents when a non-standard encryption method is used, or the document is password-protected;

* JPXDecode filters. We have provided API to plug-in custom user-defined filters, but the filters do not work out of the box;

* Annotations - of all annotations, only link is supported;

* Structured content - there are several ways to define structured content in a PDF file. RadPdfViewer does not support document outline, article threads and interactive form.

When a PDF file contains some of these items, it may be shown incorrectly or not shown at all.