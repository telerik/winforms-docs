---
title: RadFixedDocument
page_title: RadFixedDocument | UI for WinForms Documentation
description: RadFixedDocument
slug: winforms/pdfprocessing/model/radfixeddocument
tags: radfixeddocument
published: True
position: 1
previous_url: pdfprocessing-model-radfixeddocument
---

# RadFixedDocument

__RadFixedDocument__ hosts fixed document content and is the root element in the document elements tree. It holds a collection of [RadFixedPage]({%slug winforms/pdfprocessing/model/radfixedpage%})  elements.

This article will get you familiar with the basics of __RadFixedDocument__. It contains the following sections:

* [What Is RadFixedDocument](#what-is-radfixeddocument)

* [Operating with RadFixedDocument](#operating-with-radfixeddocument)

* [Document Information](#-document-information)

## What Is RadFixedDocument

__RadFixedDocument__ is the root that contains all other elements in the __RadPdfProcessing__ model. It exposes the following properties:

* __Pages__: The pages collection that contains all __RadFixedPages__ in the document.

* __Annotations__: A read-only collection that contains all [Annotations]({%slug winforms/pdfprocessing/model/-annotations-and-destinations%}) in the document.

* __Destinations__: A collection that contains all [Destinations]({%slug winforms/pdfprocessing/model/-annotations-and-destinations%}) in the document.

* __DocumentInfo__: Contains additional meta information about the document like author, title, etc.

__Example 1__ shows how you can create a new __RadFixedDocument__ instance.

#### Example 1: Create RadFixedDocument

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.cs region=radpdfprocessing-model-radfixeddocument_0}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.vb region=radpdfprocessing-model-radfixeddocument_0}} 

````C#
            
RadFixedDocument document = new RadFixedDocument();

````
````VB.NET
Dim document As RadFixedDocument = New RadFixedDocument()

````

{{endregion}}

## Operating with RadFixedDocument

There are different actions which you can execute with the help of a __RadFixedDocument__. For example, you can add a __RadFixedPage__ to an existing document.

__Example 2__ adds a page to the document created in __Example 1__.

#### Example 2: Add page to RadFixedDocument

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.cs region=radpdfprocessing-model-radfixeddocument_1}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.vb region=radpdfprocessing-model-radfixeddocument_1}} 

````C#
        
RadFixedPage page = document.Pages.AddPage();

````
````VB.NET
Dim page As RadFixedPage = document.Pages.AddPage()

````

{{endregion}} 

Alternatively, you can create new __RadFixedPage__ and add it to the __Pages__ collection of a document.

__Example 3__ creates a page and adds it to the document created in __Example 1__.

#### Example 3: Create and add a page to RadFixedDocument

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.cs region=radpdfprocessing-model-radfixeddocument_2}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.vb region=radpdfprocessing-model-radfixeddocument_2}} 

````C#
RadFixedPage page = new RadFixedPage();
document.Pages.Add(page);

````
````VB.NET
Dim page As RadFixedPage = New RadFixedPage()
document.Pages.Add(page)

````

{{endregion}}

##  Document Information

__RadFixedDocument__ exposes a __DocumentInfo__ property of type __RadFixedDocumentInfo__, intended to hold additional information about the document. The __RadFixedDocumentInfo__ class allows to set the following properties:

* __Author__: The author of the document.

* __Title__: The title of the document.

* __Description__: Text that describes the content of the document.

#### Example 4: Set DocumentInfo

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.cs region=DocInfo}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelRadFixedDocument.vb region=DocInfo}} 

````C#
document.DocumentInfo.Author = "Jane Doe";
document.DocumentInfo.Title = "RadFixedDocument";
document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library";

````
````VB.NET
document.DocumentInfo.Author = "Jane Doe"
document.DocumentInfo.Title = "RadFixedDocument"
document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library"

````

{{endregion}}

# See Also

 * [Model]({%slug winforms/pdfprocessing/model%})

 * [RadFixedPage]({%slug winforms/pdfprocessing/model/radfixedpage%})

 * [ Annotations and Destinations]({%slug winforms/pdfprocessing/model/-annotations-and-destinations%})
