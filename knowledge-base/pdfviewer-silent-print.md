---
title: PDF Silent Print
description: This article shows ho you can print a pdf document without showing it to the user.
type: how-to
page_title: PDF Silent Print
slug: pdfviewer-silent-print
position: 0
tags: pdfviewer, print
ticketid: 0
res_type: kb
---


## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.1 220</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadPdfViewer for WinForms</td>
    </tr>
</table>

## Problem

You need to print a PDF document without showing it to the user.

## Solution

You need to use the __DocumentLoaded__ event because the document is loaded in a separate thread. Once the document is loaded you can call the __Print__ method. The following snippet shows how you can print the document.

#### PDF Silent Print

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    RadPdfViewer rViewer = new RadPdfViewer();
    rViewer.DocumentLoaded += RViewer_DocumentLoaded;
    rViewer.LoadDocument(@"C:\Book1.pdf");
    rViewer.LoadElementTree();
    Application.DoEvents();
}

private static void RViewer_DocumentLoaded(object sender, EventArgs e)
{

    var radPdfViewerElement = (RadPdfViewerElement)sender;
    radPdfViewerElement.PrintScalePageToPaperSize = true;

    RadPrintDocument document = new RadPrintDocument();
    document.Landscape = false;
    document.Margins = new Margins(0, 0, 0, 0);
    document.DefaultPageSettings.PrinterSettings.Copies = 1;
    document.AssociatedObject = radPdfViewerElement;

    document.Print();
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim rViewer As New RadPdfViewer()
    AddHandler rViewer.DocumentLoaded, AddressOf RViewer_DocumentLoaded
    rViewer.LoadDocument("C:\Book1.pdf")
    rViewer.LoadElementTree()
    Application.DoEvents()
End Sub

Private Shared Sub RViewer_DocumentLoaded(ByVal sender As Object, ByVal e As EventArgs)
    Dim radPdfViewerElement = CType(sender, RadPdfViewerElement)
    radPdfViewerElement.PrintScalePageToPaperSize = True

    Dim document As New RadPrintDocument()
    document.Landscape = False
    document.Margins = New Margins(0, 0, 0, 0)
    document.DefaultPageSettings.PrinterSettings.Copies = 1
    document.AssociatedObject = radPdfViewerElement

    document.Print()
End Sub

````

>note If you don't assign the RadPrintDocument.PrintController property, then you get a default print controller. An instance of **PrintControllerWithStatusDialog** which displays the progress dialog, counting pages. If you don't want to show the small printing dialog counting the pages, you can initialize the RadPrintDocument.**PrintController** property to a new System.Drawing.Printing.**StandardPrintController** instance.

## Assembly References

If you add the RadPdfViewer at run time you need to add references to the following assemblies:

* Telerik.WinControls.PdfViewer
* Telerik.WinControls
* Telerik.WinControls.UI
* TelerikCommon
* Telerik.Windows.Documents.Fixed
* Telerik.Windows.Documents.Core
* Telerik.Windows.Zip.dll

# See Also

* [RadPdfViewer]({%slug winforms/pdfviewer%})




