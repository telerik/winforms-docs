---
title: Adjustments
page_title: Adjustments - WinForms ImageEditor Control
description: WinForms ImageEditor supports image adjustments like Hue, Saturation, Contrast etc.
slug: radimageeditor-features-adjustments
tags: hue, saturation, contrast, invert, colors
published: True
position: 9
---


# Adjustments

__RadImageEditor__ supports the following image adjustments.

* [Hue](#hue-adjusment)
* [Saturation](#saturation-adjusment)
* [Contrast](#contrast-and-brightness-adjusment)
* [Invert Colors](#invert-colors) 

>caption Figure 1: Adjust section

![WinForms RadImage-Editor Adjust section](images/image-editor-adjustments001.png)


# Hue adjustment

The Hue can be adjusted with the respective dialog, the values can be from 0 to 360.

>caption Figure 2: Hue Dialog

![WinForms RadImage-Editor Hue Dialog](images/image-editor-adjustments002.png)

This can be done in the code behind as well.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Hue}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Hue}}
````C#
radImageEditor1.ImageEditorElement.SetHue(200);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.SetHue(200)
radImageEditor1.ImageEditorElement.SaveState()

````

{{endregion}}

# Saturation adjustment

The Saturation can be adjusted with the respective dialog the values can be from -100 to 100.

>caption Figure 3: Saturation Dialog

![WinForms RadImage-Editor Saturation Dialog](images/image-editor-adjustments003.png)

To do this programmatically use the __SetSaturation__ method.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Sat}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Sat}}

````C#
radImageEditor1.ImageEditorElement.SetSaturation(-50);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.SetSaturation(-50)
radImageEditor1.ImageEditorElement.SaveState()

````

{{endregion}}

# Contrast and Brightness adjustment

The Contrast and Brightness can be adjusted with the respective dialog the values can be from -100 to 100.

>caption Figure 4: Brightness and Contrast Dialog

![WinForms RadImage-Editor Brightness and Contrast Dialog](images/image-editor-adjustments004.png)

This can be done in the code behind as well.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Contrast}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Contrast}}

````C#
radImageEditor1.ImageEditorElement.SetContrastAndBrightness(100, 10);
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.SetContrastAndBrightness(100, 10)
radImageEditor1.ImageEditorElement.SaveState()

````

{{endregion}}

# Invert Colors

The Invert Color button just inverts the colors in the image pixel by pixel.
 
>caption Figure 5: Inverted Colors

![WinForms RadImage-Editor Inverted Colors](images/image-editor-adjustments005.png)

This action can be performed in code with the following method.

{{source=..\SamplesCS\ImageEditor\ImageEditorFeatures.cs region=Invert}} 
{{source=..\SamplesVB\ImageEditor\ImageEditorFeatures.vb region=Invert}}

````C#
radImageEditor1.ImageEditorElement.InvertColors();
radImageEditor1.ImageEditorElement.SaveState();

````
````VB.NET
radImageEditor1.ImageEditorElement.InvertColors()
radImageEditor1.ImageEditorElement.SaveState()

````

{{endregion}}

# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
