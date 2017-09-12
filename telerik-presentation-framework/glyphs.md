---
title:  Glyphs
page_title:  Glyphs | Telerik Presentation Framework
description: This article shows how one ca use the Glyphs from the TelerikWebUI font. 
slug: winforms/telerik-presentation-framework/glyphs
tags: touch, themes
published: True
position: 27
---

# Glyphs

With the new Material theme we have introduced a new approach to add icons and icon-like images. We are providing font "glyphs" via the __TelerikWebUI__ font. The glyphs are vector symbols that can be used as information-carrying icons or interaction indicators.

The __TelerikWebUI__ font provides over 400 individual glyphs. We have chosen this approach to define the icons in the Material because it provides a number of advantages and benefits.

The glyphs are vector paths which are easily scalable without loss of quality.

There is a wide range of different beautiful built-in glyphs to choose from.

They are easily colored – since they are text shapes. It is achieved by setting a Foreground color, which allows their usage in scenarios where the background of the control changes between light and dark color in different interaction states – e.g. buttons.

They are all contained in the small font file and available for use with the inclusion of the Telerik.Windows.Controls assembly and merging the needed resource dictionary for easier referencing.

They are available for use in any of our themes. They are not specific for the Material theme.

The recommended size for the TelerikWebUI glyphs is 16 or any multiple of it (e.g. 32, 48, 64 etc.) since they are designed for 16px height. However, they are vector paths and, like any font, would look clean, distinguishable, non-pixelated and beautiful in almost any size, which is their advantage to raster images and icons.

The available glyphs are separated in several groups, based on their usage:

* __Navigation and Layout__
* __Action__
* __Media__
* __Toggle__
* __Alert and Notification__
* __Image__
* __Editor__
* __Map__
* __Social__
* __File__

# Using Glyphs

The glyphs are basically text shapes, so they need to be hosted in a control with a text contents. The following example shows how you can use the Glyphs with RadLabel

{{source=..\SamplesCS\TPF\CustomFontsCode.cs region=GetWebUIFont}} 
{{source=..\SamplesVB\TPF\CustomFontsCode.vb region=GetWebUIFont}}
````C#
var font1 = ThemeResolutionService.GetCustomFont("TelerikWebUI");
radLabel1.LabelElement.CustomFont = font1.Name;
           
radLabel1.Text = "\ue920 | \ue812 | \ue13A";

````
````VB.NET
Dim font1 = ThemeResolutionService.GetCustomFont("TelerikWebUI")
radLabel1.LabelElement.CustomFont = font1.Name
radLabel1.Text = ChrW(&HE920).ToString() & " | " & ChrW(&HE812).ToString() & " | " & ChrW(&HE13A).ToString()

````



{{endregion}} 

The bellow image shows the results:

![tpf-glyphs001](images/tpf-glyphs001.png)    

>important The following article lists all available glyphs from the TelerikWebUI font along with their names, number and string values: [Glyphs Reference](http://docs.telerik.com/devtools/wpf/styling-and-appearance/glyphs/common-styles-appearance-glyphs-reference-sheet).

# See Also

* [Custom Fonts]({%slug winforms/tpf/custom-fonts%})