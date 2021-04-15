---
title: Working with RadBrowseEditor
page_title: Working with RadBrowseEditor - WinForms BrowseEditor Control
description: Learn how to work with RadBrowseEditor which provides an easy way to track user input and perform validation.
slug: winforms/editors/browseeditor/working-with-radbrowseeditor
tags: working,with,radbrowseeditor
published: True
position: 5
previous_url: editors-browse-editor-working-with
---

# Working with RadBrowseEditor
 
The events defined in __RadBrowseEditor__ provide an easy way to track user input and perform validation. The example handles such scenario.

#### Cancel ValueChanging Event 

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

## See Also

* [Properties and Events]({%slug winforms/editors/browseeditor/properties-events%})




