---
title: Read Only RadRichTextBox
page_title: Read Only RadRichTextBox
description: Read Only RadRichTextBox
slug: richtextbox-features-read-only-radrichtextbox
tags: read,only,radrichtextbox
published: True
position: 7
---

# Read Only RadRichTextBox



## 

To make the RadRichTextBox read only, you have to set its __IsReadOnly__ property to *True*.

#### __[C#] Read only mode__

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxReadOnly.cs region=ReadOnly}}
	            radRichTextBox1.IsReadOnly = true;
	{{endregion}}



#### __[VB.NET] Read only mode__

{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxReadOnly.vb region=ReadOnly}}
	        RadRichTextBox1.IsReadOnly = True
	{{endregion}}



Except the __ReadOnly__ property, there are several other properties that can be used to control the response
        	of the RadRichTextBox towards the user actions against it:
        

* __Enabled__ - setting this property to *False* will disable the entire control.
		  	The user won't be able to enter any input in it and to scroll the contents.  
		  

* __IsSelectionEnabled__ - setting this property to *False* will disable the user
		  	to perform any selection inside the RadRichTextBox control.
		  
