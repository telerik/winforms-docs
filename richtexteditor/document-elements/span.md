---
title: Span
page_title: Span | UI for WinForms Documentation
description: Span
slug: winforms/richtexteditor-/document-elements/span
tags: span
published: True
position: 3
previous_url: richtexteditor-document-elements-span
---

# Span


The __Span__ class represents an inline object that allows you to display formatted text. The __Spans__ can only be used in the context of a __Paragraph__ class. As the spans are inline elements they get placed one after another and the text inside them gets wrapped to the next line if the space is insufficient.

This topic will explain you how to:

* [Use Spans](#use-spans)

* [Add Text to a Span](#add-text-to-a-span)

* [Customize a Span](#customize-a-span)

## Use Spans

The __Spans__ can be used only in the context of the [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%}) element. The __Paragraph__ exposes a collection of Inlines, to which the spans can be added.

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SpanCode.cs region=span}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SpanCode.vb region=span}} 

````C#
            
Section section = new Section();
Paragraph paragraph = new Paragraph();
Span span = new Span("Span declared in code-behind");
paragraph.Inlines.Add(span);
section.Blocks.Add(paragraph);
this.radRichTextEditor1.Document.Sections.Add(section);

````
````VB.NET
Dim section As New Section()
Dim paragraph As New Paragraph()
Dim span As New Span("Span declared in code-behind")
paragraph.Inlines.Add(span)
section.Blocks.Add(paragraph)
Me.radRichTextEditor1.Document.Sections.Add(section)

````

{{endregion}} 


## Add Text to a Span

To specify the text in the __Span__ you can use its __Text__ property.

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SpanCode.cs region=span}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SpanCode.vb region=span}} 

````C#
            
Section section = new Section();
Paragraph paragraph = new Paragraph();
Span span = new Span("Span declared in code-behind");
paragraph.Inlines.Add(span);
section.Blocks.Add(paragraph);
this.radRichTextEditor1.Document.Sections.Add(section);

````
````VB.NET
Dim section As New Section()
Dim paragraph As New Paragraph()
Dim span As New Span("Span declared in code-behind")
paragraph.Inlines.Add(span)
section.Blocks.Add(paragraph)
Me.radRichTextEditor1.Document.Sections.Add(section)

````

{{endregion}} 


>caution The Text property of Span cannot be set to an empty string, as Spans that do not contain any text are considered invalid. If you add an empty Span in the document programmatically, an exception will be thrown.
>

## Customize a Span

The __Span__ exposes several properties that allow you to customize the layout of the elements placed underneath it. Here is a list of them:
        

* __BaselineAlignment__ - indicates whether the text is __Baseline__, __Subscript__ or __Superscript__.
            

* __FontFamily__ - represents the name of the text's font.
            

* __FontSize__ - represent the size of the text.
            

* __FontStyle__ - indicates whether the text should have its style set to italic or to normal.
            

* __FontWeight__ - represents the value for the text's weight.
            

* __ForeColor__ - represents the foreground color for the text.
            

* __HighlightColor__ - represents the background color for the text.
            

* __Strikethrough__ - indicates whether the text should be stroke through.
            

* __UnderlineDecoration__ - indicates whether the text should be underlined.
            

# See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%})

 * [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%})

 * [Inline Image]({%slug winforms/richtexteditor-/document-elements/inline-image%})

 * [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%})
