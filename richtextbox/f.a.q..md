---
title: F.A.Q.
page_title: F.A.Q. | UI for WinForms Documentation
description: F.A.Q.
slug: winforms/richtextbox-(obsolete)/f.a.q.
tags: f.a.q.
published: True
position: 1
previous_url: richtextbox-faq
---

# F.A.Q.



## How to Get and Set the Text of RadRichTextBox

RadRichTextBox does not have a Text property because different formats for import and export of documents are supported – RTF, HTML, XAML, docX, plain text and PDF (export only). In order to set the contents of the document, it should be clear what format the data is in. For easier extensibility and separation of concerns, format providers that deal with the import and export of the documents are used. Here is a list of the currently available format providers and the assemblies they are included in:

* TxtFormatProvider (plain text) – Telerik.WinControls.RichTextBox.FormatProviders.Txt; 

* DocxFormatProvider - Telerik.WinControls.RichTextBox.FileFormats.OpenXml.Docx; 

* HtmlFormatProvider - Telerik.WinControls.RichTextBox.FileFormats.Html; 

* XamlFormatProvider - Telerik.WinControls.RichTextBox.FileFormats.Xaml;

* RtfFormatProvider – Telerik.WinControls.RichTextBox.FileFormats.Rtf;

* PdfFormatProvider - Telerik.WinControls.RichTextBox.FileFormats.Pdf.

You can read more about the use of format providers [here]({%slug winforms/richtextbox-(obsolete)/features/import/export/import/export%}). Overall, what you need to do to get the content of the document in a specific format is to create an instance of the corresponding provider and export the document.

An example is illustrated below:

#### Export XAML file

{{source=..\SamplesCS\RichTextBox\RichTextBoxFAQ.cs region=GetXAML}} 
{{source=..\SamplesVB\RichTextBox\RichTextBoxFAQ.vb region=GetXAML}} 

````C#
public string GetXAML(RadDocument document)
{
    XamlFormatProvider provider = new XamlFormatProvider();
    return provider.Export(document);
}

````
````VB.NET
Public Function GetXAML(ByVal document As RadDocument) As String
    Dim provider As New XamlFormatProvider()
    Return provider.Export(document)
End Function

````

{{endregion}}

To get the text stripped of all formatting, you can use __TxtFormatProvider__.

Setting the content of RadRichTextBox can be done in the same manner, if you have the content in one of these formats. For example, importing an HTML string in the document of a RadRichTextBox can be done as follows: 

#### Load HTML file

{{source=..\SamplesCS\RichTextBox\RichTextBoxFAQ.cs region=ImportHtml}} 
{{source=..\SamplesVB\RichTextBox\RichTextBoxFAQ.vb region=ImportHtml}} 

````C#
public RadDocument ImportHtml(string content)
{
    HtmlFormatProvider provider = new HtmlFormatProvider();
    return provider.Import(content);
}

````
````VB.NET
Public Function ImportHtml(ByVal content As String) As RadDocument
    Dim provider As New HtmlFormatProvider()
    Return provider.Import(content)
End Function

````

{{endregion}}

If you wish to preserve the initial content of the document and insert text at different positions in the document, you can use the __Insert__ methods of RadDocument and RadRichTextBox. The __Insert__ method of RadRichTextBox uses the current span style of the document, i.e. the text is included in the document just as it would have been if you typed it at that position. With the method of RadDocument, you need to explicitly create a __StyleDefinition__ and fill it up with the property values of the text that you are inserting – __FontSize__, __FontFamily__, __colors__, etc.

Here are some examples:

>note The Insert method will work after the document object model is created. Please note that the DOM will be created only after RadRichTextBox is being measured. Simply said, The insert command will not work in the form constructor.
>

1. Inserting text in RadRichTextBox at caret position:

#### Insert text in RadRichTextBox

