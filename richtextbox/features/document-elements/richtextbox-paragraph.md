---
title: Paragraph
page_title: Paragraph
description: Paragraph
slug: richtextbox-features-document-elements-paragraph
tags: paragraph
published: True
position: 3
---

# Paragraph



The paragraph class allows you to separate the content into paragraphs. It is responsible for displaying 
      	inline elements such as __Span__, __HyperlinkRangeStart__ and
      	__End__, __InlineImage__ etc. You are also able to configure the
      	appearance of the paragraph by modifying its parameters.
      

This topic will explain you how to:

* [Use Paragraphs](#use-paragraphs)

* [Add inline elements to a Paragraph](#add-inline-elements-to-a-paragraph)

* [Customize the Paragraph](#customize-the-paragraph)

## Use Paragraphs

The __Paragraph__ can be used only in the context of a
        	[Section]({%slug richtextbox-features-document-elements-section%}) 
        	or a TableCell element. The section exposes a collection of Blocks, to which the paragraphs
        	can be added.
        

#### __C#__

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxParagraph.cs region=UseParagraphs}}
	            Section section = new Section();
	            Paragraph paragraph = new Paragraph();
	            section.Blocks.Add(paragraph);
	            this.radRichTextBox1.Document.Sections.Add(section);
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxParagraph.vb region=UseParagraphs}}
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        section.Blocks.Add(paragraph)
	        Me.RadRichTextBox1.Document.Sections.Add(section)
	{{endregion}}



## Add inline elements to a Paragraph

To add inline elements such as Span, HyperlinkRangeStart and End, or InlineImage you have to use the Inlines 
        	collection of the Paragraph. 

#### __C#__

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxParagraph.cs region=AddInlineElementsToParagraph}}
	            Section sect = new Section();
	            Paragraph para = new Paragraph();
	            Span span = new Span("Span declared in code-behind");
	            para.Inlines.Add(span);
	            sect.Blocks.Add(para);
	            this.radRichTextBox1.Document.Sections.Add(sect);
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxParagraph.vb region=AddInlineElementsToParagraph}}
	        Dim sect As New Section()
	        Dim para As New Paragraph()
	        Dim span As New Span("Span declared in code-behind")
	        para.Inlines.Add(span)
	        sect.Blocks.Add(para)
	        Me.RadRichTextBox1.Document.Sections.Add(sect)
	{{endregion}}



## Customize the Paragraph

The __Paragraph__exposes several properties that allow you to customize the layout
        	of the elements placed underneath it. Here is a list of them:

* __FontSize__ - represents the font size of the text inside the 
          	__Paragraph__. If not explicitly set to its child elements, they inherit its value.
          

* __LineSpacing__ - specifies the value for the space between the lines.

* __LineSpacingType__ - specifies the type of spacing:

* __AtLeast -__ the space between the lines should equal or greater than the value of the __LineSpacing__ property.

* __Auto -__ the space between the lines is determined automatically.

* __Exact -__ the space between the lines should equal to the value of the __LineSpacing__ property__.__

* __LeftIndent -__ represents the size of the indent to the left size of the __Paragraph__. The indent gets applied together with the respective margins to the layout.

* __RightIndent__ - represents the size of the indent to the right size of the __Paragraph__. The indent gets applied together with the respective margins to the layout.

* __SpacingAfter__ - represents the size of the empty space after the __Paragraph__.

* __SpacingBefore__ - represents the size of the empty space before the __Paragraph__.

* __TextAlignment__ - represents the alignment of the text inside the __Paragraph__.
