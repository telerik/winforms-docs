---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/pdfprocessing/getting-started
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

[RadFixedDocument]({%slug winforms/pdfprocessing/model/radfixeddocument%}) is the root element in the library. It consists of [RadFixedPage]({%slug winforms/pdfprocessing/model/radfixedpage%}) objects and instructions for annotations and destinations in the document. __Example 1__ shows how to create a document and add a page to it.
        #_[C#] Example 1: Create Document_

	



{{source=..\SamplesCS\PdfProcessing\PdfProcessingGettingStarted.cs region=radpdfprocessing-getting-started_0}} 
{{source=..\SamplesVB\PdfProcessing\PdfProcessingGettingStarted.vb region=radpdfprocessing-getting-started_0}} 

````C#
            RadFixedDocument document = new RadFixedDocument();
            RadFixedPage page = document.Pages.AddPage();
````
````VB.NET
        Dim document As RadFixedDocument = New RadFixedDocument()
        Dim page As RadFixedPage = document.Pages.AddPage()
        '
````

{{endregion}} 




The page can then be edited through a [FixedContentEditor]({%slug winforms/pdfprocessing/editing/fixedcontenteditor%}) instance. __Example 2__ creates an editor and adds a [TextFragment]({%slug winforms/pdfprocessing/model/textfragment%}) to the page object created in __Example 1__.
        #_[C#] Example 2: Add Text_

	



{{source=..\SamplesCS\PdfProcessing\PdfProcessingGettingStarted.cs region=radpdfprocessing-getting-started_1}} 
{{source=..\SamplesVB\PdfProcessing\PdfProcessingGettingStarted.vb region=radpdfprocessing-getting-started_1}} 

````C#
            FixedContentEditor editor = new FixedContentEditor(page);
            editor.DrawText("Hello RadPdfProcessing!");
````
````VB.NET
        Dim editor As FixedContentEditor = New FixedContentEditor(page)
        editor.DrawText("Hello RadPdfProcessing!")
        '
````

{{endregion}} 




## Exporting to PDF

Exporting to PDF format can be achieved with the __PdfFormatProvider__ class. __Example 3__ shows how to export the __RadFixedDocument__ we created in __Examples 1 and 2__ to a file.
        #_[C#] Example 3: Export to PDF_

	



{{source=..\SamplesCS\PdfProcessing\PdfProcessingGettingStarted.cs region=radpdfprocessing-getting-started_2}} 
{{source=..\SamplesVB\PdfProcessing\PdfProcessingGettingStarted.vb region=radpdfprocessing-getting-started_2}} 

````C#
            PdfFormatProvider provider = new PdfFormatProvider();
            using (Stream output = File.OpenWrite("Hello.pdf"))
            {
                provider.Export(document, output);
            }
````
````VB.NET
        Dim provider As PdfFormatProvider = New PdfFormatProvider()
        Using output As Stream = File.OpenWrite("Hello.pdf")
            provider.Export(document, output)
        End Using
        '
````

{{endregion}} 




# See Also

 * [RadFixedDocument API Reference](
            http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_fixed_model_radfixeddocument.html
        )

 * [RadFixedDocument]({%slug winforms/pdfprocessing/model/radfixeddocument%})

 * [RadFixedPage]({%slug winforms/pdfprocessing/model/radfixedpage%})

 * [FixedContentEditor]({%slug winforms/pdfprocessing/editing/fixedcontenteditor%})

 * [TextFragment]({%slug winforms/pdfprocessing/model/textfragment%})

 * [PDF Format]({%slug winforms/pdfprocessing/formats-and-conversion/pdf%})