{{source=..\SamplesCS\RichTextBox\RichTextBoxFAQ.cs region=InsertTextInRadRichTextBox}} 
{{source=..\SamplesVB\RichTextBox\RichTextBoxFAQ.vb region=InsertTextInRadRichTextBox}} 

````C#
this.radRichTextBox1.Insert(textToInsert);

````
````VB.NET
Me.RadRichTextBox1.Insert(textToInsert)

````

{{endregion}}

You can manipulate the caret position before invoking the insert method in order to change the position where you wish the text to appear. You can find more information on document positions and their usage here. 

1. Inserting text in a custom style using RadDocument‘s method:

#### Insert text in RadDocument

{{source=..\SamplesCS\RichTextBox\RichTextBoxFAQ.cs region=InsertTextInDocument}} 
{{source=..\SamplesVB\RichTextBox\RichTextBoxFAQ.vb region=InsertTextInDocument}} 

````C#
private void InsertTextInDocument(string textToInsert)
{
    StyleDefinition style = new StyleDefinition();
    style.SetPropertyValue(Span.FontFamilyProperty, "Comic Sans MS");
    style.SetPropertyValue(Span.FontSizeProperty, Unit.PointToDip(16));
    style.SetPropertyValue(Span.ForeColorProperty, Color.Blue);
    this.radRichTextBox1.Document.Insert(textToInsert, style);
}

````
````VB.NET
Private Sub InsertTextInDocument(ByVal textToInsert As String)
    Dim style As New StyleDefinition()
    style.SetPropertyValue(Span.FontFamilyProperty, "Comic Sans MS")
    style.SetPropertyValue(Span.FontSizeProperty, Unit.PointToDip(16))
    style.SetPropertyValue(Span.ForeColorProperty, Color.Blue)
    Me.RadRichTextBox1.Document.Insert(textToInsert, style)
End Sub

````

{{endregion}}

In case you wish to insert the text in the current editing style of the rich text box, you can do that in the following manner: 

#### Insert text in RadDocument

{{source=..\SamplesCS\RichTextBox\RichTextBoxFAQ.cs region=InsertTextInDocumentInCurrentSpanStyle}} 
{{source=..\SamplesVB\RichTextBox\RichTextBoxFAQ.vb region=InsertTextInDocumentInCurrentSpanStyle}} 

````C#
private void InsertTextInDocumentInCurrentSpanStyle(string textToInsert)
{
    StyleDefinition style = new StyleDefinition();
    style.CopyPropertiesFrom(this.radRichTextBox1.CurrentEditingStyle);
    this.radRichTextBox1.Document.Insert(textToInsert, style);
}

````
````VB.NET
Private Sub InsertTextInDocumentInCurrentSpanStyle(ByVal textToInsert As String)
    Dim style As New StyleDefinition()
    style.CopyPropertiesFrom(Me.radRichTextBox1.CurrentEditingStyle)
    Me.radRichTextBox1.Document.Insert(textToInsert, style)
End Sub

````

{{endregion}} 

>note Using methods from RadDocument's API to apply changes to the document clears the history stack and the undo function will not be able to restore the document before this change.
>

## Setting the Margins of the Document

With paged layout mode, you can set the margin of the document like this:

#### Change page margin

{{source=..\SamplesCS\RichTextBox\RichTextBoxFAQ.cs region=SectionDefaultPageMargin}} 
{{source=..\SamplesVB\RichTextBox\RichTextBoxFAQ.vb region=SectionDefaultPageMargin}} 

````C#
radRichTextBox1.Document.LayoutMode = DocumentLayoutMode.Paged;
radRichTextBox1.Document.SectionDefaultPageMargin = new System.Windows.Forms.Padding(100);

````
````VB.NET
RadRichTextBox1.Document.LayoutMode = DocumentLayoutMode.Paged
RadRichTextBox1.Document.SectionDefaultPageMargin = New System.Windows.Forms.Padding(100)

````

{{endregion}}