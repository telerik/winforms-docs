---
title: History
page_title: History - WinForms RichTextEditor Control
description: RadDocument used in WinForms RichTextEditor can track the history of any actions taken against its content. In this way it allows an undo and redo functionality to be easily implemented.
slug: winforms/richtexteditor-/features/history
tags: history
published: True
position: 9
previous_url: richtexteditor-features-history
---

# History

The __RadDocument__ class can track the history of any actions taken against its content. In this way it allows an undo and redo functionality to be easily implemented. The history is implemented via the __DocumentHistory__ class and the __RadDocument__ exposes the __History__ property of this type. The __RadRichTextEditor__  automatically adds and removes items from the history, when its API methods get called, but you are allowed to manually work with the history as well.      

This topic will explain you how to:

* [Enable-Disable History](#enabledisable-history)

* [Clear History](#clear-history)

* [Undo-Redo Actions](#undoredo-actions)

* [Change History Depth](#change-history-depth)

* [Preserv History Using RadDocumentEditor](#preserve-history-using-raddocumenteditor)

## Enable/Disable History

You can enable or disable the history for the __RadDocument__ via the __Enabled__ property of the  __DocumentHistory__.

<snippet id='richtexteditor-historycode-enabled-cs' />
<snippet id='richtexteditor-historycode-enabled-vb' />



## Clear History

To clear the history you just have to call the __Clear()__ method of the __DocumentHistory__ class.
      
<snippet id='richtexteditor-historycode-clear-cs' />
<snippet id='richtexteditor-historycode-clear-vb' />



## Undo/Redo Actions

To undo and redo some actions, you can call the __Undo()__ and __Redo()__ methods of the __RadRichTextEditor__.

<snippet id='richtexteditor-historycode-undo-cs' />
<snippet id='richtexteditor-historycode-undo-vb' />



## Change History Depth

To change the history capacity you have to set the desired value of the __Depth__ property of the __DocumentHistory__. The default one is __1000__.

<snippet id='richtexteditor-historycode-depth-cs' />
<snippet id='richtexteditor-historycode-depth-vb' />



## Preserve History Using RadDocumentEditor

**RadDocument** has API of its own, but using it has a set of limitations. One of those limitations is that the methods of **RadDocument** are not registered in the undo/redo stack. Thus, once such a method is used, the history stack is cleared and users will no longer be able to undo and redo their previous changes. You can find detailed information on the topic [here]({%slug winforms/richtexteditor-/features/raddocumenteditor%}).
        
# See Also

 * [Positioning]({%slug winforms/richtexteditor-/features/positioning%})

 * [Selection]({%slug winforms/richtexteditor-/features/selection%})
