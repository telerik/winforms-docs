---
title: Setting Custom Page Size in RadRichTextEditor for WinForms
description: Learn how to configure a custom page size, such as 3"x3", for documents in RadRichTextEditor.
type: how-to
page_title: How to Configure Custom Page Sizes in RadRichTextEditor for WinForms
slug: radrichtexteditor-winforms-custom-page-size
tags: radrichtexteditor, winforms, custom, page size
res_type: kb
ticketid: 1683831
---

## Environment

<table>
<tbody>
<tr>
<td>Product</td>
<td>RadRichTextEditor for WinForms</td>
</tr>
</tbody>
</table>

## Description

In RadRichTextEditor, I need to set a custom page size, for example, 3"x3". The `ChangePaperTypeCommand` does not allow for custom sizes, and I wonder if there's an alternative way to achieve a custom page size in the document.

This knowledge base article also answers the following questions:
- How can I adjust the page size of a document in RadRichTextEditor?
- Is it possible to define custom dimensions for RadRichTextEditor pages?
- What method allows for custom page sizing in RadRichTextEditor documents?

## Solution

To set a custom page size in RadRichTextEditor, such as 3"x3", use the `ChangeSectionPageSize()` method. This method should be called after the document is loaded. Follow the steps below to implement custom page sizing:

1. Initialize a new size with the desired dimensions. Keep in mind that the size should be specified in DIPs (Document Independent Pixels). For a 3"x3" size, considering 96 DIPs equals 1 inch, calculate the size in DIPs as follows:

```csharp
var size = new Telerik.WinControls.RichTextEditor.UI.Size(762, 762); // 3"x3" in DIPs
```

2. Apply the custom size to the document using the `ChangeSectionPageSize()` method:

```csharp
this.radRichTextEditor1.RichTextBoxElement.ActiveDocumentEditor.ChangeSectionPageSize(size);
```

By applying these steps, you can set a custom page size for your documents in RadRichTextEditor.

## See Also

- [RadRichTextEditor Documentation](https://docs.telerik.com/devtools/winforms/controls/radrichtexteditor/overview)
- [Working with Sections in RadRichTextEditor](https://docs.telerik.com/devtools/winforms/controls/radrichtexteditor/features/sections)
- [Understanding DIPs in Document Processing](https://docs.telerik.com/devtools/document-processing/concepts/dip-units)
