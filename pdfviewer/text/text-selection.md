---
title: Text Selection
page_title: Text Selection | UI for WinForms Documentation
description: Text Selection
slug: winforms/pdfviewer/text/text-selection
tags: text,selection
published: True
position: 1
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

>note There are no genuine words in PDF, so the viewer uses a greedy text recognition method. That is why it is not guaranteed that it would find the exact start and end position of a word.
>

* Events: 

  * __SelectionChanging__: Occurs when you start to select part of the text.
  
  * __SelectionChanged__: Occurs when you have finished changing the current selection.