---
title: Adding a custom theme as a file
page_title: Adding a custom theme as a file | UI for WinForms Documentation
description: Adding a custom theme as a file
slug: winforms/themes/advanced-topics/adding-custom-redistributable-themes-to-your-application-/adding-a-custom-theme-as-a-file
tags: adding,a,custom,theme,as,a,file
published: True
position: 2
previous_url: themes-advanced-topics-adding-custom-adding-as-file
---

# Adding a custom theme as a file


1. Create a new Windows Application and drag a RadControl, i.e. RadButton, from your Toolbox to your form. 

1. Create a new custom theme and save it somewhere on your hard drive (save it as XML files). 

1. Right-click the project node in the Solution Explorer, choose __Add >> Existing Item__ and add the custom theme file. This will automatically copy the custom theme file in your project's directory. 

1. Add __a RadThemeManager__ to the form. 

1. From its Action Menu (click the Smart Tag to open it) choose __Load Theme from file__, then browse to the theme file in the project directory and select it, click Open. 

1. Again from the RadThemeManager's Action Menu, choose __Edit Themes__, set the __ThemeLocation__ property according to the following pattern: "~__..\\..\ThemeFileName.Extention__", assuming that the theme file is in the project directory. 

1. Now apply the theme to the RadButton. 
