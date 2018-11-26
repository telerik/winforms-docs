---
title: Use as Rich Content Viewer
page_title: Use as Rich Content Viewer | RadRichTextEditor
description:  RadRichTextEditor is a control that allows you to display and edit rich text content including sections, paragraphs, spans, italic text, bold text, inline images, tables etc.
slug: winforms/richtexteditor-/getting-started/use-as-rich-content-viewer
tags: use,as,rich,content,viewer
published: True
position: 3
previous_url: richtexteditor-getting-started-use-as-rich-content-viewer
---

# Use as Rich Content Viewer

To use __RadRichTextEditor__ as a rich content viewer you have to disable the user from editing its content. This is done via the __IsReadOnly__ property. You just have to set it to *true*.

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=readonly}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=readonly}} 

````C#
            
this.radRichTextEditor.IsReadOnly = true;

````
````VB.NET
Me.radRichTextEditor.IsReadOnly = True

````

{{endregion}} 

In addition to the __IsReadOnly__ property, there are several other properties that can be used to control the response of __RadRichTextEditor__ towards the user actions against it:

* __Enabled__ - setting this property to *false* will disable the entire control. The user won't be able to enter any input in it and to scroll the contents.

* __IsSelectionEnabled__ - setting this property to *false* will disable the user to perform any selection inside the __RadRichTextEditor__ control.

* __Focusable__ - setting this property to *false* will exclude the __RadRichTextEditor__ control from the tab navigation.
