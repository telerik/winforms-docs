---
title: Canvas Resize
page_title: Canvas Resize - WinForms ImageEditor Control
description: WinForms ImageEditor supports image resizing either via the Canvas resize button or programmatically. 
slug: radimageeditor-canvas-resize
tags: image, editor, resize 
published: True
position: 1
---


# Canvas Resize via UI

You can use the __Canvas Resize__ button which will open the canvas resize dialog. In the dialog you can set the alignment, the size, and the BackColor.

![WinForms RadImageEditor Canvas Resize Option](images/image-editor-canvas-resize001.png)
![WinForms RadImageEditor Resize Canvas Dialog](images/image-editor-canvas-resize002.png)

## Canvas Resize Programmatically

The following snippet shows how you can use the __ResizeCanvas__ method. You will need to specify the size, the alignment, and the BackColor.

#### Use the ResizeCanvas method

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Canvas}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Canvas}}
````C#
radImageEditor1.ImageEditorElement.ResizeCanvas(500, 500, ContentAlignment.BottomRight, Color.Red);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.ResizeCanvas(500, 500, ContentAlignment.BottomRight, Color.Red)
radImageEditor1.ImageEditorElement.SaveState()

```` 


{{endregion}}

# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
