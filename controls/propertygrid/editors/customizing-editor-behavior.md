---
title: Customizing Editor Behavior
page_title: Customizing editor behavior | RadPropertyGrid
description: The appearance and behavior of property grid editors can be changed programmatically.
slug: winforms/propertygrid/editors/customizing-editor-behavior
tags: customizing,editor,behavior
published: True
position: 4
previous_url: propertygrid-editors-customizing-editor-behavior
---

# Customizing Editor Behavior

The appearance and behavior of property grid editors can be changed programmatically. This can be done in the __EditorInitialized__ event. __EditorInitialized__ is fired when the editor is created and initialized with a predefined set of properties.

>caption Figure 1: Customize Editor

![propertygrid-editors-customize-editor](images/propertygrid-editors-customize-editor.png)

The following sample demonstrates how to change the default font of __PropertyGridTextBoxEditor__:

#### Customize editor

{{source=..\SamplesCS\PropertyGrid\Editors\PropertyGridCustomizingEditorBehavior.cs region=CustomizeEditor}} 
{{source=..\SamplesVB\PropertyGrid\Editors\PropertyGridCustomizingEditorBehavior.vb region=CustomizeEditor}} 

````C#
void radPropertyGrid_EditorInitialized(object sender, Telerik.WinControls.UI.PropertyGridItemEditorInitializedEventArgs e)
{
    PropertyGridSpinEditor editor = e.Editor as PropertyGridSpinEditor;
    if (editor != null)
    {
        BaseSpinEditorElement el = editor.EditorElement as BaseSpinEditorElement;
        el.EnableNullValueInput = true;
    }
}

````
````VB.NET
Private Sub radPropertyGrid_EditorInitialized(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.PropertyGridItemEditorInitializedEventArgs)
    Dim editor As PropertyGridSpinEditor = TryCast(e.Editor, PropertyGridSpinEditor)
    If editor IsNot Nothing Then
        Dim el As BaseSpinEditorElement = TryCast(editor.EditorElement, BaseSpinEditorElement)
        el.EnableNullValueInput = True
    End If
End Sub

````

{{endregion}}

# PropertyGridSpinEditor null values support.

The following snippet shows how you can enable the null values support in the spin editor:

{{source=..\SamplesCS\PropertyGrid\Editors\PropertyGridCustomizingEditorBehavior.cs region=NullValues}} 
{{source=..\SamplesVB\PropertyGrid\Editors\PropertyGridCustomizingEditorBehavior.vb region=NullValues}}
````C#
void radPropertyGrid_EditorInitialized(object sender, Telerik.WinControls.UI.PropertyGridItemEditorInitializedEventArgs e)
{
    PropertyGridSpinEditor editor = e.Editor as PropertyGridSpinEditor;
    if (editor != null)
    {
        BaseSpinEditorElement el = editor.EditorElement as BaseSpinEditorElement;
        el.EnableNullValueInput = true;
    }
}

````
````VB.NET
Private Sub radPropertyGrid_EditorInitialized(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.PropertyGridItemEditorInitializedEventArgs)
    Dim editor As PropertyGridSpinEditor = TryCast(e.Editor, PropertyGridSpinEditor)
    If editor IsNot Nothing Then
        Dim el As BaseSpinEditorElement = TryCast(editor.EditorElement, BaseSpinEditorElement)
        el.EnableNullValueInput = True
    End If
End Sub

```` 

{{endregion}}


# See Also

* [Custom Editors]({%slug winforms/propertygrid/editors/using-custom-editor%})
* [Validation]({%slug winforms/propertygrid/editors/validation%})
