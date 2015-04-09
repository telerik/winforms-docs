---
title: Boomark
page_title: Boomark
description: Boomark
slug: wordsprocessing-model-bookmark
tags: boomark
published: True
position: 12
---

# Boomark



A __Bookmark__ refers to a location in the document and has a unique name, which identifies it. Every __Bookmark__ has a corresponding __BookmarkRangeStart__ and __BookmarkRangeEnd__, which are inline elements. These two elements specify the Bookmark's location as follows:
      

* __BookmarkRangeStart__: Specifies the start of a bookmark annotation.
          

* __BookmarkRangeEnd__: Specifies the end of a bookmark annotation.
          

## Inserting a Bookmark

__Example 1__ shows how to create a __Bookmark__ and add its BookmarkRangeStart and BookmarkRangeEnd elements in a [Paragraph]({%slug wordsprocessing-model-paragraph%}):
        

#### __[C#] Example 1: Add Bookmark to Paragraph__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingBookmark.cs region=radwordsprocessing-model-bookmark_0}}
	            Bookmark bookmark = new Bookmark(document, "MyBookmark");
	            paragraph.Inlines.Add(bookmark.BookmarkRangeStart);
	            paragraph.Inlines.AddRun("text");
	            paragraph.Inlines.Add(bookmark.BookmarkRangeEnd);
	{{endregion}}



#### __[VB.NET] Example 1: Add Bookmark to Paragraph__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingBookmark.vb region=radwordsprocessing-model-bookmark_0}}
	            Dim bookmark As New Bookmark(document, "MyBookmark")
	            paragraph.Inlines.Add(bookmark.BookmarkRangeStart)
	            paragraph.Inlines.AddRun("text")
	            paragraph.Inlines.Add(bookmark.BookmarkRangeEnd)
	            '#End Region
	        End Sub
	
	        Private Sub InsertDeleteBookmark()
	            '#Region "radwordsprocessing-model-bookmark_1"
	            Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
	            Dim bookmark As Bookmark = editor.InsertBookmark("MyBookmark")
	            '#End Region
	
	            '#Region "radwordsprocessing-model-bookmark_2"
	            editor.DeleteBookmark("MyBookmark")
	            '#End Region
	        End Sub
	    End Class



Note, that the paragraph should belong to the same document that is passed to the constructor of the __Bookmark__ object, otherwise an exception is thrown. The bookmark's location is specified around a run with text "text".
        

Inserting a __Bookmark__ in the document can also be done with through the [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%}) class like shown in __Example 2__:
        

#### __[C#] Example 2: Insert Bookmark using RadFlowDocumentEditor__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingBookmark.cs region=radwordsprocessing-model-bookmark_1}}
	            RadFlowDocumentEditor editor = new RadFlowDocumentEditor(new RadFlowDocument());
	            Bookmark bookmark = editor.InsertBookmark("MyBookmark");
	{{endregion}}



#### __[VB.NET] Example 2: Insert Bookmark using RadFlowDocumentEditor__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingBookmark.vb region=radwordsprocessing-model-bookmark_1}}
	            Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
	            Dim bookmark As Bookmark = editor.InsertBookmark("MyBookmark")
	            '#End Region
	
	            '#Region "radwordsprocessing-model-bookmark_2"
	            editor.DeleteBookmark("MyBookmark")
	            '#End Region
	        End Sub
	    End Class



The __InsertBookmark()__ method from __Example 2__ creates a Bookmark with name "MyBookmark" and inserts one after another its BookmarkRangeStart and BookmarkRangeEnd elements.
        

## Removing a Bookmark 

You can remove an inserted __Bookmark__ by using __RadFlowDocumentEditor__'s __DeleteBookmark()__ method. You can pass to the method the name of the Bookmark to remove, or the Bookmark itself.
        

__Example 3__ demonstrates how you can delete the bookmark created in __Example 2__.
        

#### __[C#] Example 3: Delete Bookmark using RadFlowDocumentEditor__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingBookmark.cs region=radwordsprocessing-model-bookmark_2}}
	            editor.DeleteBookmark("MyBookmark");
	{{endregion}}



#### __[VB.NET] Example 3: Delete Bookmark using RadFlowDocumentEditor__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingBookmark.vb region=radwordsprocessing-model-bookmark_2}}
	            editor.DeleteBookmark("MyBookmark")
	            '#End Region
	        End Sub
	    End Class



# See Also

 * [Paragraph]({%slug wordsprocessing-model-paragraph%})

 * [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%})
