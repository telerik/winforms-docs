---
title: Changing the Default Editors
page_title: Changing the Default Editors | RadVirtualGrid
description: This article shows how you can replace the default editors used in RadVirtualGrid with custom ones.
slug: winforms/virtualgrid/cells/changing-default-editor
tags: virtualgrid, custom, editor
published: True
position: 4
---

# Changing the Default Editors

By default the grid is using the underlying field data type to determine the editor type. If you want to change the default editor you should use the __EditorReqired__ event. For example the following snippet shows how you can change the default text editor to __VirtualGridDropDownListEditor__.

{{source=..\SamplesCS\VirtualGrid\Editing\EditorsProperties.cs region=ChangeEditor}} 
{{source=..\SamplesVB\VirtualGrid\Editing\EditorsProperties.vb region=ChangeEditor}}
````C#
        
private void RadVirtualGrid1_EditorRequired(object sender, VirtualGridEditorRequiredEventArgs e)
{
    if (e.ColumnIndex == 1)
    {
        VirtualGridDropDownListEditor dropDownListEditor = new VirtualGridDropDownListEditor();
        RadDropDownListEditorElement element = dropDownListEditor.EditorElement as RadDropDownListEditorElement;
        element.DataSource = new string[] { "Mr.", "Mrs.", "Ms.", "Dr." };
        e.Editor = dropDownListEditor;
    }
}

````
````VB.NET
Private Sub RadVirtualGrid1_EditorRequired(ByVal sender As Object, ByVal e As VirtualGridEditorRequiredEventArgs)
    If e.ColumnIndex = 1 Then
        Dim dropDownListEditor As New VirtualGridDropDownListEditor()
        Dim element As RadDropDownListEditorElement = TryCast(dropDownListEditor.EditorElement, RadDropDownListEditorElement)
        element.DataSource = New String() {"Mr.", "Mrs.", "Ms.", "Dr."}
        e.Editor = dropDownListEditor
    End If
End Sub
Private Sub DefineColumnDataType()
    '#Region "DefineColumnDataType"
    Me.radVirtualGrid1.MasterViewInfo.ColumnDataTypes(0) = GetType(Integer)

````

{{endregion}}



# See Also
* [API]({%slug winforms/virtualgrid/cells/api%})

* [Changing Editors Properties]({%slug winforms/virtualgrid/editing/editors-properties%})

* [Data Validation]({%slug winforms/virtualgrid/editing/data-validation%})

* [Overview]({%slug winforms/virtualgrid/editing/editors%})

* [Events]({%slug winforms/virtualgrid/editing/events%})

* [Using Custom Editors]({%slug winforms/virtualgrid/editing/using-custom-editors%})

