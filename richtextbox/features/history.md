---
title: History
page_title: History | UI for WinForms Documentation
description: History
slug: winforms/richtextbox-(obsolete)/features/history
tags: history
published: True
position: 6
---

# History

The RadRichTextBox supports not only selection via the UI, but also programmatic selection. This topic will explain you how to:

### Enable/Disable History

You can enable or disable the history for the __RadDocument__ via the __Enabled__ property of the __DocumentHistory__.

#### Enable history

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=Enable}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=Enable}} 

````C#
this.radRichTextBox1.Document.History.Enabled = true;

````
````VB.NET
Me.RadRichTextBox1.Document.History.Enabled = False

````

{{endregion}}

### Clear History

To clear the history you just have to call the __Clear()__ method of the __DocumentHistory__ class.

#### Clear history

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=Clear}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=Clear}} 

````C#
this.radRichTextBox1.Document.History.Clear();

````
````VB.NET
Me.RadRichTextBox1.Document.History.Clear()

````

{{endregion}}

### Undo/Redo

To undo and redo some actions, you can call the __Undo()__ and __Redo()__ methods of the RadRichTextBox.

#### Undo/Redo history

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=UndoRedo}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=UndoRedo}} 

````C#
this.radRichTextBox1.Undo();
this.radRichTextBox1.Redo();

````
````VB.NET
Me.RadRichTextBox1.Undo()
Me.RadRichTextBox1.Redo()

````

{{endregion}}

### Change History Depth

To change the history capacity you have to set the desired value of the __Depth__ property of the __DocumentHistory__. The default one is __1000__.

#### History depth

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxHistory.cs region=Depth}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxHistory.vb region=Depth}} 

````C#
this.radRichTextBox1.Document.History.Depth = 500;

````
````VB.NET
Me.RadRichTextBox1.Document.History.Depth = 500

````

{{endregion}}