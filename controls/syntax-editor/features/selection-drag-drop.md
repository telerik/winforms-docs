---
title: Selection Drag Drop
page_title: Selection Drag Drop - RadSyntaxEditor
description: RadSyntaxEditor allows dragging the selection and dropping it onto another position in the loaded document
slug: syntax-editor-selection-drag-drop
tags: selection, drag, drop
published: True
position: 10
---

# Selection Drag Drop

**RadSyntaxEditor** allows the end-users to drag the selection and drop it onto another position in the loaded document. The SyntaxEditorElement.**Selection** exposes several events that allow you to control the drag and drop operation:

* **PreviewDragStart** - Occurs when selection dragging is about to be started. The **PreviewDragStartEventArgs** offers the **CanStart** and **StartPosition** arguments. If the drag operation is not allowed, setting the **CanStart** argument to *false* indicates that the drag operation won't be started at all. The **StartPostion** returns the **CaretPosition** from which the drag operation will start. The start position is always within the current selection.   

* **PreviewDragOver** - Occurs upon moving the selection over the document. The **PreviewDragOverEventArgs** offers the following arguments:
	* **CanDrop** - Determines whether the selection can be dropped. This property is taken into consideration when changing the mouse cursor. If it is not allowed to drop the selection being dragged, set the **CanDrop** property to *false*.
	* **StartPostion** - The **CaretPosition** at which the drag operation has been start. The start position is always within the current selection.
	* **DropPosition** - The **CaretPosition** at which the selection is being dragged over.

* **PreviewDragDrop** - Occurs upon releasing the mouse and dropping the selection. The **PreviewDragDropEventArgs** offers the following arguments:
	* **Handled** - Determines whether the event is handled. If the property is set to *true*, the selection will not be moved to the dragged position.
	* **DropPosition** - The **CaretPosition** at which the selection will be dropped.
	* **StartPostion** - The  **CaretPosition** at which the drag operation has been started. The start position is always within the current selection.


#### Handling drag and drop events

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorSelectionDragDrop.cs region=SelectionDragDrop}}
{{source=..\SamplesVB\SyntaxEditor\SyntaxEditorSelectionDragDrop.vb region=SelectionDragDrop}}

````C#

        private void WireEvents()
        {
            this.radSyntaxEditor1.SyntaxEditorElement.Selection.PreviewDragStart += Selection_PreviewDragStart;
            this.radSyntaxEditor1.SyntaxEditorElement.Selection.PreviewDragOver += Selection_PreviewDragOver;
            this.radSyntaxEditor1.SyntaxEditorElement.Selection.PreviewDragDrop += Selection_PreviewDragDrop;
        }

        private void Selection_PreviewDragStart(object sender, Telerik.WinForms.Controls.SyntaxEditor.UI.PreviewDragStartEventArgs e)
        {
            //disable dragging the even lines

            e.CanStart &= (e.StartPostion.LineNumber + 1) % 2 != 0;
        }


        private void Selection_PreviewDragOver(object sender, Telerik.WinForms.Controls.SyntaxEditor.UI.PreviewDragOverEventArgs e)
        {
            //disable dropping over a text that contains "Telerik"

            CaretPosition start = new CaretPosition(e.DropPosition);
            CaretPosition end = new CaretPosition(start);
            start.MoveToPreviousWord();
            end.MoveToNextWord();
            string targetText = this.radSyntaxEditor1.SyntaxEditorElement.GetText(start, end);
            if (targetText.Contains("Telerik"))
            {
                e.CanDrop = false;
            }
            else
            {
                e.CanDrop = true;
            }
        }

        private void Selection_PreviewDragDrop(object sender, Telerik.WinForms.Controls.SyntaxEditor.UI.PreviewDragDropEventArgs e)
        {
            //handle the drop operation
            e.Handled = true;
        }


````
````VB.NET

    Private Sub WireEvents()
        AddHandler Me.radSyntaxEditor1.SyntaxEditorElement.Selection.PreviewDragStart, AddressOf Selection_PreviewDragStart
        AddHandler Me.radSyntaxEditor1.SyntaxEditorElement.Selection.PreviewDragOver, AddressOf Selection_PreviewDragOver
        AddHandler Me.radSyntaxEditor1.SyntaxEditorElement.Selection.PreviewDragDrop, AddressOf Selection_PreviewDragDrop
    End Sub

    Private Sub Selection_PreviewDragStart(ByVal sender As Object, ByVal e As Telerik.WinForms.Controls.SyntaxEditor.UI.PreviewDragStartEventArgs)
        e.CanStart = e.CanStart And (e.StartPostion.LineNumber + 1) Mod 2 <> 0
    End Sub

    Private Sub Selection_PreviewDragOver(ByVal sender As Object, ByVal e As Telerik.WinForms.Controls.SyntaxEditor.UI.PreviewDragOverEventArgs)
        Dim start As CaretPosition = New CaretPosition(e.DropPosition)
        Dim [end] As CaretPosition = New CaretPosition(start)
        start.MoveToPreviousWord()
        [end].MoveToNextWord()
        Dim targetText As String = Me.radSyntaxEditor1.SyntaxEditorElement.GetText(start, [end])

        If targetText.Contains("Telerik") Then
            e.CanDrop = False
        Else
            e.CanDrop = True
        End If
    End Sub

    Private Sub Selection_PreviewDragDrop(ByVal sender As Object, ByVal e As Telerik.WinForms.Controls.SyntaxEditor.UI.PreviewDragDropEventArgs)
        e.Handled = True
    End Sub


````

{{endregion}} 

>caption Disable dropping over "Telerik" 

![syntax-editor-selection-drag-drop](images/syntax-editor-selection-drag-drop.gif)


