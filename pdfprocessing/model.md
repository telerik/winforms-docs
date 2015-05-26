---
title: Model
page_title: Model | UI for WinForms Documentation
description: Model
slug: winforms/pdfprocessing/model
tags: model
published: True
position: 2
---

# Model



This article explains the structure of __RadPdfProcessing__'s document model.
      

## DocumentElements

[RadFixedDocument]({%slug winforms/pdfprocessing/model/radfixeddocument%}) is the root element of all document elements. All document elements inherit from the __FixedDocumentElementBase__ abstract class. The diagram below describes the hierarchy in the __RadPdfProcessing__.
        ![pdfprocessing-model 001](images/pdfprocessing-model001.png)

## Composition of Document Elements

__RadFixedDocument__ represents a tree of [RadFixedPage]({%slug winforms/pdfprocessing/model/radfixedpage%}) where the fixed content is hosted. The diagram below describes the composition of the fixed content. The document elements are denoted in black and collections - in orange.
        ![pdfprocessing-model 002](images/pdfprocessing-model002.png)

# See Also

 * [RadFixedDocument]({%slug winforms/pdfprocessing/model/radfixeddocument%})

 * [RadFixedPage]({%slug winforms/pdfprocessing/model/radfixedpage%})
