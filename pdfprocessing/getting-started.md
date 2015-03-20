---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: pdfprocessing-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



This article will get you started in using the __RadPdfProcessing__ library. It contains the following sections:
      

* [Assembly References](#assembly-references)

* [Creating a Document](#creating-a-document)

* [Exporting to PDF](#exporting-to-pdf)

## Assembly References

In order to use the __RadPdfProcessing__ library in your project you need to add references to the following assemblies:
        

* Telerik.Windows.Documents.Core.dll
            

* Telerik.Windows.Documents.Fixed.dll
            

* Telerik.Windows.Zip.dll
            

The following .NET assemblies are required as well"

* PresentationCore
            

* WindowsBase
            

* PresentationFramework
            

## Creating a Document

[RadFixedDocument]({%slug pdfprocessing-model-radfixeddocument%}) is the root element in the library. It consists of [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%}) objects and instructions for annotations and destinations in the document. __Example 1__ shows how to create a document and add a page to it.
        

#### __[C#] Example 1: Create Document__

{{region radpdfprocessing-getting-started_0}}
	            RadFixedDocument document = new RadFixedDocument();
	            RadFixedPage page = document.Pages.AddPage();
	{{endregion}}



#### __[VB.NET] Example 1: Create Document__

{{region radpdfprocessing-getting-started_0}}
	        Dim document As RadFixedDocument = New RadFixedDocument()
	        Dim page As RadFixedPage = document.Pages.AddPage()
	        '#End Region
	
	        '#Region "radpdfprocessing-getting-started_1"
	        Dim editor As FixedContentEditor = New FixedContentEditor(page)
	        editor.DrawText("Hello RadPdfProcessing!")
	        '#End Region
	
	        '#Region "radpdfprocessing-getting-started_2"
	        Dim provider As PdfFormatProvider = New PdfFormatProvider()
	        Using output As Stream = File.OpenWrite("Hello.pdf")
	            provider.Export(document, output)
	        End Using
	        '#End Region
	
	
	    End Sub
	End Class



The page can then be edited through a [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%}) instance. __Example 2__ creates an editor and adds a [TextFragment]({%slug pdfprocessing-model-textfragment%}) to the page object created in __Example 1__.
        

#### __[C#] Example 2: Add Text__

{{region radpdfprocessing-getting-started_1}}
	            FixedContentEditor editor = new FixedContentEditor(page);
	            editor.DrawText("Hello RadPdfProcessing!");
	{{endregion}}



#### __[VB.NET] Example 2: Add Text__

{{region radpdfprocessing-getting-started_1}}
	        Dim editor As FixedContentEditor = New FixedContentEditor(page)
	        editor.DrawText("Hello RadPdfProcessing!")
	        '#End Region
	
	        '#Region "radpdfprocessing-getting-started_2"
	        Dim provider As PdfFormatProvider = New PdfFormatProvider()
	        Using output As Stream = File.OpenWrite("Hello.pdf")
	            provider.Export(document, output)
	        End Using
	        '#End Region
	
	
	    End Sub
	End Class



## Exporting to PDF

Exporting to PDF format can be achieved with the __PdfFormatProvider__ class. __Example 3__ shows how to export the __RadFixedDocument__ we created in __Examples 1 and 2__ to a file.
        

#### __[C#] Example 3: Export to PDF__

{{region radpdfprocessing-getting-started_2}}
	            PdfFormatProvider provider = new PdfFormatProvider();
	            using (Stream output = File.OpenWrite("Hello.pdf"))
	            {
	                provider.Export(document, output);
	            }
	{{endregion}}



#### __[VB.NET] Example 3: Export to PDF__

{{region radpdfprocessing-getting-started_2}}
	        Dim provider As PdfFormatProvider = New PdfFormatProvider()
	        Using output As Stream = File.OpenWrite("Hello.pdf")
	            provider.Export(document, output)
	        End Using
	        '#End Region
	
	
	    End Sub
	End Class



# See Also[RadFixedDocument API Reference](
            http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_fixed_model_radfixeddocument.html
        )

 * [RadFixedDocument]({%slug pdfprocessing-model-radfixeddocument%})

 * [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%})

 * [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%})

 * [TextFragment]({%slug pdfprocessing-model-textfragment%})

 * [PDF Format]({%slug pdfprocessing-formats-and-conversion-pdf%})
