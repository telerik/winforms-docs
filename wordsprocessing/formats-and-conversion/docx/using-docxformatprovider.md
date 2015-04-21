---
title: Using DocxFormatProvider
page_title: Using DocxFormatProvider
description: Using DocxFormatProvider
slug: wordsprocessing-formats-and-conversion-docx-using-docxformatprovider
tags: using,docxformatprovider
published: True
position: 1
---

# Using DocxFormatProvider



__DocxFormatProvider__ makes it easy to import and export __RadFlowDocument__ to/from docx format,
        preserving the entire document structure and formatting.
      

All you have to do in order to use __DocxFormatProvider__ is add references to the assemblies listed below:
      

* Telerik.Windows.Documents.Core.dll
          

* Telerik.Windows.Documents.Flow.dll
          

* Telerik.Windows.Zip.dll
          

## Import

In order to import a docx document you need to use the __Import()__ method of __DocxFormatProvider__.
        

The following code snippet shows how to use __DocxFormatProvider__ to import a docx document from a file:
        

#### __[C#] Example 1:__

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.cs region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_0}}
	            
	            DocxFormatProvider provider = new DocxFormatProvider();
	            using (Stream input = File.OpenRead("Sample.docx"))
	            {
	                RadFlowDocument document = provider.Import(input);
	            }
	        
	{{endregion}}



#### __[VB] Example 1:__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.vb region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_0}}
	        Dim provider As New DocxFormatProvider()
	        Using input As Stream = File.OpenRead("Sample.docx")
	            Dim document As RadFlowDocument = provider.Import(input)
	        End Using
	{{endregion}}



And here is how you can import a document from byte array containing the docx document:
        

#### __[C#] Example 2:__





#### __[VB] Example 2:__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.vb region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_1}}
	        Dim provider As New DocxFormatProvider()
	        Dim document As RadFlowDocument = provider.Import(input)
	{{endregion}}



The resulting __RadFlowDocument__ can be manipulatedused like any code-generated document.
        

## Export

In order to export a document to docx you need to use the __Export()__ method of __DocxFormatProvider__.
        

The following snippet shows how to use __DocxFormatProvider__ to export __RadFlowDocument__ to a file.
        

#### __[C#] Example 3:__





#### __[VB] Example 3:__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.vb region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_2}}
	        Dim provider As New DocxFormatProvider()
	        Using output As Stream = File.OpenWrite("Sample.docx")
	            Dim document As RadFlowDocument = CreateRadFlowDocument()
	            provider.Export(document, output)
	        End Using
	{{endregion}}



You can also export the document to a byte array and preserve it in a database.
        

#### __[C#] Example 4:__





#### __[VB] Example 4:__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.vb region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_3}}
	        Dim provider As New DocxFormatProvider()
	
	        Dim document As RadFlowDocument = CreateRadFlowDocument()
	        Dim output As Byte() = provider.Export(document)
	{{endregion}}



The resulting documents can be opened in any application that supports docx documents.
        
