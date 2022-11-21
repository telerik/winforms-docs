---
title: Fluent Themes Blending
page_title: Fluent Themes Blending - UI for WinForms Tools
description: Color blending the Fluent themes in the Visual Style Builder tool.
slug: winforms/tools/visual-style-builder/working-with-visual-style-builder/fluent-themes-blending
tags: color, blending, fluent
published: True
position: 9
---

# Fluent Themes Blending

Telerik UI for WinForms suite offers a touch optimized theme which provides additional features such as custom fonts, built-in animations and shadows. The Visual Style Builder tool provides a functionality to blend the colors of an existing theme so that a completely new theme can be created for couple of minutes. 

The Fluent themes as well as the Material themes are designed to work with predefined set of colors - primary and accent for the Material themes, and entire palettes for the Fluent themes. The tutorial here will demonstrate how a new Fluent theme can be created. The same steps can be also followed with the FluentDark theme.


>caption Figure 1: Fluent Theme
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 001](images/tools-visual-style-builder-fluent-themes-blending001.png)

>caption Figure 2: Fluent Dark Theme
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 001](images/tools-visual-style-builder-fluent-themes-blending002.png)

## Generate Fluent Variation

[Visual Style Builder]({%slug winforms/tools/visual-style-builder%}) provides an easy way to generate different color variations of the **Fluent** and **FluentDark** themes. Fluent theme blending uses the basic Fluent theme by executing a series of predefined commands. 

Select *Tools >> Generate Fluent Variation* menu item:

>caption Figure 3: Generate Fluent Variation
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 002](images/tools-visual-style-builder-fluent-themes-blending003.png)

![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 006](images/tools-visual-style-builder-fluent-themes-blending004.png) 

>note If you already have loaded a customized Fluent theme (but not a Fluent variation) it will remain loaded when generating a Fluent variation.
This will open the **Fluent Blend Dialog** from which you can create a new palette or modify the selected one.

>caption Figure 4: Fluent Blend Dialog
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 003](images/tools-visual-style-builder-fluent-themes-blending005.png)

If you click the **Generate theme** button, a new variation of the Fluent theme will be exported using the selected colors.

>caption Figure 5: Save the Theme
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 004](images/tools-visual-style-builder-fluent-themes-blending006.png) 

After loading the custom theme in [Theme Viewer]({%slug winforms/tools/themeviewer%}) the primary/accent colors are replaced:

>caption Figure 6: Load FluentGreen theme variation
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 005](images/tools-visual-style-builder-fluent-themes-blending007.png)

>caption Figure 7: Load FluentDarkGreen theme variation
![tools-visual-style-builder-working-with-visual-style-builder-fluent-themes-blending 005](images/tools-visual-style-builder-fluent-themes-blending008.png)  

# See Also

* [Color Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/color-blending%})
* [Material Theme Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/material-themes-blending%})
