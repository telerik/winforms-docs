---
title: Disabling ContextMenu in RadPdfViewer for UI for WinForms
description: Learn how to disable the ContextMenu in PdfViewer for UI for WinForms by removing the RadContextMenu property.
type: how-to
page_title: How to Remove ContextMenu in RadPdfViewer for WinForms
meta_title: How to Remove ContextMenu in RadPdfViewer for WinForms
slug: pdfviewer-disable-contextmenu
tags: pdfviewer, ui for winforms, radcontextmenu, disable-context-menu
res_type: kb
ticketid: 1695155
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadPdfViewer for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

There could be a requirement to disable the default ContextMenu in the RadPdfViewer control. 

## Solution

To disable the right-click context menu in PdfViewer for UI for WinForms, set the `RadContextMenu` property to `null`. This removes the context menu entirely, preventing it from appearing when the user right-clicks inside the RadPdfViewer.

### Example Code

````C#

this.radPdfViewer1.RadContextMenu = null;

````

In some cases, the default menu items need to be modified, and the [RadPdfViewer Context Menu]({%slug winforms/pdfviewer/ui/context-menu%}) article demonstrates how to do that.

## See Also

- [PdfViewer Documentation](https://docs.telerik.com/devtools/winforms/controls/pdfviewer/overview)
- [RadContextMenu Documentation](https://docs.telerik.com/devtools/winforms/controls/contextmenu/overview)
