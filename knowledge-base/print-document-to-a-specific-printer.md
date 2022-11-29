---
title: How to Print Documents to a Specific Printer
description: Learn how to print documents to a specific printer with the WinForms RadPrintDocument. 
type: how-to
page_title: How to Print Documents to a Specific Printer
slug: print-document-to-a-specific-printer
position: 5
tags: print, document, printer, name
ticketid: 1583027
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadPrintDocument for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

This article demonstrates how to print a document to a specific printer by using [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}).

## Solution

**RadPdfViewer** and **RadRichTextEditor** are two controls from the UI for WinForms suite that support loading .pdf, .docx, .rtf and other document formats. No matter what type of document you want to print, the [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}).**AssociatedObject** property allows you to specify the control (IPrintable) you want to print.

The following example uses a RadPdfViewer but it can be applied to RadRichTextEditor as well. The **PrinterSettings** object offers different settings for adjusting the print document and specifying the **PrinterName**:

````C#

private void radButton1_Click(object sender, EventArgs e)
{
    RadPdfViewer radPdfViewer = new RadPdfViewer();
    radPdfViewer.DocumentLoaded += radPdfViewer_DocumentLoaded;
    radPdfViewer.LoadDocument(@"..\..\..\Lorem ipsum dolor sit amet.pdf");
    radPdfViewer.LoadElementTree();

    Application.DoEvents();
}

private void radPdfViewer_DocumentLoaded(object sender, EventArgs e)
{
    using (RadPrintDocument document = new RadPrintDocument { Landscape = false })
    {
        document.AssociatedObject = (sender as RadPdfViewerElement);
        string printerName = "Microsoft Print to PDF";
        PrinterSettings settings = new System.Drawing.Printing.PrinterSettings
        {
            PrinterName = printerName,
            Copies = 1,
            Duplex = Duplex.Simplex,
            PrintRange = PrintRange.AllPages
        };
        document.DefaultPageSettings = new System.Drawing.Printing.PageSettings
        {
            PrinterSettings = settings
        };
        document.PrinterSettings = settings;
        document.Print();
    }
}

````
````VB.NET

Private Sub RadButton1_Click(sender As Object, e As EventArgs) Handles RadButton1.Click
    Dim radPdfViewer As RadPdfViewer = New RadPdfViewer()
    AddHandler radPdfViewer.DocumentLoaded, AddressOf radPdfViewer_DocumentLoaded
    radPdfViewer.LoadDocument("..\..\..\Lorem ipsum dolor sit amet.pdf")
    radPdfViewer.LoadElementTree()
    Application.DoEvents()
End Sub

Private Sub radPdfViewer_DocumentLoaded(ByVal sender As Object, ByVal e As EventArgs)
    Using document As RadPrintDocument = New RadPrintDocument With {
        .Landscape = False
    }
        document.AssociatedObject = (TryCast(sender, RadPdfViewerElement))
        Dim printerName As String = "Microsoft Print to PDF"
        Dim settings As PrinterSettings = New System.Drawing.Printing.PrinterSettings With {
            .PrinterName = printerName,
            .Copies = 1,
            .Duplex = Duplex.Simplex,
            .PrintRange = PrintRange.AllPages
        }
        document.DefaultPageSettings = New System.Drawing.Printing.PageSettings With {
            .PrinterSettings = settings
        }
        document.PrinterSettings = settings
        document.Print()
    End Using
End Sub


````

# See Also

* [PDF Silent Print]({%slug pdfviewer-silent-print%})
* [Print Silently Documents with RadRichTextEditor]({%slug silent-documents-printing-in-richtexteditor%})
* [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%})



 
