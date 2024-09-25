---
title: Annotations
page_title: Annotations - WinForms PdfViewer Control
description: WinForms PdfViewer supports Link annotations, which means that if you open a PDF file that includes hyperlinks to absolute URIs, you can click them and have a window open, navigate to the respective address.
slug: winforms/pdfviewer/annotations
tags: annotations
published: True
position: 0
---

# Annotations

__RadPdfViewer__ supports link annotations, which means that if you open a PDF file that includes hyperlinks to absolute URIs, you can click them and have a window open, and navigate to the respective address. In addition, if there are links pointing to bookmarks in the same document, the view port will be scrolled to the destination specified in the link.

The current API includes the following members, which allow customization of the default behavior or implementation of custom logic:

* __AnnotationClicked__ event of __RadPdfViewer__: This event is fired when you click on an annotation such as a hyperlink. It comes in handy when you want to detect or even cancel the opening of a web page. The __AnnotationEventArgs__ contains the Annotation as property and the Link itself has information of its Action, i.e. if it is a UriAction. Handling the event in the following manner will not only show the Uri of each clicked link as the text of a MessageBox but will also cancel the default behavior.

#### AnnotationClicked Event Handler

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=AnnotationClicked}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=AnnotationClicked}} 

````C#
        
private void radPdfViewer1_AnnotationClicked(object sender, Telerik.Windows.Documents.Fixed.Model.Annotations.EventArgs.AnnotationEventArgs e)
{
    Telerik.Windows.Documents.Fixed.Model.Annotations.Link l = e.Annotation as Telerik.Windows.Documents.Fixed.Model.Annotations.Link;
    if (l == null)
    {
        return;
    }
    Telerik.Windows.Documents.Fixed.Model.Actions.UriAction a = l.Action as Telerik.Windows.Documents.Fixed.Model.Actions.UriAction;
    if (a == null)
    {
        return;
    }
    MessageBox.Show(a.Uri.ToString());
    e.Handled = true;
}

````
````VB.NET
Private Sub radPdfViewer1_AnnotationClicked(sender As Object, e As Telerik.Windows.Documents.Fixed.Model.Annotations.EventArgs.AnnotationEventArgs)
    Dim l As Telerik.Windows.Documents.Fixed.Model.Annotations.Link = TryCast(e.Annotation, Telerik.Windows.Documents.Fixed.Model.Annotations.Link)
    If l Is Nothing Then
        Return
    End If
    Dim a As Telerik.Windows.Documents.Fixed.Model.Actions.UriAction = TryCast(l.Action, Telerik.Windows.Documents.Fixed.Model.Actions.UriAction)
    If a Is Nothing Then
        Return
    End If
    MessageBox.Show(a.Uri.ToString())
    e.Handled = True
End Sub

````

{{endregion}}

* __HyperlinkClicked__ event of RadPdfViewer: This event is similar to AnnotationClicked, but it is raised only when you click on the hyperlink type annotations. It allows you to cancel the navigation to the associated URI or to modify the click action. The HyperlinkClickedEventArgs gives access to the URL, which can be manually checked if it is trusted. With the 2024 Q3 (2024.3.924), the default navigation behavior of the hyperlinks is to automatically open only valid and trusted addresses. If needed, the navigation can be canceled by either setting the __Handled__ property of the event args to _true_ or the __IsTrustedUrl__ property to _false_. Below is an example of using this event to prompt that the clicked hyperlink might be unsafe and provide the opportunity to cancel the navigation process upon receiving the end user confirmation:

#### HyperlinkClicked Event Handler 

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=HyperlinkClicked}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=HyperlinkClicked}} 

````C#
private void RadPdfViewer1_HyperlinkClicked(object sender, Telerik.WinControls.Hyperlinks.HyperlinkClickedEventArgs e)
{
    var link = e.URL;
    if (link.EndsWith("exe"))
    {
        e.Handled = true; MessageBoxResult Result = System.Windows.MessageBox.Show("You are about to open an executable file. Do you want to proceed", "Possible unsafe link", MessageBoxButton.YesNo, MessageBoxImage.Question);
        if (Result == MessageBoxResult.Yes)
        {
            Process.Start(new ProcessStartInfo()
            {
                FileName = link,
                UseShellExecute = true
            });
        }
    }
}

