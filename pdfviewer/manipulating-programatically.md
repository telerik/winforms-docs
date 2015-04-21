---
title: Manipulating programatically
page_title: Manipulating programatically
description: Manipulating programatically
slug: pdfviewer-manipulating-programatically
tags: manipulating,programatically
published: True
position: 2
---

# Manipulating programatically



Using the public API of RadPdfViewerElement you can do various manipulations in your application.
      

## Navigating

You can use the __PageUp__, __PageDown__, __GoToPage__ methods to navigate through
          the document programmatically:
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=PageNavigation}}
	
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
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=PageNavigation}}
	
	    Private Sub buttonPageUp_Click(sender As Object, e As EventArgs) Handles buttonPageUp.Click
	        Me.radPdfViewer1.PdfViewerElement.PageUp()
	    End Sub
	
	    Private Sub buttonPageDown_Click(sender As Object, e As EventArgs) Handles buttonPageDown.Click
	        Me.radPdfViewer1.PdfViewerElement.PageDown()
	    End Sub
	
	    Private Sub buttonGotoPage_Click(sender As Object, e As EventArgs) Handles buttonGotoPage.Click
	        Me.radPdfViewer1.PdfViewerElement.GoToPage(3)
	    End Sub
	
	{{endregion}}



Additionally, you can control the precise scroll position by using the __Scroll__ method which scrolls the view with
          a specified offset or the __ScrollTo__ method which scrolls the view to an exact position:
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=Scrolling}}
	
	        private void buttonScroll_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.Scroll(30, 30);
	        }
	
	        private void buttonScrollTo_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.ScrollTo(0, 300);
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=Scrolling}}
	
	    Private Sub buttonScroll_Click(sender As Object, e As EventArgs) Handles buttonScroll.Click
	        Me.radPdfViewer1.PdfViewerElement.Scroll(30, 30)
	    End Sub
	
	    Private Sub buttonScrollTo_Click(sender As Object, e As EventArgs) Handles buttonScrollTo.Click
	        Me.radPdfViewer1.PdfViewerElement.ScrollTo(0, 300)
	    End Sub
	
	{{endregion}}



## Text Manipulations

There are various methods in the API of RadPdfViewerElement which you can use to manipulate the text selection.
        

The __SelectAll__, __DeselectAll__, __Select__ methods allow you to set the selection programmatically:

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=Select}}
	
	        private void buttonSelectAll_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.SelectAll();
	        }
	
	        private void buttonDeselectAll_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.DeselectAll();
	        }
	
	        private void buttonSelect_Click(object sender, EventArgs e)
	        {
	            Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition startPosition = new Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(this.radPdfViewer1.Document);
	            Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition endPosition = new Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(this.radPdfViewer1.Document);
	            startPosition.MoveToLineStart();
	            endPosition.MoveToLineEnd();
	
	            //Select the first line in the document
	            this.radPdfViewer1.PdfViewerElement.Select(startPosition, endPosition);
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=Select}}
	
	    Private Sub buttonSelectAll_Click(sender As Object, e As EventArgs) Handles buttonSelectAll.Click
	        Me.radPdfViewer1.PdfViewerElement.SelectAll()
	    End Sub
	
	    Private Sub buttonDeselectAll_Click(sender As Object, e As EventArgs) Handles buttonDeselectAll.Click
	        Me.radPdfViewer1.PdfViewerElement.DeselectAll()
	    End Sub
	
	    Private Sub buttonSelect_Click(sender As Object, e As EventArgs) Handles buttonSelect.Click
	        Dim startPosition As New Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(Me.radPdfViewer1.Document)
	        Dim endPosition As New Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(Me.radPdfViewer1.Document)
	        startPosition.MoveToLineStart()
	        endPosition.MoveToLineEnd()
	
	        'Select the first line in the document
	        Me.radPdfViewer1.PdfViewerElement.[Select](startPosition, endPosition)
	    End Sub
	
	{{endregion}}



You can use the __GetSelectedText__, __GetSelectedTextAsync__ methods to get the currently selected text.
          The __GetSelectedTextAsync__ method does this operation asynchronously and calls the specified callback function when ready.
          The __Copy__ method copies the current selection to the clipboard. It executes the operation in the background, so the text is
          not copied to the clipboard until the waiting indicator is visible.The following sample demonstrates using these methods:
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=GetSelectedText}}
	
	        private void butonGetSelectedText_Click(object sender, EventArgs e)
	        {
	            RadMessageBox.Show("The current selection: " + this.radPdfViewer1.PdfViewerElement.GetSelectedText());
	        }
	
	        private void buttonGetSelectedTextAsync_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.GetSelectedTextAsync(delegate(string text) { MessageBox.Show("Selected text: " + text); });
	        }
	
	        private void buttonCopy_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.Copy();
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=GetSelectedText}}
	
	    Private Sub buttonGetSelectedText_Click(sender As Object, e As EventArgs) Handles buttonGetSelectedText.Click
	        RadMessageBox.Show("The current selection: " & Me.radPdfViewer1.PdfViewerElement.GetSelectedText())
	    End Sub
	
	    Private Sub buttonGetSelectedTextAsync_Click(sender As Object, e As EventArgs) Handles buttonGetSelectedTextAsync.Click
	        Me.radPdfViewer1.PdfViewerElement.GetSelectedTextAsync(Function(text As String)
	                                                                   MessageBox.Show("Selected text: " & text)
	                                                               End Function)
		End Sub
	
	    Private Sub buttonCopy_Click(sender As Object, e As EventArgs) Handles buttonCopy.Click
	        Me.radPdfViewer1.PdfViewerElement.Copy()
	    End Sub
	
	{{endregion}}



