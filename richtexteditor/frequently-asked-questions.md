---
title: Frequently Asked Questions
page_title: Frequently Asked Questions | UI for WinForms Documentation
description: Frequently Asked Questions
slug: winforms/richtexteditor-/frequently-asked-questions
tags: frequently,asked,questions
published: True
position: 33
---

# Frequently Asked Questions



This topic aims to answer some of the frequently asked questions about the use of __RadRichTextEditor__ , namely:

[Setting Default Style Settings on the Document](#setting-default-style-settings-on-the-document)

[How to Get and Set the Text of RadRichTextEditor](#how-to-get-and-set-the-text-of-radrichtexteditor)

[Setting the Margins of the Document](#setting-the-margins-of-the-document)

[Inserting multiple consecutive tables](#inserting-multiple-consecutive-tables)

## Setting Default Style Settings on the Document

__RadRichTextEditor__ has a Boolean property called __DocumentInheritsDefaultStyleSettings__, which must be set to *true*, if you want to set some default font properties. Otherwise your settings for the following properties would be disregarded:
        
* FontFamily;

* FontSize;

* FontStyle (Normal/Italic);

* FontWeight (Normal/Bold).

You can set these properties in code behind:       

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=properties}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=properties}} 

````C#
        
        public void SetDefaultFontPropertiesToEditor(RadRichTextEditor editor)
        {
            editor.RichTextBoxElement.ChangeFontFamily(new Telerik.WinControls.RichTextEditor.UI.FontFamily("Comic Sans MS"));
            editor.RichTextBoxElement.ChangeFontSize(Unit.PointToDip(12));
            editor.RichTextBoxElement.ChangeFontStyle(Telerik.WinControls.RichTextEditor.UI.FontStyles.Italic);
            editor.RichTextBoxElement.ChangeFontWeight(Telerik.WinControls.RichTextEditor.UI.FontWeights.Bold);
            
            editor.DocumentInheritsDefaultStyleSettings = true;
        }
````
````VB.NET
    Public Sub SetDefaultFontPropertiesToEditor(ByVal editor As RadRichTextEditor)
        editor.RichTextBoxElement.ChangeFontFamily(New Telerik.WinControls.RichTextEditor.UI.FontFamily("Comic Sans MS"))
        editor.RichTextBoxElement.ChangeFontSize(Unit.PointToDip(12))
        editor.RichTextBoxElement.ChangeFontStyle(Telerik.WinControls.RichTextEditor.UI.FontStyles.Italic)
        editor.RichTextBoxElement.ChangeFontWeight(Telerik.WinControls.RichTextEditor.UI.FontWeights.Bold)

        editor.DocumentInheritsDefaultStyleSettings = True
    End Sub
    '
````

{{endregion}} 

>note These settings will not be applied on text which is imported by a rich text FormatProvider, as the settings defined in the input file/string will be applied.

## How to Get and Set the Text of RadRichTextEditor

__RadRichTextEditor__ does not have a Text property because different formats for import and export of documents are supported – RTF, HTML, XAML, docX, plain text and PDF (export only). In order to set the contents of the document, it should be clear what format the data is in. For easier extensibility and separation of concerns, format providers that deal with the import and export of the documents are used. Here is a list of the currently available format providers and the namespaces they are included in:

* TxtFormatProvider (plain text) – Telerik.WinForms.Documents.FormatProviders.Txt;

* DocxFormatProvider - Telerik.WinForms.Documents.FormatProviders.OpenXml.Docx and Telerik.Windows.Zip;

* HtmlFormatProvider - Telerik.WinForms.Documents.FormatProviders.Html;

* XamlFormatProvider - Telerik.WinForms.Documents.FormatProviders.Xaml;

* RtfFormatProvider – Telerik.WinForms.Documents.FormatProviders.Rtf;

* PdfFormatProvider - Telerik.WinForms.Documents.FormatProviders.Pdf; and Telerik.Windows.Zip.

You can read more about the use of format providers [here]({%slug winforms/richtexteditor/import%}). Overall, what you need to do to get the content of the document in a specific format is to create an instance of the corresponding provider and export the document. An example is illustrated below:

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=xaml}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=xaml}} 

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
    '
