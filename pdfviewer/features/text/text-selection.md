---
title: Text Selection
page_title: Text Selection | UI for WinForms Documentation
description: Text Selection
slug: winforms/pdfviewer/text/text-selection
tags: text,selection
published: True
position: 1
previous_url: pdfviewer-text-text-selection
---

# Text Selection

__RadPdfViewer__ supports selection both through the UI and programmatically.

## Selection through the UI

In order to be able to select text from the UI, __RadPdfViewer__ must be in *TextSelection* mode. The mode of the viewer is specified by the __ViewerMode__ property, which could be set as follows:

#### ViewerMode

{{source=..\SamplesCS\PdfViewer\PdfTextManipulation.cs region=ViewerMode}} 
{{source=..\SamplesVB\PdfViewer\PdfTextManipulation.vb region=ViewerMode}} 

````C#
this.radPdfViewer1.ViewerMode = Telerik.WinControls.UI.FixedDocumentViewerMode.TextSelection;

````
````VB.NET
Me.RadPdfViewer1.ViewerMode = Telerik.WinControls.UI.FixedDocumentViewerMode.TextSelection

````

{{endregion}}

## Programmatic Selection

When it comes to programmatic selection, it can occur even if the __ViewerMode__ property of __RadPdfViewer__ is not *TextSelection*.

All methods, properties and events relevant to the discussed functionality are contained in the __TextSelection__ class.

* Properties:

  * __StartPosition__: the __TextPosition__ at which the selection starts.
                  
  
  * __EndPosition__: The __TextPosition__ denoting the end of the selection respectively.
                  
  
  * __IsEmpty__:  A boolean property showing if there is selection in the current document.

* Methods:The methods for manipulating the selection include:

  * public void SetSelectionStart(TextPosition startPosition)
  
  * public void SetSelectionEnd(TextPosition endPosition)
  
  * public void SetSelection(TextPosition startPosition, TextPosition endPosition)
  
  * public void SelectAll()
  
  * public void Clear()
  
  * public string GetSelectedText()
  
  * public void GetSelectedTextAsync(Action<string> callback)Their names show clearly the action they execute.Here is an example showing how the functionality of __TextPositions__ can be combined with that of __TextSelection__ in order to select the word that the caret is currently positioned in:
   
#### Text selection

{{source=..\SamplesCS\PdfViewer\PdfTextManipulation.cs region=TextSelection}} 
{{source=..\SamplesVB\PdfViewer\PdfTextManipulation.vb region=TextSelection}} 

````C#
            
Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition start = new Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(this.radPdfViewer1.Document.CaretPosition);
start.MoveToCurrentWordStart();
Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition end = new Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(this.radPdfViewer1.Document.CaretPosition);
end.MoveToCurrentWordEnd();
this.radPdfViewer1.Document.Selection.SetSelection(start, end);
RadMessageBox.Show(this.radPdfViewer1.Document.Selection.GetSelectedText());

````
````VB.NET
Dim start As New Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(Me.RadPdfViewer1.Document.CaretPosition)
start.MoveToCurrentWordStart()
Dim [end] As New Telerik.Windows.Pdf.Documents.Fixed.Text.TextPosition(Me.RadPdfViewer1.Document.CaretPosition)
[end].MoveToCurrentWordEnd()
Me.RadPdfViewer1.Document.Selection.SetSelection(start, [end])
RadMessageBox.Show(Me.RadPdfViewer1.Document.Selection.GetSelectedText())

````

{{endregion}}

There are various methods in the API of RadPdfViewerElement which you can use to manipulate the text selection.

The __SelectAll__, __DeselectAll__, __Select__ methods allow you to set the selection programmatically:

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=Select}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=Select}} 

````C#
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

````
````VB.NET
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

````

{{endregion}}

You can use the __GetSelectedText__, __GetSelectedTextAsync__ methods to get the currently selected text. The __GetSelectedTextAsync__ method does this operation asynchronously and calls the specified callback function when ready. The __Copy__ method copies the current selection to the clipboard. It executes the operation in the background, so the text is not copied to the clipboard until the waiting indicator is visible.The following sample demonstrates using these methods:

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=GetSelectedText}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=GetSelectedText}} 

````C#
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

````
````VB.NET
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

````

{{endregion}}

The __Find__, __FindPrevious__ are used to perform text search forwards or backwards respectively. These methods return the result in a special __SearchResult__ structure which provides information about the result:

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=Search}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=Search}} 

````C#
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

````
````VB.NET
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

````

{{endregion}}

>note There are no genuine words in PDF, so the viewer uses a greedy text recognition method. That is why it is not guaranteed that it would find the exact start and end position of a word.
>

* Events: 

  * __SelectionChanging__: Occurs when you start to select part of the text.
  
  * __SelectionChanged__: Occurs when you have finished changing the current selection.