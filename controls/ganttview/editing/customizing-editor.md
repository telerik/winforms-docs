---
title: Customizing editor
page_title: Customizing editor - WinForms GanttView Control
description: Learn how the appearance and behavior of ganttview editors can be changed programmatically.
slug: winforms/ganttview-/editing/customizing-editor
tags: customizing,editor
published: True
position: 2
previous_url: ganttview-editing-customizing-editor
---

# Customizing editor

The appearance and behavior of property grid editors can be changed programmatically. This can be done in the __EditorInitialized__ event. __EditorInitialized__ is fired when the editor is created and initialized with a predefined set of properties.
        
The following sample demonstrates how to change the default font of a __BaseTextBoxEditor__ in RadGanttView:
         
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

## Mask Editor

The following sample demonstrates how to change the default font of a __GanttViewDateTimeEditor__ in RadGanttView and apply __MaskDateTimeProvider__ with a custom format for time:

{{source=..\SamplesCS\GanttView\Editing\CustomizingEditor.cs region=CustomizingEditor_Mask}} 
{{source=..\SamplesVB\GanttView\Editing\CustomizingEditor.vb region=CustomizingEditor_Mask}} 

````C#

private void GanttViewElement_MaskEditorInitialized(object sender, GanttViewItemEditorInitializedEventArgs e)
{
    GanttViewDateTimeEditor dtEditor = e.Editor as GanttViewDateTimeEditor;
    if (dtEditor != null)
    {
        dtEditor.CustomFormat = "hh/mm/ss";
        MaskDateTimeProvider dtprovider = ((BaseDateTimeEditorElement)dtEditor.EditorElement).TextBoxElement.Provider as MaskDateTimeProvider;
        dtprovider.AutoSelectNextPart = true;
    }
}

````
````VB.NET

Private Sub GanttViewElement_MaskEditorInitialized(ByVal sender As Object, ByVal e As GanttViewItemEditorInitializedEventArgs)
    Dim dtEditor As GanttViewDateTimeEditor = TryCast(e.Editor, GanttViewDateTimeEditor)

    If dtEditor IsNot Nothing Then
        dtEditor.CustomFormat = "hh/mm/ss"
        Dim dtprovider As MaskDateTimeProvider = TryCast((CType(dtEditor.EditorElement, BaseDateTimeEditorElement)).TextBoxElement.Provider, MaskDateTimeProvider)
        dtprovider.AutoSelectNextPart = True
    End If
End Sub

````

{{endregion}} 

# See Also

* [Creating custom editor]({%slug winforms/ganttview-/editing/creating-custom-editor%})
* [Editing Graphical View]({%slug winforms/ganttview-/editing/editing-graphical-view%})
* [Editing Text View]({%slug winforms/ganttview-/editing/editing-text-view%})

