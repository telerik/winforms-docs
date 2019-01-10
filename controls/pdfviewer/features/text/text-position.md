---
title: Text Position
page_title: Text Position | RadPdfViewer
description: Text Position
slug: winforms/pdfviewer/text/text-position
tags: text,position
published: True
position: 0
previous_url: pdfviewer-text-text-position
---

# Text Position

__TextPosition__ is a position in the text of a __RadFixedDocument__. They enable keeping track of a "current" position in the document (i.e. a caret) and lay the foundations of document selection.

## Creation

One can create a __TextPostion__ for a particular document, page and index using one of the constructors:

* __TextPosition(RadFixedDocument document)__

* __TextPosition(RadFixedPage page)__

* __TextPosition(RadFixedPage page, int index)__

* __TextPosition(TextPosition position)__

The constructors that accept a __RadFixedPage__ as parameter create a __TextPosition__ for the particular page. The offset you specify will be the offset in the current page in terms of number of characters. If you pass only the __RadFixedDocument__ instance, a __TextPosition__ for the first page will be created. In case you want to make a copy of a __TextPosition__, you can opt for the constructor listed last.

## Members

The members that the __TextPosition__ class exposes are:

* __Properties__

  * __Index__: The integer offset of the text position into the page.
  
  * __Page__: The __RadFixedPage__ that the position belongs to.

* __Methods__: Provide the means for navigation in the document and have self-explanatory names and arguments:

  * __MoveToNextPosition()__
  
  * __MoveToPreviousPosition()__
  
  * __MoveToPosition(TextPosition position)__
  
  * __MoveToNextWord()__
  
  * __MoveToPreviousWord()__
  
  * __MoveToCurrentWordStart()__
  
  * __MoveToCurrentWordEnd()__
  
  * __MoveToLineStart()__
  
  * __MoveToLineEnd()__
  
  * __MoveLineUp()__
  
  * __MoveLineDown()__
  
  * __MoveToStartOfDocument()__
  
  * __MoveToEndOfDocument()__

* __Events__:

  * __PositionChanging__- occurs just before the position is moved;
  
  * __PositionChanged__ - occurs after the position has moved.

The caret position of __RadFixedDocument__ is also a __TextPosition__ object and all methods and properties listed above could be used with it as well. Here is an example:

#### CaretPosition

{{source=..\SamplesCS\PdfViewer\PdfTextManipulation.cs region=CaretPosition}} 
{{source=..\SamplesVB\PdfViewer\PdfTextManipulation.vb region=CaretPosition}} 

````C#
            
this.radPdfViewer1.PdfViewerElement.Document.CaretPosition.MoveToEndOfDocument();

````
````VB.NET
Me.RadPdfViewer1.PdfViewerElement.Document.CaretPosition.MoveToEndOfDocument()

````

{{endregion}}

This will not only move the caret to the end of the document, but will also scroll the document to bring it into view, as the view port follows the caret.


# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})