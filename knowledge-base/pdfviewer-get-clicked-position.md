---
title: PdfViewer get the clicked position on the page
description: PdfViewer get the clicked position on the page
type: how-to 
page_title: PdfViewer get the clicked position on the page
slug: pdfviewer-get-clicked-position
position: 0
tags:  pdfviewer, position, page
res_type: kb
---

|Product Version|Product|Author|
|----|----|----|
|2020.2.512.40|RadPdfViewer|[Dimitar Karamfilov](https://www.telerik.com/blogs/author/dimitar-karamfilov)|

## Description
 
This article shows how you can get the position when the user clicks on a specific page. The position relates to the upper left corner of the page. 

## Solution

Use the following code to calculate the position:

````C#
public RadForm1()
{
    InitializeComponent();
    radPdfViewer1.MouseDown += RadPdfViewer1_MouseDown;
}

private void RadPdfViewer1_MouseDown(object sender, MouseEventArgs e)
{
    var element = radPdfViewer1.ElementTree.GetElementAtPoint(((MouseEventArgs)e).Location) as RadFixedPageElement;

    if (element != null)
    {

        var mouseLocation = ((MouseEventArgs)e).Location;
        var tt = element.TotalTransform;
        tt.Invert();

        var pointInDoc = tt.TransformPoint(mouseLocation);

        currentPageIndex = radPdfViewer1.Document.Pages.IndexOf(element.Page);
        var zoom = radPdfViewer1.PdfViewerElement.ScaleFactor;

        Console.WriteLine("PageNo: {0} X:{1} Y:{2}", currentPageIndex, pointInDoc.X / zoom, pointInDoc.Y / zoom);
    }
}

````
````VB.NET
Public Sub New()
	InitializeComponent()
	AddHandler radPdfViewer1.MouseDown, AddressOf RadPdfViewer1_MouseDown
End Sub

Private Sub RadPdfViewer1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
	Dim element = TryCast(radPdfViewer1.ElementTree.GetElementAtPoint(CType(e, MouseEventArgs).Location), RadFixedPageElement)

	If element IsNot Nothing Then

		Dim mouseLocation = CType(e, MouseEventArgs).Location
		Dim tt = element.TotalTransform
		tt.Invert()

		Dim pointInDoc = tt.TransformPoint(mouseLocation)

		currentPageIndex = radPdfViewer1.Document.Pages.IndexOf(element.Page)
		Dim zoom = radPdfViewer1.PdfViewerElement.ScaleFactor

		Console.WriteLine("PageNo: {0} X:{1} Y:{2}", currentPageIndex, pointInDoc.X / zoom, pointInDoc.Y / zoom)
	End If
End Sub

````



