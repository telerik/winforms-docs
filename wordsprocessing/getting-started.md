---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: wordsprocessing-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



This tutorial will take you through the creation of a sample application that uses RadWordsProcessing.
      

* [Assembly Reference](#assembly-references)

* [Creating RadFlowDocument from Code](#creating-radflowdocument-from-code)

* [Exporting RadFlowDocument to Docx](#exporting-radflowdocument-to-docx)

## Assembly References

Here is a list of assemblies that contain the __RadWordsProcessing__ functionality and need to be referenced in your project:
        

* Telerik.Windows.Documents.Core
            

* Telerik.Windows.Documents.Flow
            

* Telerik.Windows.Zip
            

* Telerik.Windows.Documents.Flow.FormatProviders.Pdf
            

* Telerik.Windows.Documents.Fixed
            

>The latter two assemblies - Telerik.Windows.Documents.Flow.FormatProviders.Pdf.dll and Telerik.Windows.Documents.Fixed.dll are only needed if you plan on exporting the document to PDF format.
          

## Creating RadFlowDocument from Code

Here is how to create a [RadFlowDocument]({%slug wordsprocessing-model-radflowdocument%}) and insert some text content.
        

#### __[C#] __

{{region radwordsprocessing-getting-started_0}}
	            RadFlowDocument document = new RadFlowDocument();
	            RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
	            editor.InsertText("Hello world!");
	{{endregion}}



#### __[VB.NET] __

{{region radwordsprocessing-getting-started_0}}
	            Dim document As New RadFlowDocument()
	            Dim editor As New RadFlowDocumentEditor(document)
	            editor.InsertText("Hello world!")
	            '#End Region
	        End Sub
	
	        Private Sub ExportToDocx(document As RadFlowDocument)
	            '#Region "radwordsprocessing-getting-started_1"
	            Using output As Stream = New FileStream("output.docx", FileMode.OpenOrCreate)
	                Dim provider As New DocxFormatProvider()
	                provider.Export(document, output)
	            End Using
	            '#End Region
	        End Sub
	    End Class



You need to add using directive to the following namespaces:
        

* Telerik.Windows.Documents.Flow.Model
            

* Telerik.Windows.Documents.Flow.Model.Editing
            

## Exporting RadFlowDocument to Docx

Exporting the document to Docx file can be achieved with the [DocxFormatProvider]({%slug wordsprocessing-formats-and-conversion-docx-using-docxformatprovider%}). Here
          is how to create a provider instance and save a document with it:
        

#### __[C#] __

{{region radwordsprocessing-getting-started_1}}
	            using (Stream output = new FileStream("output.docx", FileMode.OpenOrCreate))
	            {
	                DocxFormatProvider provider = new DocxFormatProvider();
	                provider.Export(document, output);
	            }
	{{endregion}}



#### __[VB.NET] __

{{region radwordsprocessing-getting-started_1}}
	            Using output As Stream = New FileStream("output.docx", FileMode.OpenOrCreate)
	                Dim provider As New DocxFormatProvider()
	                provider.Export(document, output)
	            End Using
	            '#End Region
	        End Sub
	    End Class



More information about the supported formats and features can be found [here](b61690b2-afed-4616-be13-20a38078c066).
        
