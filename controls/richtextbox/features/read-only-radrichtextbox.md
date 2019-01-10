---
title: Read Only RadRichTextBox
page_title: Read Only RadRichTextBox | UI for WinForms Documentation
description: Read Only RadRichTextBox
slug: winforms/richtextbox-(obsolete)/features/read-only-radrichtextbox
tags: read,only,radrichtextbox
published: True
position: 7
previous_url: richtextbox-features-read-only-radrichtextbox
---

# Read Only RadRichTextBox

To make the RadRichTextBox read only, you have to set its __IsReadOnly__ property to *True*.

#### Read only mode

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxReadOnly.cs region=ReadOnly}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxReadOnly.vb region=ReadOnly}} 

````C#
radRichTextBox1.IsReadOnly = true;

````
````VB.NET
RadRichTextBox1.IsReadOnly = True

````

{{endregion}}

Except the __ReadOnly__ property, there are several other properties that can be used to control the response of the RadRichTextBox towards the user actions against it:

* __Enabled__ - setting this property to *False* will disable the entire control. The user won't be able to enter any input in it and to scroll the contents.

* __IsSelectionEnabled__ - setting this property to *False* will disable the user to perform any selection inside the RadRichTextBox control.