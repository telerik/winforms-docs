---
title: Use as Rich Content Viewer
page_title: Use as Rich Content Viewer
description: Use as Rich Content Viewer
slug: richtexteditor-getting-started-use-as-rich-content-viewer
tags: use,as,rich,content,viewer
published: True
position: 2
---

# Use as Rich Content Viewer



## 

To use __RadRichTextEditor__ as a rich content viewer you have to disable the user from editing its content. This is done via the
          __IsReadOnly__ property. You just have to set it to *true*.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=readonly}}
	            
	            this.radRichTextEditor.IsReadOnly = true;
	        
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=readonly}}
	
	        Me.radRichTextEditor.IsReadOnly = True
	
	        '#End Region
	    End Sub
	
	    #Region "bold"
	
	    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radRichTextEditor.ToggleBold()
	    End Sub
	
	    #End Region
	End Class



In addition to the __IsReadOnly__ property, there are several other properties that can be used to control the response of
          __RadRichTextEditor__ towards the user actions against it:
        

* __Enabled__ - setting this property to __False__ will disable the entire control. The user won't be
            able to enter any input in it and to scroll the contents.

* __IsSelectionEnabled__ - setting this property to __False__ will disable the user to perform any selection
            inside the __RadRichTextEditor__ control.

* __Focusable__ - setting this property to __False__ will exclude the
            __RadRichTextEditor__ control from the tab navigation.
