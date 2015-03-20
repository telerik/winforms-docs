---
title: RadFixedDocument
page_title: RadFixedDocument
description: RadFixedDocument
slug: pdfprocessing-model-radfixeddocument
tags: radfixeddocument
published: True
position: 0
---

# RadFixedDocument



__RadFixedDocument__ hosts fixed document content and is the root element in the document elements tree. It holds a collection of [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%})  elements.
      

This article will get you familiar with the basics of __RadFixedDocument__. It contains the following sections:
      

* [What Is RadFixedDocument](#what-is-radfixeddocument)

* [Operating with RadFixedDocument](#operating-with-radfixeddocument)

* [Document Information](#-document-information)

## What Is RadFixedDocument

__RadFixedDocument__ is the root that contains all other elements in the __RadPdfProcessing__ model. It exposes the following properties:
        

* __Pages__: The pages collection that contains all __RadFixedPages__ in the document.
            

* __Annotations__: A read-only collection that contains all [Annotations]({%slug pdfprocessing-model-annotations-and-destinations%}) in the document.
            

* __Destinations__: A collection that contains all [Destinations]({%slug pdfprocessing-model-annotations-and-destinations%}) in the document.
            

* __DocumentInfo__: Contains additional meta information about the document like author, title, etc. 
            

__Example 1__ shows how you can create a new __RadFixedDocument__ instance.
        

#### __[C#] Example 1: Create RadFixedDocument__

{{region radpdfprocessing-model-radfixeddocument_0}}
	            RadFixedDocument document = new RadFixedDocument();
	{{endregion}}



#### __[VB.NET] Example 1: Create RadFixedDocument__

{{region radpdfprocessing-model-radfixeddocument_0}}
	        Dim document As RadFixedDocument = New RadFixedDocument()
	        '#End Region
	    End Sub
	
	    Private Sub AddPagesToFixedDocument(ByVal document As RadFixedDocument)
	        '#Region "radpdfprocessing-model-radfixeddocument_1"
	        Dim page As RadFixedPage = document.Pages.AddPage()
	        '#End Region
	    End Sub
	
	    Private Sub CreateAndAddPagesToFixedDocument(ByVal document As RadFixedDocument)
	        '#Region "radpdfprocessing-model-radfixeddocument_2"
	        Dim page As RadFixedPage = New RadFixedPage()
	        document.Pages.Add(page)
	        '#End Region
	    End Sub
	    Private Sub CreateAndAddPagesToFixedDocument1(ByVal document As RadFixedDocument)
	        '#Region "DocInfo"
	        document.DocumentInfo.Author = "Jane Doe"
	        document.DocumentInfo.Title = "RadFixedDocument"
	        document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library"
	        '#End Region
	    End Sub
	End Class



## Operating with RadFixedDocument

There are different actions which you can execute with the help of a __RadFixedDocument__. For example, you can add a __RadFixedPage__ to an existing document.
        

__Example 2__ adds a page to the document created in __Example 1__.
        

#### __[C#] Example 2: Add page to RadFixedDocument__

{{region radpdfprocessing-model-radfixeddocument_1}}
	            RadFixedPage page = document.Pages.AddPage();
	{{endregion}}



#### __[VB.NET] Example 2: Add page to RadFixedDocument__

{{region radpdfprocessing-model-radfixeddocument_1}}
	        Dim page As RadFixedPage = document.Pages.AddPage()
	        '#End Region
	    End Sub
	
	    Private Sub CreateAndAddPagesToFixedDocument(ByVal document As RadFixedDocument)
	        '#Region "radpdfprocessing-model-radfixeddocument_2"
	        Dim page As RadFixedPage = New RadFixedPage()
	        document.Pages.Add(page)
	        '#End Region
	    End Sub
	    Private Sub CreateAndAddPagesToFixedDocument1(ByVal document As RadFixedDocument)
	        '#Region "DocInfo"
	        document.DocumentInfo.Author = "Jane Doe"
	        document.DocumentInfo.Title = "RadFixedDocument"
	        document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library"
	        '#End Region
	    End Sub
	End Class



Alternatively, you can create new __RadFixedPage__ and add it to the __Pages__ collection of a document.
        

__Example 3__ creates a page and adds it to the document created in __Example 1__.
        

#### __[C#] Example 3: Create and add a page to RadFixedDocument__

{{region radpdfprocessing-model-radfixeddocument_2}}
	            RadFixedPage page = new RadFixedPage();
	            document.Pages.Add(page);
	{{endregion}}



#### __[VB.NET] Example 3: Create and add a page to RadFixedDocument__

{{region radpdfprocessing-model-radfixeddocument_2}}
	        Dim page As RadFixedPage = New RadFixedPage()
	        document.Pages.Add(page)
	        '#End Region
	    End Sub
	    Private Sub CreateAndAddPagesToFixedDocument1(ByVal document As RadFixedDocument)
	        '#Region "DocInfo"
	        document.DocumentInfo.Author = "Jane Doe"
	        document.DocumentInfo.Title = "RadFixedDocument"
	        document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library"
	        '#End Region
	    End Sub
	End Class



##  Document Information

__RadFixedDocument__ exposes a __DocumentInfo__ property of type __RadFixedDocumentInfo__, 
          intended to hold additional information about the document. The __RadFixedDocumentInfo__ class allows to set the following properties:
        

* __Auto__: The author of the document.
            

* __Title__: The title of the document.
            

* __Description__: Text that describes the content of the document.
            

#### __[C#] Example 4: Set DocumentInfo__

{{region DocInfo}}
	            document.DocumentInfo.Author = "Jane Doe";
	            document.DocumentInfo.Title = "RadFixedDocument";
	            document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library";
	{{endregion}}



#### __[VB.NET] Example 4: Set DocumentInfo__

{{region DocInfo}}
	        document.DocumentInfo.Author = "Jane Doe"
	        document.DocumentInfo.Title = "RadFixedDocument"
	        document.DocumentInfo.Description = "This document is intended to explain the RadFixedDocument class from the RadPdfProcessing library"
	        '#End Region
	    End Sub
	End Class



# See Also

 * [Model]({%slug pdfprocessing-model%})

 * [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%})

 * [ Annotations and Destinations]({%slug pdfprocessing-model-annotations-and-destinations%})
