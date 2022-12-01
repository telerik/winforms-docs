---
title: Undo and Redo
page_title: Undo and Redo - RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/features/undo-and-redo
tags: undo,and,redo
published: True
position: 3
previous_url: diagram-features-undo-and-redo
---

# Undo and Redo

__Telerik Diagramming Framework__ exposes Undo/Redo functionality. The framework allows you to keep track of the changes made in a Diagramming structure and trigger an undo or redo action using commands, methods or keyboard shortcuts.

## Undo/Redo methods

__RadDiagram__ class exposes two methods that allow you to take advantage of the undo/redo functionality.

* __Undo()__: this method reverts the last operation in the __RadDiagram__.
            

* __Redo()__: this method reapplies the last operation that was undone in the __RadDiagram__.
            

{{source=..\SamplesCS\Diagram\DiagramUndoRedo.cs region=UndoRedo}} 
{{source=..\SamplesVB\Diagram\DiagramUndoRedo.vb region=UndoRedo}} 

````C#
        
private void radButtonUndo_Click(object sender, EventArgs e)
{
    this.radDiagram1.Undo();
}
        
private void radButtonRedo_Click(object sender, EventArgs e)
{
    this.radDiagram1.Redo();
}

````
````VB.NET
Private Sub RadButtonUndo_Click(sender As Object, e As EventArgs) Handles RadButtonUndo.Click
    Me.RadDiagram1.Undo()
End Sub
Private Sub RadButtonRedo_Click(sender As Object, e As EventArgs) Handles RadButtonRedo.Click
    Me.RadDiagram1.Redo()
End Sub

````

{{endregion}} 



>caption Figure.1 Undo/Redo

![WinForms RadDiagram Undo/Redo](images/diagram-features-undo-and-redo001.gif)

## Undo/Redo commands

Telerik Diagramming Framework exposes a set of commands that allow you to easily implement __RadDiagram__ interaction logic in MVVM solutions. In order to trigger the Undo/Redo functionality you can use the __DiagramCommands.Undo__ and __DiagramCommands.Redo__ commands. Please keep in mind that in order to use those commands for reverting back and forward __RadDiagram__ operations, you need to explicitly set the diagram as the target of the commands.

>note For a full list of the __DiagramCommands__ , please refer to the [Commands]({%slug winforms/diagram/features/commands%}) tutorial.
>
 

{{source=..\SamplesCS\Diagram\DiagramUndoRedo.cs region=CommandsUndoRedo}} 
{{source=..\SamplesVB\Diagram\DiagramUndoRedo.vb region=CommandsUndoRedo}} 

````C#
this.radDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.Undo);
this.radDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.Redo);

````
````VB.NET
Me.RadDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.Undo)
Me.RadDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.Redo)

````

{{endregion}} 




## UndoRedoService

You can further extend the undo/redo functionality of your Diagramming solution using the RadDiagram.__UndoRedoService__ property. It exposes the following properties:

* __RedoStack__: use it to get the __IEnumerable__ collection of redid actions.
            

* __RedoBufferSize__: use it to get or set the redo actions buffer size.
            

* __UndoStack__: use it to get the __IEnumerable__ collection of undid actions.
            

* __UndoBufferSize__: use it to get or set the undo actions buffer size.
            

The __UndoRedoService__ also exposes undo/redo methods:

* __CanRedo()__: this method determines if the __RadDiagram__ instance can redo operations.
            

* __Redo()__: this method reapplies the last operation that was undone in the __RadDiagram__.
            

* __CanUndo()__: this method determines if the __RadDiagram__ instance can undo operations.
            

* __Undo()__: this method reverts the last operation in the __RadDiagram__.
            

* __ExecuteCommand()__: this method allows you to execute a custom command. It takes as an argument a __Telerik.Windows.Diagrams.Core.ICommand__ command and it also allows you to pass a state parameter as its second argument.
            

## Keyboard support

You can also trigger an undo or redo action using a keyboard combination:

* __Ctrl+Z__: this key combination will trigger an Undo action.
            

* __Ctrl+Y__: this key combination will trigger a Redo action.
            
