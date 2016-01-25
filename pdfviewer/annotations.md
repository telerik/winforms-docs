---
title: Annotations
page_title: Annotations | UI for WinForms Documentation
description: Annotations
slug: winforms/pdfviewer/annotations
tags: annotations
published: True
position: 5
---

__RadPdfViewer__ supports Link annotations, which means that if you open a PDF file that includes hyperlinks to absolute URIs, you can click them and have a window open, navigated to the respective address. In addition, if there are links pointing to bookmarks in the same document, the view port will be scrolled to the destination specified in the link.

The current API includes the following members, which allow customization of the default behavior or implementing custom logic:

* __AnnotationClicked__ event of __RadPdfViewer__:This event is fired when you click on an annotation such as a hyperlink. It comes handy when you want to detect or even cancel the opening of a web page. The __AnnotationEventArgs__ contain the Annotation as property and the Link itself has information of its Action, i.e. if it is a UriAction. Handling the event in the following manner will not only show the Uri of each clicked link as the text of a MessageBox, but will also cancel the default behavior.

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=AnnotationClicked}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=AnnotationClicked}} 

````C#
private void radPdfViewer1_AnnotationClicked(object sender, Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.EventArgs.AnnotationEventArgs e)
{
    Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link l = e.Annotation as Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link;
    if (l == null)
    {
        return;
    }
    Telerik.Windows.Pdf.Documents.Fixed.Model.Actions.UriAction a = l.Action as Telerik.Windows.Pdf.Documents.Fixed.Model.Actions.UriAction;
    if (a == null)
    {
        return;
    }
    MessageBox.Show(a.Uri.ToString());
    e.Handled = true;
}

````
````VB.NET
Private Sub radPdfViewer1_AnnotationClicked(sender As Object, e As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.EventArgs.AnnotationEventArgs)
    Dim l As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link = TryCast(e.Annotation, Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link)
    If l Is Nothing Then
        Return
    End If
    Dim a As Telerik.Windows.Pdf.Documents.Fixed.Model.Actions.UriAction = TryCast(l.Action, Telerik.Windows.Pdf.Documents.Fixed.Model.Actions.UriAction)
    If a Is Nothing Then
        Return
    End If
    MessageBox.Show(a.Uri.ToString())
    e.Handled = True
End Sub

````

{{endregion}}

* __Annotations__ property of __RadFixedDocument__ – a collection which returns all annotations in the document. For example you can retrieve all links using the following code:

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=GetAllLinks}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=GetAllLinks}} 

````C#
private IEnumerable<Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link> GetAllLinks(Telerik.Windows.Pdf.Documents.Fixed.Model.RadFixedDocument document)
        {
            foreach (Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Annotation a in document.Annotations)
            {
                Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link l = a as Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link;
                if (l != null)
                {
                    yield return l;
                }
            }
        }

````
````VB.NET
 Private Iterator Function GetAllLinks(document As Telerik.Windows.Pdf.Documents.Fixed.Model.RadFixedDocument) As IEnumerable(Of Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link)
        For Each a As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Annotation In document.Annotations
            Dim l As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link = TryCast(a, Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link)
            If l IsNot Nothing Then
                Yield l
            End If
        Next
    End Function

````

{{endregion}}

The bookmarks in terms of “docx bookmarks” are not explicitly saved in PDF files. They are persisted only if there are Link annotations to them, so you can use the snippet below to retrieve all destinations that have links to them:

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=Bookmarks}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=Bookmarks}} 

````C#
 private IEnumerable<Telerik.Windows.Pdf.Documents.Fixed.Model.Navigation.Destination> GetAllBookmarks(Telerik.Windows.Pdf.Documents.Fixed.Model.RadFixedDocument document)
        {
            foreach (Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Annotation a in document.Annotations)
            {
                Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link l = a as Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link;
                if (l != null && l.Destination != null)
                {
                    yield return l.Destination;
                }
            }
        }

````
````VB.NET
Private Iterator Function GetAllBookmarks(document As Telerik.Windows.Pdf.Documents.Fixed.Model.RadFixedDocument) As IEnumerable(Of Telerik.Windows.Pdf.Documents.Fixed.Model.Navigation.Destination)
    For Each a As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Annotation In document.Annotations
        Dim l As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link = TryCast(a, Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link)
        If l IsNot Nothing AndAlso l.Destination IsNot Nothing Then
            Yield l.Destination
        End If
    Next
End Function

````

{{endregion}}

In this way it would be possible to create some UI that contains all bookmarks. Then, you could implement the same action as the one being executed when a hyperlink is clicked, i.e. scroll the document to the specific place in the document where the destination of the link is placed. The following code can be used for this purpose – navigating to a specific destination:

{{source=..\SamplesCS\PdfViewer\PdfAnnotations.cs region=GoToDestination}} 
{{source=..\SamplesVB\PdfViewer\PdfAnnotations.vb region=GoToDestination}} 

````C#
private void GoToDestination(Telerik.Windows.Pdf.Documents.Fixed.Model.Navigation.Destination destination)
        {
            this.radPdfViewer1.PdfViewerElement.GoToDestination(destination);
        }  
````
````VB.NET
 Private Sub GoToDestination(destination As Telerik.Windows.Pdf.Documents.Fixed.Model.Navigation.Destination)
        Me.RadPdfViewer1.PdfViewerElement.GoToDestination(destination)
    End Sub 
````

{{endregion}}
