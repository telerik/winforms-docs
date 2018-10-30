---
title: Material Themes Blending
page_title: Material Themes Blending | UI for WinForms Tools
description: Visual Style Builder provides a color blending functionality making it easy to completely transform an existing theme.
slug: winforms/tools/visual-style-builder/working-with-visual-style-builder/material-themes-blending
tags: color, blending, material
published: True
position: 8 
---

# Material Themes Blending

Telerik UI for WinForms suite offers a touch optimized theme which provides additional features such as custom fonts, built-in animations and shadows. We also have three other themes that are using the [Material]({%slug winforms/themes/touch-enabled-themes%}) theme as a foundation but have different colors:

* MaterialBlueGray
* MaterialPink
* MaterialTeal
     
>caption Figure 1: Material Themes

![tools-visual-style-builder-working-with-visual-style-builder-material-themes-blending 001](images/tools-visual-style-builder-material-themes-blending001.png)

## Generate Material Variation

[Visual Style Builder]({%slug winforms/tools/visual-style-builder%}) provides an easy way to generate different color variations of the **Material** theme. Material theme blending uses the basic Material theme by executing a series of predefined commands. 

Select *Tools >> Generate Material Variation* menu item:

>caption Figure 2: Generate Material Variation

![tools-visual-style-builder-working-with-visual-style-builder-material-themes-blending 002](images/tools-visual-style-builder-material-themes-blending002.png)

![tools-visual-style-builder-working-with-visual-style-builder-material-themes-blending 006](images/tools-visual-style-builder-material-themes-blending006.png) 

>tip If you already have loaded a customized Material theme (but not a Material variation) it will remain loaded when generating a Material variation.

This will open the **Material Blend Dialog** from which you can choose the **Primary color** and the **Accent color**:

>caption Figure 3: Material Blend Dialog

![tools-visual-style-builder-working-with-visual-style-builder-material-themes-blending 003](images/tools-visual-style-builder-material-themes-blending003.png)

If you click the **Generate theme** button, a new variation of the Material theme will be exported using the selected colors.

>caption Figure 4: Save the Theme

![tools-visual-style-builder-working-with-visual-style-builder-material-themes-blending 004](images/tools-visual-style-builder-material-themes-blending004.png) 

After loading the custom theme in [Theme Viewer]({%slug winforms/tools/themeviewer%}) the primary/accent colors are replaced:

>caption Figure 5: Load Material theme's variation

![tools-visual-style-builder-working-with-visual-style-builder-material-themes-blending 005](images/tools-visual-style-builder-material-themes-blending005.png) 

# See Also

* [Touch Enabled Themes]({%slug winforms/themes/touch-enabled-themes%})
* [Customizing the Material Theme]({%slug winforms/themes/theme-tutorials/customizing-material-theme%})
* [Color Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/color-blending%})
* [Fluent Theme Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/fluent-themes-blending%})