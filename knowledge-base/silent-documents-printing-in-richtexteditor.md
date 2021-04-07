---
title: Print Silently Documents with RadRichTextEditor 
description: Learn how to print Word, Html and other documents silently in RadRichTextEditor.
type: how-to
page_title: Print Silently Documents with RadRichTextEditor    
slug: silent-documents-printing-in-richtexteditor
position: 5
tags: richtexteditor, richtextbox, print, document, silent 
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.1.223|RadRichTextEditor for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

This tutorial demonstrates how to print silently different document types, e.g. .docx, .html, etc.

The required Assembly References are:

* System.Windows.Forms (for Console applications)
* Telerik.WinControls
* Telerik.WinControls.RichTextEditor
* Telerik.WinControls.UI
* TelerikCommon

## Solution

**RadRichTextEditor** supports importing the content of different document types like DOCX, XAML, HTML, RTF, Plain text. To import a document you have to use a specific class that implements the **IDocumentFormatProvider**. The supported document providers in **RadRichTextEditor** are listed [here]({%slug winforms/richtexteditor/import-export/overview%}). Once a document is imported in RadRichTextEditor, you can use its [printing]({%slug winforms/richtexteditor-/printing%}) functionality.

#### Silent Printing of Word and HTML documents

````C#
namespace ConsoleApplicationSilentPrintRTE
{
    class Program
    {
        static void Main(string[] args)
        {
            PrintWordDocument(@"..\..\Sample.docx");
            PrintHtmlDocument(@"..\..\Sample.html");
        }

        private static void PrintHtmlDocument(string fileName)
        {
            Telerik.WinControls.UI.RadRichTextEditor radRichTextEditor1 = new RadRichTextEditor();
            Telerik.WinForms.Documents.FormatProviders.Html.HtmlFormatProvider provider = new HtmlFormatProvider();
            using (System.IO.FileStream inputStream = File.OpenRead(fileName))
            {
                radRichTextEditor1.Document = provider.Import(inputStream);
            }
            radRichTextEditor1.LoadElementTree();
            radRichTextEditor1.Print();
        }

        private static void PrintWordDocument(string fileName)
        {
            Telerik.WinControls.UI.RadRichTextEditor radRichTextEditor1 = new RadRichTextEditor();
            Telerik.WinForms.Documents.FormatProviders.OpenXml.Docx.DocxFormatProvider provider = new DocxFormatProvider();
            using (System.IO.FileStream inputStream = File.OpenRead(fileName))
            {
                radRichTextEditor1.Document = provider.Import(inputStream);
            }
            radRichTextEditor1.LoadElementTree();
            radRichTextEditor1.Print();
        }
    }
}

````
````VB.NET
Module Module1

    Sub Main()
        PrintWordDocument("..\..\Sample.docx")
        PrintHtmlDocument("..\..\Sample.html")
    End Sub
    Private Sub PrintHtmlDocument(ByVal fileName As String)
        Dim radRichTextEditor1 As Telerik.WinControls.UI.RadRichTextEditor = New RadRichTextEditor()
        Dim provider As Telerik.WinForms.Documents.FormatProviders.Html.HtmlFormatProvider = New HtmlFormatProvider()

        Using inputStream As System.IO.FileStream = File.OpenRead(fileName)
            radRichTextEditor1.Document = provider.Import(inputStream)
        End Using

        radRichTextEditor1.LoadElementTree()
        radRichTextEditor1.Print()
    End Sub

    Private Sub PrintWordDocument(ByVal fileName As String)
        Dim radRichTextEditor1 As Telerik.WinControls.UI.RadRichTextEditor = New RadRichTextEditor()
        Dim provider As Telerik.WinForms.Documents.FormatProviders.OpenXml.Docx.DocxFormatProvider = New DocxFormatProvider()

        Using inputStream As System.IO.FileStream = File.OpenRead(fileName)
            radRichTextEditor1.Document = provider.Import(inputStream)
        End Using

        radRichTextEditor1.LoadElementTree()
        radRichTextEditor1.Print()
    End Sub

End Module


````

The above approach can be followed with the rest of the document providers that **RadRichTextEditor** offers.


# See Also

* [Using DocxFormatProvider]({%slug winforms/richtexteditor/import-export/docx/docxformatprovider%})
* [Using HtmlFormatProvider]({%slug winforms/richtexteditor/import-export/html/htmlformatprovider%})
* [Using TxtFormatProvider]({%slug winforms/richtexteditor/import-export/plain-text/txtformatprovider%})
* [Using RtfFormatProvider]({%slug winforms/richtexteditor/import-export/rtf/rtfformatprovider%})
* [Using XamlFormatProvider]({%slug winforms/richtexteditor/import-export/xaml/xamlformatprovider%})


