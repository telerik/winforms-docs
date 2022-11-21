---
title: Handle Rendering Events
page_title: Handle Rendering Events - RadPdfViewer
description: This article shows how you can utilize the PageRenderStarted and PageRenderCompleted events to display a waiting bar while rendering heavy pages in RadPdfViewer.
slug: winforms/pdfviewer/how-to/handle-rendering-events 
tags: save, image
published: True
position: 0
---

# Handle Page Rendering Events

**RadPdfViewer** exposes two events indicating when a page starts and completes a rendering operations. The article will demonstrate how these events can be utilized to display a waiting-bar during the time-consuming job.

>important The **PageRenderStarted** and **PageRenderCompleted** events are raised from a background thread so one should use [BeginInvoke](https://msdn.microsoft.com/en-us/library/a06c0dc2(v=vs.110).aspx) when interacting with any controls on the UI thread from the event handlers.  

>caption Figure 1: Waiting Bar While Rendering
![pdf-viewer-how-to-handle-rendering-events001](images/pdf-viewer-how-to-handle-rendering-events001.gif)

#### Initial Setup and Events Subscription.

{{source=..\SamplesCS\PdfViewer\WaitingBarForm.cs region=InitialSetup}} 
{{source=..\SamplesVB\PdfViewer\WaitingBarForm.vb region=InitialSetup}}
````C#
public WaitingBarForm()
{
    InitializeComponent();
    
    this.radPdfViewer1.DocumentLoaded += RadPdfViewer1_DocumentLoaded;
    this.radPdfViewer1.ViewerMode = FixedDocumentViewerMode.None;
    this.radPdfViewer1.FitFullPage = true;
}
protected override void OnShown(EventArgs e)
{
    base.OnShown(e);
    this.radPdfViewer1.LoadDocument(@"..\..\PdfViewer\ObjectiveC.pdf");
}
private void RadPdfViewer1_DocumentLoaded(object sender, EventArgs e)
{
    this.radPdfViewer1.PageRenderStarted += OnPageRenderStarted;
    this.radPdfViewer1.PageRenderCompleted += OnPageRenderCompleted;
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler Me.radPdfViewer1.DocumentLoaded, AddressOf RadPdfViewer1_DocumentLoaded
    Me.radPdfViewer1.ViewerMode = FixedDocumentViewerMode.None
    Me.radPdfViewer1.FitFullPage = True
End Sub
Protected Overrides Sub OnShown(e As EventArgs)
    MyBase.OnShown(e)
    Me.radPdfViewer1.LoadDocument("..\..\PdfViewer\ObjectiveC.pdf")
End Sub
Private Sub RadPdfViewer1_DocumentLoaded(sender As Object, e As EventArgs)
    AddHandler Me.radPdfViewer1.PageRenderStarted, AddressOf OnPageRenderStarted
    AddHandler Me.radPdfViewer1.PageRenderCompleted, AddressOf OnPageRenderCompleted
End Sub

````



{{endregion}}

#### Events Handling

{{source=..\SamplesCS\PdfViewer\WaitingBarForm.cs region=EventsHandling}} 
{{source=..\SamplesVB\PdfViewer\WaitingBarForm.vb region=EventsHandling}}
````C#
private void OnPageRenderCompleted(object sender, EventArgs e)
{
    if (this.radPdfViewer1.InvokeRequired)
    {
        this.radPdfViewer1.BeginInvoke((MethodInvoker)delegate
        {
            if (this.radPdfViewer1.PdfViewerElement.IsWaiting())
            {
                this.radPdfViewer1.PdfViewerElement.StopWaiting();
            }
        });
    }
}
private void OnPageRenderStarted(object sender, EventArgs e)
{
    if (this.radPdfViewer1.InvokeRequired)
    {
        this.radPdfViewer1.BeginInvoke((MethodInvoker)delegate
        {
            if (!this.radPdfViewer1.PdfViewerElement.IsWaiting())
            {
                this.radPdfViewer1.PdfViewerElement.StartWaiting();
            }
        });
    }
}

````
````VB.NET
Private Sub OnPageRenderCompleted(sender As Object, e As EventArgs)
    If Me.radPdfViewer1.InvokeRequired Then
        Me.radPdfViewer1.BeginInvoke(New Action(Function()
                                                    If Me.radPdfViewer1.PdfViewerElement.IsWaiting() Then
                                                        Me.radPdfViewer1.PdfViewerElement.StopWaiting()
                                                    End If
                                                End Function))
    End If
End Sub
Private Sub OnPageRenderStarted(sender As Object, e As EventArgs)
    If Me.radPdfViewer1.InvokeRequired Then
        Me.radPdfViewer1.BeginInvoke(New Action(Function()
                                                    If Not Me.radPdfViewer1.PdfViewerElement.IsWaiting() Then
                                                        Me.radPdfViewer1.PdfViewerElement.StartWaiting()
                                                    End If
                                                End Function))
    End If
End Sub

````


{{endregion}}

# See Also

* [Properties Methods and Events]({%slug winforms/pivotgrid/calculated-fields%})
* [Waiting Bar]({%slug winforms/track-and-status-controls/waitingbar%})
