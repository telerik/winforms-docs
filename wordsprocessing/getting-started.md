---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/wordsprocessing/getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



This tutorial will take you through the creation of a sample application that uses RadWordsProcessing.

* [Assembly References](#assembly-references)

* [Creating RadFlowDocument from Code](#creating-radflowdocument-from-code)

* [Exporting RadFlowDocument to Docx](#exporting-radflowdocument-to-docx)

## Assembly References

Here is a list of assemblies that contain the __RadWordsProcessing__ functionality and need to be referenced in your project:

* Telerik.Windows.Documents.Core
            

* Telerik.Windows.Documents.Flow
            

* Telerik.Windows.Zip
            

* Telerik.Windows.Documents.Flow.FormatProviders.Pdf
            

* Telerik.Windows.Documents.Fixed
            

>note The latter two assemblies - Telerik.Windows.Documents.Flow.FormatProviders.Pdf.dll and Telerik.Windows.Documents.Fixed.dll are only needed if you plan on exporting the document to PDF format.
>


## Creating RadFlowDocument from Code

Here is how to create a [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%}) and insert some text content.

#### Example 1: Create RadFlowDocument Programmatically

{{source=..\SamplesCS\WordsProcessing\WordsProcessingGettingStarted.cs region=radwordsprocessing-getting-started_0}} 
{{source=..\SamplesVB\WordsProcessing\WordsProcessingGettingStarted.vb region=radwordsprocessing-getting-started_0}} 

````C#
RadFlowDocument document = new RadFlowDocument();
RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
editor.InsertText("Hello world!");

````
````VB.NET
Dim document As New RadFlowDocument()
Dim editor As New RadFlowDocumentEditor(document)
editor.InsertText("Hello world!")

````

{{endregion}} 

You need to add using directive to the following namespaces:
        

* Telerik.Windows.Documents.Flow.Model
            

* Telerik.Windows.Documents.Flow.Model.Editing
            

## Exporting RadFlowDocument to Docx

Exporting the document to Docx file can be achieved with the [DocxFormatProvider]({%slug winforms/wordsprocessing/formats-and-conversion/docx/using-docxformatprovider%}). Here is how to create a provider instance and save a document with it:

#### Example 2: Export RadFlowDocument to Docx

{{source=..\SamplesCS\WordsProcessing\WordsProcessingGettingStarted.cs region=radwordsprocessing-getting-started_1}} 
{{source=..\SamplesVB\WordsProcessing\WordsProcessingGettingStarted.vb region=radwordsprocessing-getting-started_1}} 

````C#
using (Stream output = new FileStream("output.docx", FileMode.OpenOrCreate))
{
    DocxFormatProvider provider = new DocxFormatProvider();
    provider.Export(document, output);
}

````
````VB.NET
Using output As Stream = New FileStream("output.docx", FileMode.OpenOrCreate)
    Dim provider As New DocxFormatProvider()
    provider.Export(document, output)
End Using

````

{{endregion}}

More information about the supported formats and features can be found [here](b61690b2-afed-4616-be13-20a38078c066).

# See Also

* [Model]({%slug winforms/wordsprocessing/model%})
        
