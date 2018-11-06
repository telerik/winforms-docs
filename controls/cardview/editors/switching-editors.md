---
title: Switching Editors
page_title: Switching Editors | RadCardView
description: RadCardView is a control developed on top of Telerik Presentation Framework which provides a way for displaying and editing text data as well as performing layout modifications
slug: winforms/cardview/editors/switching-editors
tags: switching editors
published: True
position: 1
---

# Switching Editors

When edit operation is about to begin, the __EditorRequired__ event is fired. By using this event, you can replace the default text box editor with one of the four built-in editors that __RadCardView__ provides: __ListViewTextBoxEditor__, __ListViewDropDownListEditor__, __ListViewSpinEditor__, __ListViewDateTimeEditor__. You can also provide a custom instance as an editor. The default editor used by __RadCardView__ is __ListViewTextBoxEditor__.

The following example shows how you can change the editor type:

>caption Fig. 1: Changed Editors
![cardview-editors-overview 001](images/cardview-editors-switching-editors001.gif)

#### Changing Editor Type

{{source=..\SamplesCS\CardView\CardViewEditors.cs region=ChangingEditorType}} 
{{source=..\SamplesVB\CardView\CardViewEditors.vb region=ChangingEditorType}}
````C#
private void radCardView1_EditorRequired(object sender, Telerik.WinControls.UI.ListViewItemEditorRequiredEventArgs e)
{
    if (e.ListViewElement.CurrentColumn.FieldName == "TitleOfCourtesy")
    {
        ListViewDropDownListEditor editor = new ListViewDropDownListEditor();
        (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Ms.");
        (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Mr.");
        (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Mrs.");
        e.Editor = editor;
    }
    else if (e.ListViewElement.CurrentColumn.FieldName == "EmployeeID")
    {
        e.EditorType = typeof(ListViewSpinEditor);
    }
    else if (e.ListViewElement.CurrentColumn.FieldName == "BirthDate" || e.ListViewElement.CurrentColumn.FieldName == "HireDate")
    {
        e.EditorType = typeof(ListViewDateTimeEditor);
    }
    else
    {
        e.EditorType = typeof(ListViewTextBoxEditor);
    }
}

````
````VB.NET
Private Sub radCardView1_EditorRequired(sender As Object, e As Telerik.WinControls.UI.ListViewItemEditorRequiredEventArgs)
    If e.ListViewElement.CurrentColumn.FieldName = "TitleOfCourtesy" Then
        Dim editor As New ListViewDropDownListEditor()
        TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Ms.")
        TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Mr.")
        TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Mrs.")
        e.Editor = editor
    ElseIf e.ListViewElement.CurrentColumn.FieldName = "EmployeeID" Then
        e.EditorType = GetType(ListViewSpinEditor)
    ElseIf e.ListViewElement.CurrentColumn.FieldName = "BirthDate" OrElse e.ListViewElement.CurrentColumn.FieldName = "HireDate" Then
        e.EditorType = GetType(ListViewDateTimeEditor)
    Else
        e.EditorType = GetType(ListViewTextBoxEditor)
    End If
End Sub

````



{{endregion}}

# See Also

* [Editors Overview]({%slug winforms/cardview/editors/overview%})
* [Custom Items]({%slug winforms/cardview/custom-items%})
* [Formatting Items]({%slug winforms/cardviewview/customizing-appearance/formatting-items%})