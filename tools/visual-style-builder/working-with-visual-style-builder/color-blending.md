---
title: Color Blending
page_title: Color Blending | UI for WinForms Tools
description: Visual Style Builder provides a color blending functionality making it easy to completely transform an existing theme.
slug: winforms/tools/visual-style-builder/working-with-visual-style-builder/color-blending
tags: color,blending
published: True
position: 7
previous_url: tools-visual-style-builder-working-with-visual-style-builder-color-blending
---

# Color Blending

## Overview

Visual Style Builder provides a color blending functionality making it easy to completely transform an existing theme. While preserving the overall look of the selected theme this feature allows you to define a new color, blend it with an existing one and at the end apply it to a single control or to all the controls from the suite. The pictures below shows the result after modifying the __TelerikMetro__ theme.

|TelerikMetro before change | TelerikMetro after change|
|----|----|
![tools-visual-style-builder-working-with-visual-style-builder-color-blending 001](images/tools-visual-style-builder-working-with-visual-style-builder-color-blending001.png)|![tools-visual-style-builder-working-with-visual-style-builder-color-blending 002](images/tools-visual-style-builder-working-with-visual-style-builder-color-blending002.png)|

>note In order to access the ColorBlendDialog, you should open Visual Style Builder, select the Tools menu item and click the Blend Color item.
>
## Color Settings

This group defines the colors to be blended.

>caption Figure 3: Color Settings
![tools-visual-style-builder-working-with-visual-style-builder-color-blending 003](images/tools-visual-style-builder-working-with-visual-style-builder-color-blending003.png)

* __Source Color:__ The color which is currently being used.


* __Destination Color:__ Target color with which the source color is going to be blended.


## Threshold/Mix Settings

The items in this group specifies how exactly the blending process will be performed.

>caption Figure 4: Threshold/Mix Settings
![tools-visual-style-builder-working-with-visual-style-builder-color-blending 004](images/tools-visual-style-builder-working-with-visual-style-builder-color-blending004.png)

* __Image Threshold:__ Blends the destination color to images used in the themes having the source color as background.


* __Color Mix:__ Specifies the weight with which the destination color will be blended to the source color.


* __Color Sensitivity:__ Defines a factor determining how colors different than the source and destination will be affected by the blending operation.


# See Also
* [Applying Font repository items]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/applying-font-repository-items%})

* [Loading Predefined Themes]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/loading-predefined-themes%})

* [Loading themes created with the old VSB]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/loading-themes-created-with-the-old-vsb%})

* [Precedence Example Visibility Property]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/precedence-example-visibility-property%})

* [Property Precedence Rules]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/property-precedence-rules%})

* [Saving and Loading Theme Files]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/saving-and-loading-theme-files%})