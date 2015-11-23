---
title: Customizing editor
page_title: Customizing editor | UI for WinForms Documentation
description: Customizing editor
slug: winforms/ganttview-/editing/customizing-editor
tags: customizing,editor
published: True
position: 2
---

# Customizing editor



## 

The appearance and behavior of property grid editors can be changed programmatically. This can be done in the __EditorInitialized__ event. __EditorInitialized__ is fired when the editor is created and initialized with a predefined set of properties.
        

The following sample demonstrates how to change the default font of a BaseTextBoxEditor in RadGanttView:
         
{{source=..\SamplesCS\GanttView\Editing\CustomizingEditor.cs region=CustomizingEditor}} 
{{source=..\SamplesVB\GanttView\Editing\CustomizingEditor.vb region=CustomizingEditor}} 

````C#
private void GanttViewElement_EditorInitialized(object sender, GanttViewItemEditorInitializedEventArgs e)
{
    BaseTextBoxEditor editor = e.Editor as BaseTextBoxEditor;
    if (editor != null)
    {
        ((RadTextBoxElement)editor.EditorElement).Font = new Font(FontFamily.Families[12], 12, FontStyle.Bold);
    }
}

````
````VB.NET
Private Sub GanttViewElement_EditorInitialized(sender As Object, e As GanttViewItemEditorInitializedEventArgs)
    Dim editor As BaseTextBoxEditor = TryCast(e.Editor, BaseTextBoxEditor)
    If editor IsNot Nothing Then
        DirectCast(editor.EditorElement, RadTextBoxElement).Font = New Font(FontFamily.Families(12), 12, FontStyle.Bold)
    End If
End Sub

````

{{endregion}} 