````
````VB.NET
Private Sub RadPdfViewer1_HyperlinkClicked(sender As Object, e As HyperlinkClickedEventArgs)
    Dim link = e.URL
    If link.EndsWith("exe") Then
        e.Handled = True
        Dim Result As MessageBoxResult = System.Windows.MessageBox.Show("You are about to open an executable file. Do you want to proceed", "Possible unsafe link", MessageBoxButton.YesNo, MessageBoxImage.Question)
        If Result = MessageBoxResult.Yes Then
            Process.Start(New ProcessStartInfo() With {
                .FileName = link,
                .UseShellExecute = True
            })
        End If
    End If
End Sub

````

{{endregion}}


* __Annotations__ property of __RadFixedDocument__ – A collection which returns all annotations in the document. For example, you can retrieve all links using the following code:

#### Get Annotation Links

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=GetAllLinks}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=GetAllLinks}} 

````C#
        
private IEnumerable<Telerik.Windows.Documents.Fixed.Model.Annotations.Link> GetAllLinks(Telerik.Windows.Documents.Fixed.Model.RadFixedDocument document)
{
    foreach (Telerik.Windows.Documents.Fixed.Model.Annotations.Annotation a in document.Annotations)
    {
        Telerik.Windows.Documents.Fixed.Model.Annotations.Link l = a as Telerik.Windows.Documents.Fixed.Model.Annotations.Link;
        if (l != null)
        {
            yield return l;
        }
    }
}

````
````VB.NET
Private Iterator Function GetAllLinks(document As Telerik.Windows.Documents.Fixed.Model.RadFixedDocument) As IEnumerable(Of Telerik.Windows.Documents.Fixed.Model.Annotations.Link)
    For Each a As Telerik.Windows.Documents.Fixed.Model.Annotations.Annotation In document.Annotations
        Dim l As Telerik.Windows.Documents.Fixed.Model.Annotations.Link = TryCast(a, Telerik.Windows.Documents.Fixed.Model.Annotations.Link)
        If l IsNot Nothing Then
            Yield l
        End If
    Next
End Function

````

{{endregion}}

The bookmarks in terms of “docx bookmarks” are not explicitly saved in PDF files. They are persisted only if there are Link annotations to them, so you can use the snippet below to retrieve all destinations that have links to them:

#### Get Annotation Bookmarks

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=Bookmarks}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=Bookmarks}} 

````C#
        
private IEnumerable<Telerik.Windows.Documents.Fixed.Model.Navigation.Destination> GetAllBookmarks(Telerik.Windows.Documents.Fixed.Model.RadFixedDocument document)
{
    foreach (Telerik.Windows.Documents.Fixed.Model.Annotations.Annotation a in document.Annotations)
    {
        Telerik.Windows.Documents.Fixed.Model.Annotations.Link l = a as Telerik.Windows.Documents.Fixed.Model.Annotations.Link;
        if (l != null && l.Destination != null)
        {
            yield return l.Destination;
        }
    }
}

````
````VB.NET
Private Iterator Function GetAllBookmarks(document As Telerik.Windows.Documents.Fixed.Model.RadFixedDocument) As IEnumerable(Of Telerik.Windows.Documents.Fixed.Model.Navigation.Destination)
    For Each a As Telerik.Windows.Documents.Fixed.Model.Annotations.Annotation In document.Annotations
        Dim l As Telerik.Windows.Documents.Fixed.Model.Annotations.Link = TryCast(a, Telerik.Windows.Documents.Fixed.Model.Annotations.Link)
        If l IsNot Nothing AndAlso l.Destination IsNot Nothing Then
            Yield l.Destination
        End If
    Next
End Function

````

{{endregion}}

In this way, creating some UI containing all bookmarks would be possible. Then, you could implement the same action as the one being executed when a hyperlink is clicked, i.e. scroll the document to the specific place in the document where the destination of the link is placed. The following code can be used for this purpose – navigating to a specific destination:

#### Navigate to Destination

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=GoToDestination}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=GoToDestination}} 

````C#
        
private void GoToDestination(Telerik.Windows.Documents.Fixed.Model.Navigation.Destination destination)
{
    this.radPdfViewer1.PdfViewerElement.GoToDestination(destination);
}

````
````VB.NET
Private Sub GoToDestination(destination As Telerik.Windows.Documents.Fixed.Model.Navigation.Destination)
    Me.RadPdfViewer1.PdfViewerElement.GoToDestination(destination)
End Sub

````

{{endregion}}

## See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})