````

{{endregion}} 


To get the text stripped of all formatting, you can use __TxtFormatProvider__. Setting the content of __RadRichTextEditor__ can  be done in the same manner, if you have the content in one of these formats. For example, importing an HTML string to __RadDocument__ can be done as follows:

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=html}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=html}} 

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
    '
````

{{endregion}} 




If you wish to preserve the initial content of the document and insert text at different positions in the document, you can use the __Insert~__ methods of __RadRichTextEditor__ or [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}). The Insert method of RadRichTextEditor uses the current span style of the document, i.e. the text is included in the document just as it would have been if you typed it at that position.

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=text}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=text}} 

````C#
            
            this.radRichTextEditor1.Insert(textToInsert);
````
````VB.NET
        Me.radRichTextEditor1.Insert(textToInsert)
        '
````

{{endregion}} 

You can manipulate the caret position before invoking the insert method in order to change the position where you wish the text to appear. You can find more information  on document positions and their usage [here]({%slug winforms/richtexteditor-/features/positioning%}).
        

## Setting the Margins of the Document

If you are using a document in flow layout mode, the document respects the value you set to the Padding property that RadRichTextEditor inherits from Control.

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=padding}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=padding}} 

````C#
            
            this.radRichTextEditor1.Padding = new Telerik.WinControls.RichTextEditor.UI.Thickness(0, 20, 100, 60);
````
````VB.NET
        Me.radRichTextEditor1.Padding = New Telerik.WinControls.RichTextEditor.UI.Thickness(0, 20, 100, 60)

        '
````

{{endregion}} 

With paged layout mode, you can set the margin of the document like this

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=margin}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=margin}} 

````C#
            
            this.radRichTextEditor1.LayoutMode = DocumentLayoutMode.Paged;
            this.radRichTextEditor1.Document.SectionDefaultPageMargin = new Telerik.WinForms.Documents.Layout.Padding(0, 20, 100, 60);
````
````VB.NET
        Me.radRichTextEditor1.LayoutMode = DocumentLayoutMode.Paged
        Me.radRichTextEditor1.Document.SectionDefaultPageMargin = New Telerik.WinForms.Documents.Layout.Padding(0, 20, 100, 60)
        '
````

{{endregion}} 

If you are using data providers to bind the content of the RichTextBox, a new document will be created for every change in the string property which is the binding source. In that case, setting these properties should be done on DocumentChanged.
        

>caution The value of the __SectionDefaultPageMarginProperty__ is respected when the __PageMargin__ property of a Section does not specify a value. When the document is measured,the value of the __SectionDefaultPageMarginProperty__ will be applied to the Section and further changes to the property will not affect the section.
>

In order to change the margin of an already measured Section, you can use the following method:

{{source=..\SamplesCS\RichTextEditor\FAQ.cs region=margin2}} 
{{source=..\SamplesVB\RichTextEditor\FAQ.vb region=margin2}} 

````C#

            radRichTextEditor1.Document.Sections.First.PageMargin = new Telerik.WinForms.Documents.Layout.Padding(0, 20, 100, 60);
````
````VB.NET
        radRichTextEditor1.Document.Sections.First.PageMargin = New Telerik.WinForms.Documents.Layout.Padding(0, 20, 100, 60)
        '
````

{{endregion}} 


## Inserting multiple consecutive tables

Inserting multiple [Table]({%slug winforms/richtexteditor-/document-elements/table%}) elements in a RadDocument one after another results in them being separated by some space. This may also happen when importing a document from one of the supported formats.The additional space is caused by an empty paragraph appended between the tables and is expected as RadDocument's structure does not allow adjacent tables.
        

When [building a document from code](a39d503e-19ad-420b-811f-3beffebe7401#Creating_a_Document_at_run_time), you should also follow the same approach and add paragraphs between tables in order to prevent possible issues from arising.
        

>warning Removing paragraphs separating tables manually is highly inadvisable and may cause unexpected crashes.
>

