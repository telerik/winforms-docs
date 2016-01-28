---
title: Layout modes
page_title: Layout modes | UI for WinForms Documentation
description: Layout modes
slug: winforms/richtextbox-(obsolete)/features/layout-modes
tags: layout,modes
published: True
position: 2
previous_url: richtextbox-features-layout-modes
---

# Layout modes

The RadRichTextBox allows you to choose between several layout modes.

## Paged

When using the paged mode, the content of the edited document is divided into pages. The size and layout of each page are defined by the __DefaultPageLayoutSettings__ property of the __RadDocument__ and more specifically - the __Width__ and __Height__ properties of the __PageLayoutSettings__ object.

Next, the margins of the control in a page are specified by the __PageMargin__ property of each __Section__. Since several sections can appear on a single page, the margin properties of the first __Section__ that appears on a certain page would be valid. In __Page__ mode, resizing a RadRichTextBox will not affect the document layout but scrollbars will appear if the document does not fit in the view.

## Flow

In __Flow__ layout mode, document content is not divided into pages. Instead there is a single page which displays the whole content. This layout option resembles __MS Word’s Web-Layout__mode. Since the document is not constrained in width, changing the control’s width will also resize the content of the document and this will affect its height.

## FlowNoWrap

The __FlowNoWrap__ layout mode is similar to the __Flow__ layout mode, but it doesn't allow the text in the separate paragraphs to get wrapped when the free space gets exceeded. Instead a horizontal scroll bar will appear.