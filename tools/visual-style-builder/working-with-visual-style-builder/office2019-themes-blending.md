---
title: Office2019 Themes Blending
page_title: Office2019 Themes Blending | UI for WinForms Tools
description: Color blending the Office2019 themes in the Visual Style Builder tool.
slug: winforms/tools/visual-style-builder/working-with-visual-style-builder/office2019-themes-blending
tags: color, blending, office2019
published: True
position: 10
---

# Office2019 Themes Blending

Telerik UI for WinForms suite offers a touch optimized theme which provides additional features such as custom fonts, built-in animations and shadows. The Visual Style Builder tool provides a functionality to blend the colors of an existing theme so that a completely new theme can be created for couple of minutes. We also have three different Office2019 themes that share the same design but have different colors:

 * **Office2019Light**
 * **Office2019Gray**
 * **Office2019Dark**

The Office2019 themes are designed to work with predefined set of colors. The tutorial here will demonstrate how a new **Office2019Light** theme can be created. The same steps can be also followed with the **Office2019Gray** and **Office2019Dark** themes.

>caption Figure 1: Office2019Light Theme
![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 001](images/tools-visual-style-builder-office2019light-themes-blending001.png)

>caption Figure 2: Office2019Gray Theme
![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 002](images/tools-visual-style-builder-office2019gray-themes-blending002.png)


>caption Figure 3: Office2019Dark Theme
![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019dark-themes-blending003.png)


## Generate Office2019 Variation

[Visual Style Builder]({%slug winforms/tools/visual-style-builder%}) provides an easy way to generate different color variations of the Office2019Light, Office2019Gray, and Office2019Light themes. Office2019Light theme blending uses the basic Office2019Light theme by executing a series of predefined commands.

Select *Tools >> Generate Office2019Light Variation* menu item:

>caption Figure 4: Generate Office2019Light Variation
![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending004.png)


![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending005.png)

>note If you already have loaded a customized Office2019Light theme (but not a Office2019Light variation) it will remain loaded when generating a Office2019Light variation. This will open the **Office2019 Blend Dialog** from which you can create a new palette or modify the selected one.

>caption Figure 5: Office2019 Blend Dialog

![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending006.png)

If you want to create a brand new palette you can click on the *Create New palette* button and it will open **New Palette Dialog**:

![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending009.png)

If you want to edit the existing pallete then click on the *Modify selected palette* button and it will open **Modify Palette Dialog**. You will be able to modify any of the existing colors:

![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending010.png)

When you are ready with picking colors for the palette you can click the **Generate theme** button. A new variation of the Office2019Light theme will be exported using the selected colors.


>caption Figure 6: Save the Theme
![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending007.png)


After loading the custom theme in [Theme Viewer]({%slug winforms/tools/themeviewer%}) the primary/accent colors are replaced:

>caption Figure 7: Load Office2019LightGreen theme variation
![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending008.png)

>note You can use the same approach for the Office2019Gray and Office2019Dark themes.

>caption Figure 8: Load Office2019DarkOrange theme variation

![tools-visual-style-builder-working-with-visual-style-builder-office2019-themes-blending 003](images/tools-visual-style-builder-office2019-themes-blending011.png)



# See Also

* [Color Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/color-blending%})
* [Material Theme Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/material-themes-blending%})
* [Fluent Theme Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/fluent-themes-blending%})
