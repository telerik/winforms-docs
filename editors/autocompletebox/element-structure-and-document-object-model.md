---
title: Element Structure and Document Object Model
page_title: Element Structure and Document Object Model | UI for WinForms Documentation
description: This article shows the element structure of RadAutoCompleteBox
slug: winforms/editors/autocompletebox/element-structure-and-document-object-model
tags: element,structure,and,document,object,model
published: True
position: 1
previous_url: editors-autocompletebox-element-structure-and-document-object-model
---

# Element Structure and Document Object Model

The document object model of __RadAutoCompleteBox__ is represented by the __LineInfo__ class and the __ITextBlock__ interface. The __LineInfo__ class contains logical information about the start and end block of the line and its size. The __ITextBlock__ interface exposes layout information of single word. Notice that the elements which implement __ITextBlock__ interface should be inheritors of RadElement.
        

## RadTextBoxControlElement

The visual element structure of the RadTextBoxControlElement is presented on the following diagram:

>caption Figure 1: The elements used in RadAutoCompleteBox

![editors-autocompletebox-element-structure-and-dom 001](images/editors-autocompletebox-element-structure-and-dom001.png)

* __TextBoxViewElement__ represents a viewport that is responsible for the layout and arrangement of all text blocks. It executes layout algorithms for single, multi-line and word wrap layout. It inherits from __ITextBlock__.
		  	

* __TokenizedTextBlockElement__ – represented a tokenized set of words determined by the RadAutoCompleteBox’s delimiter.
		  

* __TextBlockElement__ represents a single word, which is rendered on the viewport.

Depending on how the content of the editor is changed, one or more instances of __ITextBlock__ can be merged into a single instance. Notice that TextBlockElement cannot be merged with TokenizedTextBlockElement.
		

# See Also

* [Caret Positioning and Selection]({%slug winforms/editors/autocompletebox/caret-positioning-and-selection%})
* [Creating Custom Blocks]({%slug winforms/editors/autocompletebox/creating-custom-blocks%})
* [Properties and Events]({%slug winforms/editors/autocompletebox/formatting-blocks%})
* [Text Editing]({%slug winforms/editors/autocompletebox/text-editing%})
* [Auto-Complete]({%slug winforms/editors/autocompletebox/auto-complete%})