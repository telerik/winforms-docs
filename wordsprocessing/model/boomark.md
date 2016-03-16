---
title: Boomark
page_title: Boomark | UI for WinForms Documentation
description: Boomark
slug: winforms/wordsprocessing/model/boomark
tags: boomark
published: True
position: 12
previous_url: wordsprocessing-model-bookmark
---

# Boomark

A __Bookmark__ refers to a location in the document and has a unique name, which identifies it. Every __Bookmark__ has a corresponding __BookmarkRangeStart__ and __BookmarkRangeEnd__, which are inline elements. These two elements specify the Bookmark's location as follows:
      

* __BookmarkRangeStart__: Specifies the start of a bookmark annotation.
          

* __BookmarkRangeEnd__: Specifies the end of a bookmark annotation.
          

## Inserting a Bookmark

__Example 1__ shows how to create a __Bookmark__ and add its BookmarkRangeStart and BookmarkRangeEnd elements in a [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%}):

#### Example 1: Add Bookmark to Paragraph


{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingBookmark.cs region=radwordsprocessing-model-bookmark_0}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingBookmark.vb region=radwordsprocessing-model-bookmark_0}} 

````C#
Bookmark bookmark = new Bookmark(document, "MyBookmark");
paragraph.Inlines.Add(bookmark.BookmarkRangeStart);
paragraph.Inlines.AddRun("text");
paragraph.Inlines.Add(bookmark.BookmarkRangeEnd);

````
````VB.NET
Dim bookmark As New Bookmark(document, "MyBookmark")
paragraph.Inlines.Add(bookmark.BookmarkRangeStart)
paragraph.Inlines.AddRun("text")
paragraph.Inlines.Add(bookmark.BookmarkRangeEnd)

````

{{endregion}} 

Note, that the paragraph should belong to the same document that is passed to the constructor of the __Bookmark__ object, otherwise an exception is thrown. The bookmark's location is specified around a run with text "text".

Inserting a __Bookmark__ in the document can also be done with through the [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%}) class like shown in __Example 2__:

#### Example 2: Insert Bookmark using RadFlowDocumentEditor

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingBookmark.cs region=radwordsprocessing-model-bookmark_1}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingBookmark.vb region=radwordsprocessing-model-bookmark_1}} 

````C#
RadFlowDocumentEditor editor = new RadFlowDocumentEditor(new RadFlowDocument());
Bookmark bookmark = editor.InsertBookmark("MyBookmark");

````
````VB.NET
Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
Dim bookmark As Bookmark = editor.InsertBookmark("MyBookmark")

````

{{endregion}} 

The __InsertBookmark()__ method from __Example 2__ creates a Bookmark with name "MyBookmark" and inserts one after another its BookmarkRangeStart and BookmarkRangeEnd elements.

## Removing a Bookmark 

You can remove an inserted __Bookmark__ by using __RadFlowDocumentEditor__'s __DeleteBookmark()__ method. You can pass to the method the name of the Bookmark to remove, or the Bookmark itself.
        

__Example 3__ demonstrates how you can delete the bookmark created in __Example 2__.

#### Example 3: Delete Bookmark using RadFlowDocumentEditor

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingBookmark.cs region=radwordsprocessing-model-bookmark_2}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingBookmark.vb region=radwordsprocessing-model-bookmark_2}} 

````C#
editor.DeleteBookmark("MyBookmark");

````
````VB.NET
editor.DeleteBookmark("MyBookmark")

````

{{endregion}} 

# See Also

 * [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%})

 * [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})
