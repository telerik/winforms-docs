---
title: Using HtmlFormatProvider
page_title: Using HtmlFormatProvider
description: Using HtmlFormatProvider
slug: wordsprocessing-formats-and-conversion-html-usinghtmlformatprovider
tags: using,htmlformatprovider
published: True
position: 2
---

# Using HtmlFormatProvider



__HtmlFormatProvider__ makes it easy to import and export __RadFlowDocument__ to/from HTML format, preserving as much as possible of the document structure and formatting. To use __HtmlFormatProvider__, you should add references to the assemblies listed below:
      

* Telerik.Windows.Documents.Core.dll
          

* Telerik.Windows.Documents.Flow.dll
          

## Import

In order to import an HTML document you can use the overloads of the __HtmlFormatProvider.Import()__ method.
        

__Example 1__ shows how to use HtmlFormatProvider to import an HTML document from a file.
        

#### __[C#] Example 1: Import HTML File __

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.cs region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_0}}
	            using (Stream input = File.Create(@"Sample.html"))
	            {
	                HtmlFormatProvider provider = new HtmlFormatProvider();
	                RadFlowDocument document = provider.Import(input);
	            }
	{{endregion}}



#### __[VB.NET] Example 1: Import HTML File __

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.vb region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_0}}
	            Using input As Stream = File.Create("Sample.html")
	                Dim provider As New HtmlFormatProvider()
	                Dim document As RadFlowDocument = provider.Import(input)
	            End Using
	{{endregion}}



__Example 2__ shows how you can import an HTML string.
        

#### __[C#] Example 2: Import HTML String__

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.cs region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_1}}
	            string html = "<p>hello world!</p>";
	            HtmlFormatProvider provider = new HtmlFormatProvider();
	            RadFlowDocument document = provider.Import(html);
	{{endregion}}



#### __[VB.NET] Example 2: Import HTML String__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.vb region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_1}}
	            Dim html As String = "<p>hello world!</p>"
	            Dim provider As New HtmlFormatProvider()
	            Dim document As RadFlowDocument = provider.Import(html)
	{{endregion}}



The resulting __RadFlowDocument__ can be used like any code-generated document.
        

## Export

In order to export a document to HTML you can use the overloads of the__HtmlFormatProvider.Export=()__ method.
        

__Example 3__ shows how to use the HtmlFormatProvider to export an instance of RadFlowDocument to a file:
        

#### __[C#] Example 3: Export HTML to File__

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.cs region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_2}}
	            HtmlFormatProvider provider = new HtmlFormatProvider();
	            using (Stream output = File.Create("Sample.html"))
	            {
	                RadFlowDocument document = CreateRadFlowDocument();
	                provider.Export(document, output);
	            }
	{{endregion}}



#### __[VB.NET] Example 3: Export HTML to File__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.vb region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_2}}
	            Dim provider As New HtmlFormatProvider()
	            Using output As Stream = File.Create("Sample.html")
	                Dim document As RadFlowDocument = CreateRadFlowDocument()
	                provider.Export(document, output)
	            End Using
	{{endregion}}



You can also export the document to a string variable like shown in __Example 4__.
        

#### __[C#] Example 4: Export HTML to String__

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.cs region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_3}}
	            RadFlowDocument document = CreateRadFlowDocument();
	            HtmlFormatProvider provider = new HtmlFormatProvider();
	            string html = provider.Export(document);
	{{endregion}}



#### __[VB.NET] Example 4: Export HTML to String__

{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Html\WordsProcessingUsingHtmlFormatProvider.vb region=radwordsprocessing-formats-and-conversion-html-htmlformatprovider_3}}
	            Dim document As RadFlowDocument = CreateRadFlowDocument()
	            Dim provider As New HtmlFormatProvider()
	            Dim html As String = provider.Export(document)
	{{endregion}}


