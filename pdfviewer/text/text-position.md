---
title: Text Position
page_title: Text Position | UI for WinForms Documentation
description: Text Position
slug: winforms/pdfviewer/text/text-position
tags: text,position
published: True
position: 0
---

# Text Position

__TextPosition__ is a position in the text of a __RadFixedDocument__. They enable keeping track of a "current" position in the document (i.e. a caret) and lay the foundations of document selection.

## Creation

One can create a __TextPostion__ for a particular document, page and index using one of the constructors:

* public TextPosition(RadFixedDocument document)

* public TextPosition(RadFixedPage page)

* public TextPosition(RadFixedPage page, int index)

* public TextPosition(TextPosition position)

The constructors that accept a __RadFixedPage__ as parameter create a __TextPosition__ for the particular page. The offset you specify will be the offset in the current page in terms of number of characters. If you pass only the __RadFixedDocument__ instance, a __TextPosition__ for the first page will be created. In case you want to make a copy of a __TextPosition__, you can opt for the constructor listed last.

## Members

The members that the __TextPosition__ class exposes are:

* Properties

  * __Index__: the integer offset of the text position into the page.
  
  * __Page__: the __RadFixedPage__ that the position belongs to.

* Methods: provide the means for navigation in the document and have self-explanatory names and arguments:

  * public bool MoveToNextPosition()
  
  * public bool MoveToPreviousPosition()
  
  * public bool MoveToPosition(TextPosition position)
  
  * public bool MoveToNextWord()
  
  * public bool MoveToPreviousWord()
  
  * public bool MoveToCurrentWordStart()
  
  * public bool MoveToCurrentWordEnd()
  
  * public bool MoveToLineStart()
  
  * public bool MoveToLineEnd()
  
  * public bool MoveLineUp()
  
  * public bool MoveLineDown()
  
  * public bool MoveToStartOfDocument()
  
  * public bool MoveToEndOfDocument()

* Events:

  * __PositionChanging__- occurs just before the position is moved;
  
  * __PositionChanged__ - occurs after the position has moved.

The caret position of __RadFixedDocument__ is also a __TextPosition__ and all methods and properties listed above could be used with it as well. Here is an example:

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