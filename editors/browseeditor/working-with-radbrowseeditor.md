---
title: Working with RadBrowseEditor
page_title: Working with RadBrowseEditor | UI for WinForms Documentation
description: Working with RadBrowseEditor
slug: winforms/editors/browseeditor/working-with-radbrowseeditor
tags: working,with,radbrowseeditor
published: True
position: 2
---

# Working with RadBrowseEditor
 
## Properties

__Value__: this property gets or sets the value of the editor.
        

__ReadOnly__: When this property is set to true, the control prevents direct text entry and allows the value to be changed only through the browse button. By default this property is true.
		  

__DialogType__: This property determines what type of dialog will be opened when the browse button is pressed. There are two options: OpenFileDialog and FolderBrowserDialog for selecting files or directories respectively.
		 

## Events

__ValueChanging__: This event fires before the value changes and allows you to prevent changing the value. The event passes a __ValueChangingEventArgs__ parameter that includes the __OldValue__, __NewValue__ and __Cancel__ properties. Set __Cancel__ to true to prevent the change. The example below cancels the value changing if the new value is an invalid file path:

#### Cancel changing the value 

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=browseEditorValueChanging}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=browseEditorValueChanging}} 

````C#
private void radBrowseEditor1_ValueChanging(object sender, ValueChangingEventArgs e)
{
    e.Cancel = !File.Exists(e.NewValue.ToString());
}

````
````VB.NET
Private Sub RadBrowseEditor1_ValueChanging(sender As Object, e As Telerik.WinControls.UI.ValueChangingEventArgs)
    e.Cancel = Not System.IO.File.Exists(e.NewValue.ToString())
End Sub

````

{{endregion}} 



