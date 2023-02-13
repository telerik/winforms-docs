---
title: Effects
page_title: Effects - WinForms ImageEditor Control
description: WinForms ImageEditor supports sharpen and blur effects over the image.
slug: radimageeditor-features-effects
tags: sharpen, blur
published: True
position: 10
---

# Effects

Currently, RadImageEditor supports the following effects.

* [Sharpen](#sharpen)
* [Blur](#blur)

![WinForms RadImageEditor Effects](images/image-editor-effects001.png)

# Sharpen

Once you click the Sharpen button the sharpen dialog will appear and you will be able to apply the effect.

![WinForms RadImageEditor Sharpen Effect](images/image-editor-effects002.png)

This can be performed programmatically as well. The following snippet shows how you can apply the Sharpen effect.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Sharp}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Sharp}}
````C#
radImageEditor1.ImageEditorElement.Sharpen(100);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.Sharpen(100)
radImageEditor1.ImageEditorElement.SaveState()

````

{{endregion}}

# Blur

Once you click the Blur button the blur dialog will appear and you will be able to apply the effect.

![WinForms RadImage-Editor Blur Effect](images/image-editor-effects003.png)

This can be performed programmatically as well. The following snippet shows how you can apply the Blur effect.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Blur}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Blur}}
````C#
radImageEditor1.ImageEditorElement.Blur(100);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.Blur(100)
radImageEditor1.ImageEditorElement.SaveState()

````

{{endregion}}

# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
