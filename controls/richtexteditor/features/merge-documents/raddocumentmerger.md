---
title: RadDocumentMerger
page_title: RadDocumentMerger - RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
slug: winforms/richtexteditor/features/merge-documents/raddocumentmerger
tags: events
published: True
position: 0 
---

# RadDocumentMerger Overview

**RadDocumentMerger** introduces an API that enables users to merge two __RadDocument__ instances or append them to each other. When performing merging operations, you may encounter conflicts between the different settings of two documents. Such conflicts can be resolved/avoided by changing the settings of **RadDocumentMerger**.

## Create a RadDocumentMerger

When instantiating the **RadDocumentMerger** class, you should pass to its constructor a [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%}) instance. This parameter represents the document that is used as a target when performing the merging operations.

#### Example 1: Create a RadDocumentMerger

<snippet id='richtexteditor-main-documentmerger-cs' />
<snippet id='richtexteditor-main-documentmerger-vb' />



The document passed to the constructor can be obtained through the **Document** property of the __RadDocumentMerger__ instance.

You can use the methods of the __RadDocumentMerger__ class to [insert the content of the desired documents at the caret position]({%slug winforms/richtexteditor/features/merge-documents/merge%}) or just [append]({%slug winforms/richtexteditor/features/merge-documents/append%}) it to the target document.

## See Also

* [Insert Document at the Caret Position]({%slug winforms/richtexteditor/features/merge-documents/merge%})
* [Append a Document]({%slug winforms/richtexteditor/features/merge-documents/append%})
