---
title: Comment
page_title: Comment
description: Comment
slug: wordsprocessing-model-comment
tags: comment
published: True
position: 13
---

# Comment



A __Comment__ holds annotation markers which specify for which range of document elements it refers. Every __Comment__ has a corresponding __CommentRangeStart__ and __CommentRangeEnd__, which are inline elements. These two elements specify the comment's location as follows.
      

* __CommentRangeStart__: Specifies the start of a comment annotation.
          

* __CommentRangeEnd__: Specifies the end of a comment annotation.
          

## Inserting a Comment

__Example 1__ shows how to create a __Comment__ and add its CommentRangeStart and CommentRangeEnd elements in a paragraph.
        

#### __[C#] Example 1: Add Comment to Paragraph__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingComment.cs region=radwordsprocessing-model-comment_0}}
	            Comment comment = document.Comments.AddComment();
	            paragraph.Inlines.Add(comment.CommentRangeStart);
	            paragraph.Inlines.AddRun("text");
	            paragraph.Inlines.Add(comment.CommentRangeEnd);
	{{endregion}}



#### __[VB.NET] Example 1: Add Comment to Paragraph__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingComment.vb region=radwordsprocessing-model-comment_0}}
	            Dim comment As Comment = document.Comments.AddComment()
	            paragraph.Inlines.Add(comment.CommentRangeStart)
	            paragraph.Inlines.AddRun("text")
	            paragraph.Inlines.Add(comment.CommentRangeEnd)
	            '#End Region
	        End Sub
	
	        Private Sub InsertComment(editor As RadFlowDocumentEditor, comment As Comment)
	            '#Region "radwordsprocessing-model-comment_1"
	            editor.InsertComment(comment)
	            '#End Region
	
	        End Sub
	
	        Private Sub InsertComment2()
	            '#Region "radwordsprocessing-model-comment_2"
	            Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
	
	            Dim run As Run = editor.InsertText("text")
	            editor.InsertComment("My sample comment.", run, run)
	            '#End Region
	        End Sub
	
	        Private Sub AddBlockToComment(comment As Comment)
	            '#Region "radwordsprocessing-model-comment_3"
	            Dim paragraph As Paragraph = comment.Blocks.AddParagraph()
	            Dim table As Table = comment.Blocks.AddTable()
	            '#End Region
	        End Sub
	    End Class



The __AddComment()__ method of the __Comments__ collection of a document creates a new comment and return it. The location of the comment is around a run with text 'text'. Note, that the paragraph should belongs to the same document as the one passed to the constructor of the Comment or an exception is going to be thrown.
        

__Example 2__ showsh ow you can insert a previously created __Comment__ object in a document by using [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%}). The InsertComment() method will insert the comment's start and end elements.
        

#### __[C#] Example 2: Insert previously created Comment__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingComment.cs region=radwordsprocessing-model-comment_1}}
	            editor.InsertComment(comment);
	{{endregion}}



#### __[VB.NET] Example 2: Insert previously created Comment__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingComment.vb region=radwordsprocessing-model-comment_1}}
	            editor.InsertComment(comment)
	            '#End Region
	
	        End Sub
	
	        Private Sub InsertComment2()
	            '#Region "radwordsprocessing-model-comment_2"
	            Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
	
	            Dim run As Run = editor.InsertText("text")
	            editor.InsertComment("My sample comment.", run, run)
	            '#End Region
	        End Sub
	
	        Private Sub AddBlockToComment(comment As Comment)
	            '#Region "radwordsprocessing-model-comment_3"
	            Dim paragraph As Paragraph = comment.Blocks.AddParagraph()
	            Dim table As Table = comment.Blocks.AddTable()
	            '#End Region
	        End Sub
	    End Class



__Example 3__ demonstrates how you can use another overload of __RadFlowDocumentEditor__'s __InsertComment()__ method. In this case a string representing the text of the Comment and two inline elements are passed. The two inline elements specify the element prior which the CommentRangeStart should be added and the element after which the CommentRangeEnd should be added.
        

#### __[C#] Example 3: Insert Comment around Run__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingComment.cs region=radwordsprocessing-model-comment_2}}
	            RadFlowDocumentEditor editor = new RadFlowDocumentEditor(new RadFlowDocument());
	
	            Run run = editor.InsertText("text");
	            editor.InsertComment("My sample comment.", run, run);
	{{endregion}}



#### __[VB.NET] Example 3: Insert Comment around Run__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingComment.vb region=radwordsprocessing-model-comment_2}}
	            Dim editor As New RadFlowDocumentEditor(New RadFlowDocument())
	
	            Dim run As Run = editor.InsertText("text")
	            editor.InsertComment("My sample comment.", run, run)
	            '#End Region
	        End Sub
	
	        Private Sub AddBlockToComment(comment As Comment)
	            '#Region "radwordsprocessing-model-comment_3"
	            Dim paragraph As Paragraph = comment.Blocks.AddParagraph()
	            Dim table As Table = comment.Blocks.AddTable()
	            '#End Region
	        End Sub
	    End Class



## Modifying a Comment

The __Comment__ class exposes several properties which allow you to customize information about it:
        

* __Author__: Property of type string specifying the author of the comment.
            

* __Initials__:  Property of type string specifying the author' initials.
            

* __Date__: DateTime property showing the moment the comment was created.
            

## Operating with a Comment

Comment derives BlockContainerBase
          [BlockContainerBase](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_blockcontainerbase.html)
          , inheriting Blocks property of BlockCollection type. You can add [Paragraph]({%slug wordsprocessing-model-paragraph%})  and [Table]({%slug wordsprocessing-model-table%}) objects to that collection.
        

__Example 4__ shows how you can add a Table to a Comment.
        

#### __[C#] Example 4: Add Blocks to a Comment__

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingComment.cs region=radwordsprocessing-model-comment_3}}
	            Paragraph paragraph = comment.Blocks.AddParagraph();
	            Table table = comment.Blocks.AddTable();
	{{endregion}}



#### __[VB.NET] Example 4: Add Blocks to a Comment__

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingComment.vb region=radwordsprocessing-model-comment_3}}
	            Dim paragraph As Paragraph = comment.Blocks.AddParagraph()
	            Dim table As Table = comment.Blocks.AddTable()
	            '#End Region
	        End Sub
	    End Class



# See Also

 * [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%})

 * [Paragraph]({%slug wordsprocessing-model-paragraph%})

 * [Table]({%slug wordsprocessing-model-table%})
