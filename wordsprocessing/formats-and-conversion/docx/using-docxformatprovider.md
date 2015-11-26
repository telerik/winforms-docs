---
title: Using DocxFormatProvider
page_title: Using DocxFormatProvider | UI for WinForms Documentation
description: Using DocxFormatProvider
slug: winforms/wordsprocessing/formats-and-conversion/docx/using-docxformatprovider
tags: using,docxformatprovider
published: True
position: 1
---

# Using DocxFormatProvider



__DocxFormatProvider__ makes it easy to import and export __RadFlowDocument__ to/from docx format, preserving the entire document structure and formatting.
      

All you have to do in order to use __DocxFormatProvider__ is add references to the assemblies listed below:
      

* Telerik.Windows.Documents.Core.dll
          

* Telerik.Windows.Documents.Flow.dll
          

* Telerik.Windows.Zip.dll
          

## Import

In order to import a docx document you need to use the __Import()__ method of __DocxFormatProvider__.

The following code snippet shows how to use __DocxFormatProvider__ to import a docx document from a file:

#### Example 1:

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.cs region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_0}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Docx\WordsProcessingUsingDocxFormatProvider.vb region=radwordsprocessing-formats-and-conversion-docx-docxformatprovider_0}} 

````C#
            
DocxFormatProvider provider = new DocxFormatProvider();
using (Stream input = File.OpenRead("Sample.docx"))
{
    RadFlowDocument document = provider.Import(input);
}

````
````VB.NET
Dim provider As New DocxFormatProvider()
Using input As Stream = File.OpenRead("Sample.docx")
    Dim document As RadFlowDocument = provider.Import(input)
End Using

````

{{endregion}} 

And here is how you can import a document from byte array containing the docx document:
       
#### Example 2:

The resulting __RadFlowDocument__ can be manipulatedused like any code-generated document.
        

## Export

In order to export a document to docx you need to use the __Export()__ method of __DocxFormatProvider__.
        

The following snippet shows how to use __DocxFormatProvider__ to export __RadFlowDocument__ to a file.

#### Example 3:

You can also export the document to a byte array and preserve it in a database.

#### Example 4:

The resulting documents can be opened in any application that supports docx documents.
        
