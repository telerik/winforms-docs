---
title: Element structure and document object model
page_title: Element structure and document object model | UI for WinForms Documentation
description: Element structure and document object model
slug: winforms/editors/textboxcontrol/element-structure-and-document-object-model
tags: element,structure,and,document,object,model
published: True
position: 3
previous_url: editors-textboxcontrol-element-structure-and-document-object-model
---

# Element structure and document object model

The document object model of RadTextBoxControl is represented by __LineInfo__ class and __ITextBlock__ interface. The __LineInfo__ class contains logical information about the start and end block of the line and its size. The __ITextBlock__ interface exposes layout information of a single word. Notice that the elements which implement __ITextBlock__ interface should be inheritors of `RadElement`.
       	

The visual element structure of the `RadTextBoxControlElement` is presented on the following diagram:

![editors-textboxcontrol-element-structure 001](images/editors-textboxcontrol-element-structure001.png)

* __TextBoxViewElement__ represents a viewport that is responsible for the layout and arrangement of all text blocks. It executes layout algorithms for single, multi-line and word wrap layout. It inherits from ITextBlock.
		  	

* __TextBlockElement__ represents a single word, which is rendered on the viewport.
		  	

Depending on how content of the editor is changed, one or more instances of __ITextBlock__ can be merged into a single instance.
		
