---
title: History
page_title: History | UI for WinForms Documentation
description: History
slug: winforms/richtexteditor-/features/history
tags: history
published: True
position: 9
previous_url: richtexteditor-features-history
---

# History



The __RadDocument__ class can track the history of any actions taken against its content. In this way it allows an undo and redo  functionality to be easily implemented. The history is implemented via the __DocumentHistory__ class and the __RadDocument__ exposes the __History__ property of this type. The __RadRichTextEditor__  automatically adds and removes items from the history, when its API methods get called, but you are allowed to manually work with the history as well.
      

This topic will explain you how to:

* [Enable/Disable History](#enable/disable-history)

* [Clear History](#clear-history)

* [Undo/Redo Actions](#undo/redo-actions)

* [Change History Depth](#change-history-depth)

* [Preserv History Using RadDocumentEditor](#preserve-history-using-raddocumenteditor)

## Enable/Disable History

You can enable or disable the history for the __RadDocument__ via the __Enabled__ property of the  __DocumentHistory__.

{{source=..\SamplesCS\RichTextEditor\Features\HistoryCode.cs region=enabled}} 
{{source=..\SamplesVB\RichTextEditor\Features\HistoryCode.vb region=enabled}} 

````C#
            
this.radRichTextEditor1.Document.History.IsEnabled = false;

````
````VB.NET
Me.radRichTextEditor1.Document.History.IsEnabled = False

````

{{endregion}} 


## Clear History

To clear the history you just have to call the __Clear()__ method of the __DocumentHistory__ class.
      
{{source=..\SamplesCS\RichTextEditor\Features\HistoryCode.cs region=clear}} 
{{source=..\SamplesVB\RichTextEditor\Features\HistoryCode.vb region=clear}} 

````C#
            
this.radRichTextEditor1.Document.History.Clear();

````
````VB.NET
Me.radRichTextEditor1.Document.History.Clear()

````

{{endregion}} 




## Undo/Redo Actions

To undo and redo some actions, you can call the __Undo()__ and __Redo()__ methods of the __RadRichTextEditor__.

{{source=..\SamplesCS\RichTextEditor\Features\HistoryCode.cs region=undo}} 
{{source=..\SamplesVB\RichTextEditor\Features\HistoryCode.vb region=undo}} 

````C#
        
private void UndoAction()
{
    this.radRichTextEditor1.Undo();
}
private void RedoAction()
{
    this.radRichTextEditor1.Redo();
}

````
````VB.NET
Private Sub UndoAction()
    Me.radRichTextEditor1.Undo()
End Sub
Private Sub RedoAction()
    Me.radRichTextEditor1.Redo()
End Sub

````

{{endregion}} 




## Change History Depth

To change the history capacity you have to set the desired value of the __Depth__ property of the __DocumentHistory__. The default one is __1000__.

{{source=..\SamplesCS\RichTextEditor\Features\HistoryCode.cs region=depth}} 
{{source=..\SamplesVB\RichTextEditor\Features\HistoryCode.vb region=depth}} 

````C#
        
this.radRichTextEditor1.Document.History.Depth = 500;

````
````VB.NET
Me.radRichTextEditor1.Document.History.Depth = 500

````

{{endregion}} 




## Preserve History Using RadDocumentEditor

RadDocument has API of its own, but using it has a set of limitations. One of those limitations is that the methods of RadDocument are not registered in the undo/redo stack. Thus, once such a method is used, the history stack is cleared and users will no longer be able to undo and redo their previous changes. You can find detailed information on the topic [here]({%slug winforms/richtexteditor-/features/raddocumenteditor%}).
        

# See Also

 * [Positioning]({%slug winforms/richtexteditor-/features/positioning%})

 * [Selection]({%slug winforms/richtexteditor-/features/selection%})
