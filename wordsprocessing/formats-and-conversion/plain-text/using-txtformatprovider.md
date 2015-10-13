---
title: Using TxtFormatProvider
page_title: Using TxtFormatProvider | UI for WinForms Documentation
description: Using TxtFormatProvider
slug: winforms/wordsprocessing/formats-and-conversion/plain-text/using-txtformatprovider
tags: using,txtformatprovider
published: True
position: 0
---

# Using TxtFormatProvider



__TxtFormatProvider__ makes it easy to import and export __RadFlowDocument__ to/from plain text format, preserving the document structure.
      

All you have to do in order to use __TxtFormatProvider__ is add references to the assemblies listed below:
      

* Telerik.Windows.Documents.Core.dll
          

* Telerik.Windows.Documents.Flow.dll
          

## Import

In order to import a plain text document you need to use the __Import()__ method of __TxtFormatProvider__.
        

The following code snippet shows how to use __TxtFormatProvider__ to import a document from a file:

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.cs region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_0}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.vb region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_0}} 

````C#
            TxtFormatProvider provider = new TxtFormatProvider();
            using (Stream input = File.OpenRead("Sample.txt"))
            {
                RadFlowDocument document = provider.Import(input);
            }
````
````VB.NET
            Dim provider As New TxtFormatProvider()
            Using input As Stream = File.OpenRead("Sample.txt")
                Dim document As RadFlowDocument = provider.Import(input)
            End Using
            '
````

{{endregion}}

And here is how you can import a document from string:

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.cs region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_1}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.vb region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_1}} 

````C#
            TxtFormatProvider provider = new TxtFormatProvider();
            RadFlowDocument document = provider.Import(input);
````
````VB.NET
            Dim provider As New TxtFormatProvider()
            Dim document As RadFlowDocument = provider.Import(input)
            '
````

{{endregion}} 

The resulting __RadFlowDocument__ can be manipulatedused like any code-generated document.

## Export

In order to export a document to plain text you need to use the __Export()__ method of __TxtFormatProvider__.
        

The following snippet shows how to use __TxtFormatProvider__ to export __RadFlowDocument__ to a file.

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.cs region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_2}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.vb region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_2}} 

````C#
            TxtFormatProvider provider = new TxtFormatProvider();
            using (Stream output = File.OpenWrite("sample.txt"))
            {
                RadFlowDocument document = CreateRadFlowDocument();
                provider.Export(document, output);
            }
````
````VB.NET
            Dim provider As New TxtFormatProvider()
            Using output As Stream = File.OpenWrite("sample.txt")
                Dim document As RadFlowDocument = CreateRadFlowDocument()
                provider.Export(document, output)
            End Using
            '
````

{{endregion}} 

You can also export the document to a string and preserve it in a database.

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.cs region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_3}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\PlainText\WordsProcessingUsingTxtFormatProvider.vb region=radwordsprocessing-formats-and-conversion-txt-txtformatprovider_3}} 

````C#
            TxtFormatProvider provider = new TxtFormatProvider();
            RadFlowDocument document = CreateRadFlowDocument();
            string output = provider.Export(document);
````
````VB.NET
            Dim provider As New TxtFormatProvider()
            Dim document As RadFlowDocument = CreateRadFlowDocument()
            Dim output As String = provider.Export(document)
            '
````

{{endregion}} 

