---
title: Changing Editors Properties
page_title: Changing Editors Properties | RadVirtualGrid
description: Access and change the editors properties
slug: winforms/virtualgrid/editing/editors-properties
tags: virtualgrid, edidtors, properties
published: True
position: 5
---

# Accessing the Editors and Changing their Properties.

Since the editors are created each time when the user stars edit operation, they can by accessed in the __CellEditorInitialized__ event. The following example shows how you can access some of the editors and change their properties.

{{source=..\SamplesCS\VirtualGrid\Editing\EditorsProperties.cs region=AccessProperties}} 
{{source=..\SamplesVB\Virtualgrid\Editing\EditorsProperties.vb region=AccessProperties}}
````C#
        
void radVirtualGrid1_CellEditorInitialized(object sender, VirtualGridCellEditorInitializedEventArgs e)
{
    var dateTimeEditor = e.ActiveEditor as VirtualGridDateTimeEditor;
    if (dateTimeEditor != null)
    {
        var editorElement = dateTimeEditor.EditorElement as RadDateTimeEditorElement;
        editorElement.Format = DateTimePickerFormat.Custom;
        editorElement.CustomFormat = "dd/MM/yyyy";
    }
    
    var dropDownListEditor = e.ActiveEditor as VirtualGridDropDownListEditor;
    if (dropDownListEditor != null)
    {
        RadDropDownListEditorElement element = dropDownListEditor.EditorElement as RadDropDownListEditorElement;
        element.DisplayMember = "Name";
        element.ValueMember = "Name";
        
        element.DataSource = GetTable();
    }
    
    var textBoxEditor = e.ActiveEditor as VirtualGridTextBoxEditor;
    if (textBoxEditor != null)
    {
        var editorElement = textBoxEditor.EditorElement as RadTextBoxEditorElement;
        editorElement.TextBoxItem.ForeColor = Color.Red;
    }
}

````
````VB.NET
Private Sub radVirtualGrid1_CellEditorInitialized(ByVal sender As Object, ByVal e As VirtualGridCellEditorInitializedEventArgs)
    Dim dateTimeEditor = TryCast(e.ActiveEditor, VirtualGridDateTimeEditor)
    If dateTimeEditor IsNot Nothing Then
        Dim editorElement = TryCast(dateTimeEditor.EditorElement, RadDateTimeEditorElement)
        editorElement.Format = DateTimePickerFormat.Custom
        editorElement.CustomFormat = "dd/MM/yyyy"
    End If
    Dim dropDownListEditor = TryCast(e.ActiveEditor, VirtualGridDropDownListEditor)
    If dropDownListEditor IsNot Nothing Then
        Dim element As RadDropDownListEditorElement = TryCast(dropDownListEditor.EditorElement, RadDropDownListEditorElement)
        element.DisplayMember = "Name"
        element.ValueMember = "Name"
        element.DataSource = GetTable()
    End If
    Dim textBoxEditor = TryCast(e.ActiveEditor, VirtualGridTextBoxEditor)
    If textBoxEditor IsNot Nothing Then
        Dim editorElement = TryCast(textBoxEditor.EditorElement, RadTextBoxEditorElement)
        editorElement.TextBoxItem.ForeColor = Color.Red
    End If
End Sub

```` 

{{endregion}}

