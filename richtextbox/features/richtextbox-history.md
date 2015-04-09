---
title: History
page_title: History
description: History
slug: richtextbox-features-history
tags: history
published: True
position: 6
---

# History



## 

The RadRichTextBox supports not only selection via the UI, but also programmatic selection. This topic will explain you how to:

### Enable/Disable History

You can enable or disable the history for the __RadDocument__ via the
                 	__Enabled__ property of the __DocumentHistory__.
                 

#### __[C#] Enable history__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=Enable}}
	            this.radRichTextBox1.Document.History.Enabled = true;
	{{endregion}}



#### __[VB.NET] Enable history__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=Enable}}
	        Me.RadRichTextBox1.Document.History.Enabled = False
	{{endregion}}



### Clear History

To clear the history you just have to call the __Clear()__ method of the __DocumentHistory__ class.
                  

#### __[C#] Clear history__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=Clear}}
	            this.radRichTextBox1.Document.History.Clear();
	{{endregion}}



#### __[VB.NET] Clear history__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=Clear}}
	        Me.RadRichTextBox1.Document.History.Clear()
	{{endregion}}



### Undo/Redo

To undo and redo some actions, you can call the __Undo()__ and __Redo()__ methods of the RadRichTextBox.
                  

#### __[C#] Undo/Redo history__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=UndoRedo}}
	            this.radRichTextBox1.Undo();
	
	            this.radRichTextBox1.Redo();
	{{endregion}}



#### __[VB.NET] Undo/Redo history__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=UndoRedo}}
	        Me.RadRichTextBox1.Undo()
	
	        Me.RadRichTextBox1.Redo()
	{{endregion}}



### Change History Depth

To change the history capacity you have to set the desired value of the __Depth__ property of the 
                  	__DocumentHistory__. The default one is __1000__.
                  

#### __[C#] History depth__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=Depth}}
	            this.radRichTextBox1.Document.History.Depth = 500;
	{{endregion}}



#### __[VB.NET] History depth__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=Depth}}
	        Me.RadRichTextBox1.Document.History.Depth = 500
	{{endregion}}


