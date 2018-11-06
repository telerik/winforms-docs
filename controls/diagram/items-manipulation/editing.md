---
title: Editing
page_title: Editing | RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/items-manipulation/editing
tags: editing
published: True
position: 6
previous_url: diagram-items-manipulation-editing
---

# Editing

__RadDiagram__ gives you the ability to edit the content of its items. You can double-click items in order to edit them or use [RadDiagramCommand]({%slug winforms/diagram/features/commands%}).

## Enable/Disable Editing

By default, the __RadDiagramItems__ are enabled for editing. In order to disable this functionality, you can use the __IsEditable__ property:

>caption Fig1. IsEditable

![diagram-items-manipulation-editing 001](images/diagram-items-manipulation-editing001.png) 

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=IsEditable}} 
{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=IsEditable}} 

````C#
this.radDiagram1.IsEditable = true;

````
````VB.NET
Me.RadDiagram1.IsEditable = True

````

{{endregion}} 
 

## Start Editing By Using Keyboard

Once the edit behavior is enabled, you can start the editing process by selecting the item and pressing the F2 key.
        

## Controlling Editing in Code Behind

In order to start/end editing a __RadDiagramItem__, you can set __IsInEditMode__ property to *true*/*false*.
        

__RadDiagramItem__ also provides four editing events:

* __PreviewBeginEdit__: fires when a __RadDiagramItem__ is about to be edited. It is cancelable.
            

* __BeginEdit__: fires when a __RadDiagramItem__ has just entered in edit mode.
In the code snippet below it is demonstrated how to access the editor element:

#### Access editor element 

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=GetEditor}} 
{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=GetEditor}} 

````C#
        
private void shape_BeginEdit(object sender, EventArgs e)
{
    RadDiagramShape shape = sender as RadDiagramShape;
    RadTextBoxControlElement editorElement = shape.FindDescendant<RadTextBoxControlElement>();
}

````
````VB.NET
Private Sub shape_BeginEdit(sender As Object, e As EventArgs)
    Dim shape As RadDiagramShape = TryCast(sender, RadDiagramShape)
    Dim editorElement As RadTextBoxControlElement = shape.FindDescendant(Of RadTextBoxControlElement)()
End Sub

````

{{endregion}} 
            

* __PreviewEndEdit__: fires when a __RadDiagramItem__ is about to leave the edit mode. It is cancelable.
            

* __EndEdit__: fires when a __RadDiagramItem__ has just left the edit mode.
            

## Edit using Commands

__RadDiagram__ provides three predefined commands for editing the selected item - __BeginEdit__, __CommitEdit__ and __CancelEdit__.

>caption Fig2. Editing by commands

![diagram-items-manipulation-editing 002](images/diagram-items-manipulation-editing002.gif) 

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=EditCommands}} 
{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=EditCommands}} 

````C#
        
private void radButtonEdit_Click(object sender, EventArgs e)
{
    this.radDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.BeginEdit);
}
        
private void radButtonConfirm_Click(object sender, EventArgs e)
{
    this.radDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.CommitEdit);
}
private void radButtonCancel_Click(object sender, EventArgs e)
{
    this.radDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.CancelEdit);
}

````
````VB.NET
Private Sub RadButtonEdit_Click(sender As Object, e As EventArgs) Handles RadButtonEdit.Click
    Me.RadDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.BeginEdit)
End Sub
Private Sub RadButtonConfirm_Click(sender As Object, e As EventArgs) Handles RadButtonConfirm.Click
    Me.RadDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.CommitEdit)
End Sub
Private Sub RadButtonCancel_Click(sender As Object, e As EventArgs) Handles RadButtonCancel.Click
    Me.RadDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.CancelEdit)
End Sub

````

{{endregion}} 



