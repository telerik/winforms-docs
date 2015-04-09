---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: editors-browse-editor-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



## 

The following example demonstrates how to change the image of a 
        __RadButton__ using the __RadBrowseEditor__.
		

![editors-browse-editor-getting-started 001](images/editors-browse-editor-getting-started001.png)



1. Drag a __RadBrowseEditor__ and a __RadButton__ on a form.

1. Select the __RadButton__ and in the __Property Window__ set the 
          __DisplayStyle__ to __Image__

1. Select the __RadBrowseEditor__, click the __Events tab__ of the 
          __Property Window__, locate the __ValueChanged__ event and double-click it in order to create an event handler. 
          Replace the event handler with the following code.
      			

#### __[C#]__

{{source=..\SamplesCS\Editors\BrowseEditor1.cs region=browseEditorValueChanged}}
	        private void radBrowseEditor1_ValueChanged(object sender, EventArgs e)
	        {
	            this.radButton1.Image = Image.FromFile(this.radBrowseEditor1.Value);
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Editors\BrowseEditor1.vb region=browseEditorValueChanged}}
	    Private Sub RadBrowseEditor1_ValueChanged(sender As Object, e As EventArgs)
	        Me.RadButton1.Image = System.Drawing.Image.FromFile(Me.RadBrowseEditor1.Value)
	    End Sub
	{{endregion}}



1. Press __F5__ to run the application. Press the browse button and select an image. 
          The image is then applied to the RadButton.
