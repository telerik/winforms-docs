---
title: Default Editors
page_title: Default Editors | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/editors/default-editors
tags: checkboxes,and,editors
published: True
position: 1 
---

 
# Default Editors

When an edit operation is about to begin, **RadListView** initializes a **ListViewTextBoxEditor**. The following table lists the built-in editors that **RadListView** provides:

|Editor|Description|
|----|----|
|__ListViewTextBoxEditor__| Used for editing text input.|
|__ListViewDropDownListEditor__|Used for editing values providing a predefined list of values.|
|__ListViewSpinEditor__|Used for editing of numeric data types.|
|__ListViewDateTimeEditor__|Used for editing of type DateTime.|

The following example shows how you can use the predefined editors:

#### Start editing

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=usePredefinedEditors}} 
{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=usePredefinedEditors}} 

````C#
        
void radListView1_EditorRequired(object sender, Telerik.WinControls.UI.ListViewItemEditorRequiredEventArgs e)
{
    if (e.ListViewElement.CurrentColumn.FieldName == "CustomerName")
    {
        e.EditorType = typeof(ListViewTextBoxEditor);
    }
    else if (e.ListViewElement.CurrentColumn.FieldName == "ProductName")
    {
        ListViewDropDownListEditor editor = new ListViewDropDownListEditor();
        (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Product1");
        (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Product2");
        (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Product3");
        
        e.Editor = editor;
    }
    else if (e.ListViewElement.CurrentColumn.FieldName == "Quantity")
    {
        e.EditorType = typeof(ListViewSpinEditor);
    }
    else if (e.ListViewElement.CurrentColumn.FieldName == "OrderDate")
    {
        e.EditorType = typeof(ListViewDateTimeEditor);
    }
}

````
````VB.NET
Private Sub radListView1_EditorRequired(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ListViewItemEditorRequiredEventArgs)
    If e.ListViewElement.CurrentColumn.FieldName = "CustomerName" Then
        e.EditorType = GetType(ListViewTextBoxEditor)
    ElseIf e.ListViewElement.CurrentColumn.FieldName = "ProductName" Then
        Dim editor As New ListViewDropDownListEditor()
        TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Product1")
        TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Product2")
        TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Product3")
        e.Editor = editor
    ElseIf e.ListViewElement.CurrentColumn.FieldName = "Quantity" Then
        e.EditorType = GetType(ListViewSpinEditor)
    ElseIf e.ListViewElement.CurrentColumn.FieldName = "OrderDate" Then
        e.EditorType = GetType(ListViewDateTimeEditor)
    End If
End Sub

````

{{endregion}} 

# See Also

* [Custom Editors]({%slug winforms/listview/editors/custom-editors%})	
* [Editors Overview]({%slug winforms/listview/editors/editors%})

