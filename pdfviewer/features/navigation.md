---
title: Navigation
page_title: Navigation | UI for WinForms Documentation
description: Navigation
slug: winforms/pdfviewer/navigation
tags: navigation
published: True
position: 3
---

# Navigating

You can use the __PageUp__, __PageDown__, __GoToPage__ methods to navigate through the document programmatically:

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=PageNavigation}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=PageNavigation}} 

````C#
private void buttonPageUp_Click(object sender, EventArgs e)
{
    this.radPdfViewer1.PdfViewerElement.PageUp();
}
private void buttonPageDown_Click(object sender, EventArgs e)
{
    this.radPdfViewer1.PdfViewerElement.PageDown();
}
private void buttonGotoPage_Click(object sender, EventArgs e)
{
    this.radPdfViewer1.PdfViewerElement.GoToPage(3);
}

````
````VB.NET
Private Sub buttonPageUp_Click(sender As Object, e As EventArgs) Handles buttonPageUp.Click
    Me.radPdfViewer1.PdfViewerElement.PageUp()
End Sub
Private Sub buttonPageDown_Click(sender As Object, e As EventArgs) Handles buttonPageDown.Click
    Me.radPdfViewer1.PdfViewerElement.PageDown()
End Sub
Private Sub buttonGotoPage_Click(sender As Object, e As EventArgs) Handles buttonGotoPage.Click
    Me.radPdfViewer1.PdfViewerElement.GoToPage(3)
End Sub

````

{{endregion}}

Additionally, you can control the precise scroll position by using the __Scroll__ method which scrolls the view with a specified offset or the __ScrollTo__ method which scrolls the view to an exact position:

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=Scrolling}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=Scrolling}} 

````C#
private void buttonScroll_Click(object sender, EventArgs e)
{
    this.radPdfViewer1.PdfViewerElement.Scroll(30, 30);
}
private void buttonScrollTo_Click(object sender, EventArgs e)
{
    this.radPdfViewer1.PdfViewerElement.ScrollTo(0, 300);
}

````
````VB.NET
Private Sub buttonScroll_Click(sender As Object, e As EventArgs) Handles buttonScroll.Click
    Me.radPdfViewer1.PdfViewerElement.Scroll(30, 30)
End Sub
Private Sub buttonScrollTo_Click(sender As Object, e As EventArgs) Handles buttonScrollTo.Click
    Me.radPdfViewer1.PdfViewerElement.ScrollTo(0, 300)
End Sub

````

{{endregion}}
