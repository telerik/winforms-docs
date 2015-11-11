---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/editors/browse-editor/getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started
 

## 

The following example demonstrates how to change the image of a __RadButton__ using the __RadBrowseEditor__.
		

![editors-browse-editor-getting-started 001](images/editors-browse-editor-getting-started001.png)
 

1\. Drag a __RadBrowseEditor__ and a __RadButton__ on a form.

2\. Select the __RadButton__ and in the __Property Window__ set the __DisplayStyle__ to __Image__

3\. Select the __RadBrowseEditor__, click the __Events tab__ of the __Property Window__, locate the __ValueChanged__ event and double-click it in order to create an event handler. Replace the event handler with the following code. 

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=browseEditorValueChanged}} 
{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=browseEditorValueChanged}} 

````C#
        private void radBrowseEditor1_ValueChanged(object sender, EventArgs e)
        {
            this.radButton1.Image = Image.FromFile(this.radBrowseEditor1.Value);
        }
````
````VB.NET
    Private Sub RadBrowseEditor1_ValueChanged(sender As Object, e As EventArgs)
        Me.RadButton1.Image = System.Drawing.Image.FromFile(Me.RadBrowseEditor1.Value)
    End Sub
    '
````

{{endregion}} 
 

4\. Press __F5__ to run the application. Press the browse button and select an image. The image is then applied to the RadButton.