The __Find__, __FindPrevious__ are used to perform text search forwards or backwards respectively. 
          These methods return the result in a special __SearchResult__ structure which provides information about the result:
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=Search}}
	
	        private void buttonFindNext_Click(object sender, EventArgs e)
	        {
	            Telerik.Windows.Pdf.Documents.Fixed.Search.SearchResult res;
	            if (this.checkSearchBackwards.IsChecked)
	            {
	                res = this.radPdfViewer1.PdfViewerElement.FindPrevious("WinForms");
	            }
	            else
	            {
	                res = this.radPdfViewer1.PdfViewerElement.Find("WinForms");
	            }
	
	            if (res == Telerik.Windows.Pdf.Documents.Fixed.Search.SearchResult.NotFound)
	            {
	                RadMessageBox.Show("String not found");
	            }
	            else
	            {
	                RadMessageBox.Show("Result found on page " + res.Range.StartPosition.Page.PageNo);
	            }
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=Search}}
	
	    Private Sub buttonFindNext_Click(sender As Object, e As EventArgs) Handles buttonFindNext.Click
	        Dim res As Telerik.Windows.Pdf.Documents.Fixed.Search.SearchResult
	        If Me.checkSearchBackwards.IsChecked Then
	            res = Me.radPdfViewer1.PdfViewerElement.FindPrevious("WinForms")
	        Else
	            res = Me.radPdfViewer1.PdfViewerElement.Find("WinForms")
	        End If
	
	        If res Is Telerik.Windows.Pdf.Documents.Fixed.Search.SearchResult.NotFound Then
	            RadMessageBox.Show("String not found")
	        Else
	            RadMessageBox.Show("Result found on page " & res.Range.StartPosition.Page.PageNo)
	        End If
	    End Sub
	
	{{endregion}}



## Context Menu

RadPdfViewer has a default context menu - __PdfViewerContextMenu__ which provides a quick way of performing a number of commands.
          However, you can replace this menu with any custom one by setting the __RadContextMenu__ property of the RadPdfViewer.
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ChangeContextMenu}}
	
	            this.radPdfViewer1.RadContextMenu = this.radContextMenu1;
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ChangeContextMenu}}
	
	        Me.radPdfViewer1.RadContextMenu = Me.radContextMenu1
	
	{{endregion}}



You can also use the __ShowMenu__ method to show the context menu programmatically at a specified location.
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ShowContextMenu}}
	
	        private void buttonShowMenu_Click(object sender, EventArgs e)
	        {
	            this.radPdfViewer1.PdfViewerElement.ShowMenu(new Point(100, 100));
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ShowContextMenu}}
	
	    Private Sub buttonShowMenu_Click(sender As Object, e As EventArgs) Handles buttonShowMenu.Click
	        Me.radPdfViewer1.PdfViewerElement.ShowMenu(New Point(100, 100))
	    End Sub
	
	{{endregion}}



## Annotations

Annotations are hyperlinks inside a document which when clicked depending on their type can either open an external web page or navigate inside the document. 
          By handling the __AnnotationClicked__ event you can customize the default action associated with the link. The following code snippet
          demonstrates how to add a question dialog when opening external links:
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=AnnotationClicked}}
	
	        void radPdfViewer1_AnnotationClicked(object sender, Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.EventArgs.AnnotationEventArgs e)
	        {
	            if (((Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link)e.Annotation).Action != null)
	            {
	                if (RadMessageBox.Show("The link you have clicked links to an external resource. Are you sure want to open it?", "Question", MessageBoxButtons.YesNo) != 
	                    System.Windows.Forms.DialogResult.Yes)
	                {
	                    e.Handled = true;
	                }
	            }
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=AnnotationClicked}}
	
	    Private Sub radPdfViewer1_AnnotationClicked(sender As Object, e As Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.EventArgs.AnnotationEventArgs) Handles radPdfViewer1.AnnotationClicked
	        If DirectCast(e.Annotation, Telerik.Windows.Pdf.Documents.Fixed.Model.Annotations.Link).Action IsNot Nothing Then
	            If RadMessageBox.Show("The link you have clicked links to an external resource. Are you sure want to open it?", "Question", MessageBoxButtons.YesNo) <> System.Windows.Forms.DialogResult.Yes Then
	                e.Handled = True
	            End If
	        End If
	    End Sub
	
	{{endregion}}



## Thumbnails

You can control whether the thumbnail element is visible by setting the __EnableThumbnail__ property. You can read about thumbnails [here]({%slug pdfviewer-thumbnails%}). 
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=EnableThumbnails}}
	            this.radPdfViewer1.EnableThumbnails = true;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=EnableThumbnails}}
	        Me.radPdfViewer1.EnableThumbnails = True
	{{endregion}}


