---
title: History
page_title: History
description: History
slug: richtexteditor-features-history
tags: history
published: True
position: 3
---

# History



The __RadDocument__ class can track the history of any actions taken against its content. In this way it allows an undo and redo 
        functionality to be easily implemented. The history is implemented via the __DocumentHistory__ class and the 
        __RadDocument__ exposes the __History__ property of this type. The __RadRichTextEditor__ 
        automatically adds and removes items from the history, when its API methods get called, but you are allowed to manually work with the history as well.
      

This topic will explain you how to:

* [Enable/Disable History](#enable/disable-history)

* [Clear History](#clear-history)

* [Undo/Redo Actions](#undo/redo-actions)

* [Change History Depth](#change-history-depth)

* [Preserv History Using RadDocumentEditor](#preserve-history-using-raddocumenteditor)

## Enable/Disable History

You can enable or disable the history for the __RadDocument__ via the __Enabled__ property of the 
          __DocumentHistory__.
        

#### __[C#] __

{{region enabled}}
	            
	            this.radRichTextEditor1.Document.History.IsEnabled = false;
	            
	{{endregion}}



#### __[VB.NET] __

{{region enabled}}
	
	        Me.radRichTextEditor1.Document.History.IsEnabled = False
	
	        '#End Region
	
	        '#Region "clear"
	
	        Me.radRichTextEditor1.Document.History.Clear()
	
	        '#End Region
	
	        '#Region "depth"
	
	        Me.radRichTextEditor1.Document.History.Depth = 500
	
	        '#End Region
	    End Sub
	
	#Region "undo"
	
	    Private Sub UndoAction()
	        Me.radRichTextEditor1.Undo()
	    End Sub
	
	    Private Sub RedoAction()
	        Me.radRichTextEditor1.Redo()
	    End Sub
	
	#End Region
	End Class



## Clear History

To clear the history you just have to call the __Clear()__ method of the __DocumentHistory__ class.
        

#### __[C#] __

{{region clear}}
	            
	            this.radRichTextEditor1.Document.History.Clear();
	        
	{{endregion}}



#### __[VB.NET] __

{{region clear}}
	
	        Me.radRichTextEditor1.Document.History.Clear()
	
	        '#End Region
	
	        '#Region "depth"
	
	        Me.radRichTextEditor1.Document.History.Depth = 500
	
	        '#End Region
	    End Sub
	
	#Region "undo"
	
	    Private Sub UndoAction()
	        Me.radRichTextEditor1.Undo()
	    End Sub
	
	    Private Sub RedoAction()
	        Me.radRichTextEditor1.Redo()
	    End Sub
	
	#End Region
	End Class



## Undo/Redo Actions

To undo and redo some actions, you can call the __Undo()__ and __Redo()__ methods of the
          __RadRichTextEditor__.
        

#### __[C#] __

{{region undo}}
	        
	        private void UndoAction()
	        {
	            this.radRichTextEditor1.Undo();
	        }
	
	        private void RedoAction()
	        {
	            this.radRichTextEditor1.Redo();
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{region undo}}
	
	    Private Sub UndoAction()
	        Me.radRichTextEditor1.Undo()
	    End Sub
	
	    Private Sub RedoAction()
	        Me.radRichTextEditor1.Redo()
	    End Sub
	
	#End Region
	End Class



## Change History Depth

To change the history capacity you have to set the desired value of the __Depth__ property of the __DocumentHistory__. 
          The default one is __1000__.
        

#### __[C#] __

{{region depth}}
	        
	            this.radRichTextEditor1.Document.History.Depth = 500;
	        
	{{endregion}}



#### __[VB.NET] __

{{region depth}}
	
	        Me.radRichTextEditor1.Document.History.Depth = 500
	
	        '#End Region
	    End Sub
	
	#Region "undo"
	
	    Private Sub UndoAction()
	        Me.radRichTextEditor1.Undo()
	    End Sub
	
	    Private Sub RedoAction()
	        Me.radRichTextEditor1.Redo()
	    End Sub
	
	#End Region
	End Class



## Preserve History Using RadDocumentEditor

RadDocument has API of its own, but using it has a set of limitations. One of those limitations is that the methods of RadDocument
          are not registered in the undo/redo stack. Thus, once such a method is used, the history stack is cleared and users will no longer
          be able to undo and redo their previous changes. You can find detailed information on the topic
          [here]({%slug richtexteditor-features-raddocumenteditor%}).
        

# See Also

 * [Positioning]({%slug richtexteditor-features-positioning%})

 * [Selection]({%slug richtexteditor-features-selection%})
