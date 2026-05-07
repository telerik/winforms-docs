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

* [Hue](#hue-adjustment)
* [Saturation](#saturation-adjustment)
* [Contrast](#contrast-and-brightness-adjustment)
* [Invert Colors](#invert-colors) 

>caption Figure 1: Adjust section

![WinForms RadImageEditor Adjust section](images/image-editor-adjustments001.png)


# Hue adjustment

The Hue can be adjusted with the respective dialog, the values can be from 0 to 360.

>caption Figure 2: Hue Dialog

![WinForms RadImageEditor Hue Dialog](images/image-editor-adjustments002.png)

This can be done in the code behind as well.

<snippet id='image-editor-imageeditorfeatures-hue-cs' />
<snippet id='image-editor-imageeditorfeatures-hue-vb' />



# Saturation adjustment

The Saturation can be adjusted with the respective dialog the values can be from -100 to 100.

>caption Figure 3: Saturation Dialog

![WinForms RadImageEditor Saturation Dialog](images/image-editor-adjustments003.png)

To do this programmatically use the __SetSaturation__ method.

<snippet id='image-editor-imageeditorfeatures-sat-cs' />
<snippet id='image-editor-imageeditorfeatures-sat-vb' />



# Contrast and Brightness adjustment

The Contrast and Brightness can be adjusted with the respective dialog the values can be from -100 to 100.

>caption Figure 4: Brightness and Contrast Dialog

![WinForms RadImageEditor Brightness and Contrast Dialog](images/image-editor-adjustments004.png)

This can be done in the code behind as well.

<snippet id='image-editor-imageeditorfeatures-contrast-cs' />
<snippet id='image-editor-imageeditorfeatures-contrast-vb' />



# Invert Colors

The Invert Color button just inverts the colors in the image pixel by pixel.
 
>caption Figure 5: Inverted Colors

![WinForms RadImageEditor Inverted Colors](images/image-editor-adjustments005.png)

This action can be performed in code with the following method.

<snippet id='image-editor-imageeditorfeatures-invert-cs' />
<snippet id='image-editor-imageeditorfeatures-invert-vb' />



# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
