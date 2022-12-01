---
title: Rotate
page_title: Rotate - WinForms ImageEditor Control
description: WinForms ImageEditor supports rotating the image at 90, 180, 270 degrees.
slug: radimageeditor-rotate
tags: image, editor, rotate 
published: True
position: 2
---


# Rotate via the UI

You can use the rotate buttons to directly rotate the image. No dialog is shown in this case.

![WinForms RadImage-Editor ](images/image-editor-rotate001.png)

# Rotate Programmatically

The following spinet shows how you can access and use the __RotateFlip__ method.

#### Rotate programmatically

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Rotate}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Rotate}}
````C#
radImageEditor1.ImageEditorElement.RotateFlip(RotateFlipType.Rotate270FlipNone);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.RotateFlip(RotateFlipType.Rotate270FlipNone)
radImageEditor1.ImageEditorElement.SaveState()

```` 


{{endregion}}

# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
