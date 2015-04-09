---
title: Section
page_title: Section
description: Section
slug: richtextbox-features-document-elements-section
tags: section
published: True
position: 2
---

# Section



The __Section__ class allows you to separate the content into sections.
      	__Sections__ are chunks of the document that can be displayed on one or several pages.
      	Currently only one section in the document is supported and all declared sections are merged into one when the
      	document is measured.

A __Section__ can contain only __Paragraph__and __Table__ elements. You are also able to customize the section layout by setting its properties.

This topic will explain you how to:

* [Add Paragraphs to a Section](#add-paragraphs-to-a-section)

* [Customize the Section](#customize-the-section)

## Add Paragraphs to a Section

In order to add paragraphs you have to use the __Paragraphs__ collection of the __Section__.

#### __C#__

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxSection.cs region=AddSection}}
	            Section section = new Section();
	            Paragraph paragraph = new Paragraph();
	            section.Blocks.Add(paragraph);
	            this.radRichTextBox1.Document.Sections.Add(section);
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxSection.vb region=AddSection}}
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        section.Blocks.Add(paragraph)
	        Me.RadRichTextBox1.Document.Sections.Add(section)
	{{endregion}}



## Customize the Section

The __Section__exposes several properties that allow you to customize the layout of the elements placed underneath it. Here is a list of these properties:

* __PageMargin__- represents the margin towards the edges of the page when in __Paged__ mode.
