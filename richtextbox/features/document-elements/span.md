---
title: Span
page_title: Span | UI for WinForms Documentation
description: Span
slug: winforms/richtextbox-(obsolete)/features/document-elements/span
tags: span
published: True
position: 4
previous_url: richtextbox-features-document-elements-span
---

# Span

The __Span__ class represents an inline object that allows you to display formatted text. The __Spans__ can only be used in the context of a __Paragraph__ class.  As the spans are inline elements they get placed one after another and the text inside them gets wrapped to the next line if the space is insufficient.

This topic demonstrates how to:

* [Use Spans](#use-spans)

* [Add Text to a Span](#add-text-to-a-span)

* [Customize a Span](#customize-a-span)

## Use Spans

The __Spans__can be used only in the context of the [Paragraph]({%slug winforms/richtextbox-(obsolete)/features/document-elements/paragraph%}) element. The __Paragraph__ exposes a collection of Inlines, to which the spans can be added.

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxSpan.cs region=UseSpans}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxSpan.vb region=UseSpans}}
````C#
Section section = new Section();
Paragraph paragraph = new Paragraph();
Span span = new Span("Span declared in code-behind");
paragraph.Inlines.Add(span);
section.Blocks.Add(paragraph);
this.radRichTextBox1.Document.Sections.Add(section);

````
````VB.NET
Dim section As New Section()
Dim paragraph As New Paragraph()
Dim span As New Span("Span declared in code-behind")
paragraph.Inlines.Add(span)
section.Blocks.Add(paragraph)
Me.RadRichTextBox1.Document.Sections.Add(section)

```` 



{{endregion}}


## Add Text to a Span

To specify the text in the __Span__ you can use its __Text__ property.

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxSpan.cs region=AddTextToSpan}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxSpan.vb region=AddTextToSpan}}
````C#
Span mySpan = new Span();
mySpan.Text = "Thank you for choosing Telerik RadRichTextBox!";

````
````VB.NET
Dim mySpan As New Span()
mySpan.Text = "Thank you for choosing Telerik RadRichTextBox!"

```` 



{{endregion}}

>caution The Text property of Span cannot be set to an empty string, as Spans that do not contain any text are considered invalid. If you add an empty Span in the document programmatically, an exception will be thrown.
>

## Customize a Span

The __Span__ exposes several properties that allow you to customize the layout of the elements placed underneath it. Here is a list of them:

* __BaselineAlignment__ - indicates whether the text is __Baseline__, __Subscript__ or __Superscript__.

* __FontFamily__ - represents the name of the text's font.

* __FontSize__ - represent the size of the text.

* __FontStyle__ - indicates whether the text should have its style set to bold, italic or to normal.

* __ForeColor__ - represents the foreground color for the text.

* __HighlightColor__ - represents the background color for the text.

* __Strikethrough__ - indicates whether the text should be stroke through.

* __UnderlineType__ - indicates whether the text should be underlined.