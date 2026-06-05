---
title: Text Selection
page_title: Text Selection - WinForms PdfViewer Control
description: WinForms PdfViewer supports selection both through the UI and programmatically.
slug: winforms/pdfviewer/text/text-selection
tags: text,selection
published: True
position: 1
previous_url: pdfviewer-text-text-selection
---

# Text Selection

__RadPdfViewer__ supports selection both through the UI and programmatically.

## Selection through the UI

In order to be able to select text from the UI, __RadPdfViewer__ must be in *TextSelection* mode. The mode of the viewer is specified by the __ViewerMode__ property, which could be set as follows:

#### ViewerMode

<snippet id='pdfviewer-pdftextmanipulation-viewermode-cs' />
<snippet id='pdfviewer-pdftextmanipulation-viewermode-vb' />



## Programmatic Selection

When it comes to programmatic selection, it can occur even if the __ViewerMode__ property of __RadPdfViewer__ is not *TextSelection*.

All methods, properties and events relevant to the discussed functionality are contained in the __TextSelection__ class.

* __Properties__:

  * __StartPosition__: The __TextPosition__ at which the selection starts.
                  
  
  * __EndPosition__: The __TextPosition__ denoting the end of the selection respectively.
                  
  
  * __IsEmpty__:  A boolean property showing if there is selection in the current document.

* __Methods__:The methods for manipulating the selection include:

  * __SetSelectionStart(TextPosition startPosition)__
  
  * __SetSelectionEnd(TextPosition endPosition)__
  
  * __SetSelection(TextPosition startPosition, TextPosition endPosition)__
  
  * __SelectAll()__
  
  * __Clear()__
  
  * __GetSelectedText()__
  
    * __GetSelectedTextAsync(Action&lt;string&gt; callback)__
 
Their names show clearly the action they execute.Here is an example showing how the functionality of __TextPositions__ can be combined with that of __TextSelection__ in order to select the word that the caret is currently positioned in:
   
#### Text selection

<snippet id='pdfviewer-pdftextmanipulation-textselection-cs' />
<snippet id='pdfviewer-pdftextmanipulation-textselection-vb' />



There are various methods in the API of RadPdfViewerElement which you can use to manipulate the text selection.

The __SelectAll__, __DeselectAll__, __Select__ methods allow you to set the selection programmatically:

#### Select/Deselect

<snippet id='pdfviewer-pdfpublicapi-select-cs' />
<snippet id='pdfviewer-pdfpublicapi-select-vb' />



You can use the __GetSelectedText__, __GetSelectedTextAsync__ methods to get the currently selected text. The __GetSelectedTextAsync__ method does this operation asynchronously and calls the specified callback function when ready. The __Copy__ method copies the current selection to the clipboard. It executes the operation in the background, so the text is not copied to the clipboard until the waiting indicator is visible.The following sample demonstrates using these methods:

#### Get Selection Async

<snippet id='pdfviewer-pdfpublicapi-getselectedtext-cs' />
<snippet id='pdfviewer-pdfpublicapi-getselectedtext-vb' />



The __Find__ and __FindPrevious__ methods are used to perform text search forwards or backwards respectively. These methods return the result in a special __SearchResult__ structure which provides information about the result:

#### Find Next

<snippet id='pdfviewer-pdfpublicapi-search-cs' />
<snippet id='pdfviewer-pdfpublicapi-search-vb' />



>note There are no genuine words in PDF, so the viewer uses a greedy text recognition method. That is why it is not guaranteed that it would find the exact start and end position of a word.
>

* __Events__: 

  * __SelectionChanging__: Occurs when you start to select part of the text.
  
  * __SelectionChanged__: Occurs when you have finished changing the current selection.

# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})