---
title: Round Corners
page_title: Round Corners
description: Round Corners
slug: radimageeditor-round-corners
tags: image, editor, round, corners 
published: True
position: 5
---

# Round Corners via UI

You round the corners by showing the round corners dialog and set the __Radius__, the __Border Thickness__ and their colors. 

![](images/image-editor-round-corners001.png)
![](images/image-editor-round-corners002.png)

# Round Corners Programmatically

The following snippet shows how you can round the corners with the RoundCorners method. 

#### Round Corners in code.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Corners}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Corners}}
````C#
radImageEditor1.ImageEditorElement.RoundCorners(100, Color.Red, 2, Color.Green);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.RoundCorners(100, Color.Red, 2, Color.Green)
radImageEditor1.ImageEditorElement.SaveState()

```` 


{{endregion}}

# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
