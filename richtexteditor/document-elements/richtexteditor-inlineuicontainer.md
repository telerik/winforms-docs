---
title: InlinieUIContainer
page_title: InlinieUIContainer
description: InlinieUIContainer
slug: richtexteditor-document-elements-inlineuicontainer
tags: inlinieuicontainer
published: True
position: 6
---

# InlinieUIContainer



__RadRichTextEditor__ provides you with the functionality of enclosing custom UI elements in its document.
        That is achieved with the help of a special type of inline document element called __InlineUIContainer__, which can wrap any object of
        type System.Windows.__UIElement__, e.g. a button, an image.
      

This topic will explain you how to:

* [Add UI Element to an InlineUIContainer](#add-ui-element-to-an-inlineuicontainer)

The __InlineUIContainer__ is an inline element, so it should be placed in a __Block__ that can contain inline
        elements (e.g. the __Paragraph__).
      

## Add UI Element to an InlineUIContainer

You can add any element that derives from the RadElement class inside the __RadElementUIContainer__. In code, set the __UIElement__
          property of the container to an instance of __RadElementUIContainer__. Here is a simple example with a __Button__.
        

>In order to utilize the __InlineUIContainer__, you have to set its __Height__ and __Width__ explicitly
            (or use the constructor that takes a __Size__ as a parameter). Otherwise, they will not be shown in the document.
          

#### __C#__

{{source=..\SamplesCS\RichTextEditor\DocumentElements\UIContainerCode.cs region=add}}
	            
	            RadButtonElement button = new RadButtonElement();
	            button.Text = "My Button";
	            
	            Section section = new Section();
	            Paragraph paragraph = new Paragraph();
	            InlineUIContainer container = new InlineUIContainer();
	            RadElementUIContainer radContainer = new RadElementUIContainer(button);
	            container.UiElement = radContainer;
	            container.Height = 25;
	            container.Width = 70;
	            paragraph.Inlines.Add(container);
	            section.Blocks.Add(paragraph);
	            this.radRichTextEditor1.Document.Sections.Add(section);
	            
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\RichTextEditor\DocumentElements\UIContainerCode.vb region=add}}
	
	        Dim button As New RadButtonElement()
	        button.Text = "My Button"
	
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        Dim container As New InlineUIContainer()
	        Dim radContainer As New RadElementUIContainer(button)
	        container.UiElement = radContainer
	        container.Height = 25
	        container.Width = 70
	        paragraph.Inlines.Add(container)
	        section.Blocks.Add(paragraph)
	        Me.radRichTextEditor1.Document.Sections.Add(section)
	
	{{endregion}}


