---
title: Customizing editor behavior
page_title: Customizing editor behavior | UI for WinForms Documentation
description: Customizing editor behavior
slug: winforms/propertygrid/editors/customizing-editor-behavior
tags: customizing,editor,behavior
published: True
position: 4
---

# Customizing editor behavior

The appearance and behavior of property grid editors can be changed programmatically. This can be done in the __EditorInitialized__ event. __EditorInitialized__ is fired when the editor is created and initialized with a predefined set of properties.

The following sample demonstrates how to change the default font of __PropertyGridTextBoxEditor__:

#### Customize editor

{{source=..\SamplesCS\PropertyGrid\Editors\PropertyGridCustomizingEditorBehavior.cs region=CustomizeEditor}} 
{{source=..\SamplesVB\PropertyGrid\Editors\PropertyGridCustomizingEditorBehavior.vb region=CustomizeEditor}} 

````C#
void radPropertyGrid1_EditorInitialized(object sender, Telerik.WinControls.UI.PropertyGridItemEditorInitializedEventArgs e)
{
    PropertyGridTextBoxEditor editor = e.Editor as PropertyGridTextBoxEditor;
    if (editor != null)
    {
        ((RadTextBoxElement)editor.EditorElement).Font = new Font(FontFamily.Families[12], 10, FontStyle.Bold);
    }
}

````
````VB.NET
Private Sub radPropertyGrid1_EditorInitialized(ByVal sender As Object, ByVal e As PropertyGridItemEditorInitializedEventArgs)
    Dim editor As PropertyGridTextBoxEditor = TryCast(e.Editor, PropertyGridTextBoxEditor)
    If Not editor Is Nothing Then
        CType(editor.EditorElement, RadTextBoxElement).Font = New Font(FontFamily.Families(12), 10, FontStyle.Bold)
    End If
End Sub

````

{{endregion}}

![propertygrid-editors-customize-editor](images/propertygrid-editors-customize-editor.png)
