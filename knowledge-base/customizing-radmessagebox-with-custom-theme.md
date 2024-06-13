---
title: Customizing RadMessageBox with custom theme
description: Customizing RadMessageBox with custom theme. Check it now!
type: how-to
page_title: Customizing RadMessageBox with custom theme
slug: customizing-radmessagebox-with-custom-theme
tags: messagebox
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q1 2009|RadControls for WinForms|Martin Vassilev|Feb, 11, 2009| 

   
**HOW-TO**  
Add a custom theme for RadMessageBox dialog.  
   
**SOLUTION**

Considering the fact that RadMessageBox is build on RadControl elements, the process of creating a theme is the same as it is for every Telerik control. The easiest way to make and apply a theme is:  
 
1. Make separate theme files, using [Visual Style Builder](https://docs.telerik.com/devtools/winforms/tools/visual-style-builder/overview), for RadForm, RadButton and RadLabel. Please note that these themes should have the same **ThemeName**, for example "CustomMessageBox".
2. Import these files in the application with [RadThemeManager](https://docs.telerik.com/devtools/winforms/tools/theme-manager/adding-radthememanager-to-a-form) and apply them to RadMessageBox:

````C#
RadMessageBox.SetThemeName("CustomMessageBox");  
RadMessageBox.Show(this, "Are you sure?", "Example Message", MessageBoxButtons.YesNo, icon);    

````
````VB.NET
RadMessageBox.SetThemeName("CustomMessageBox")
RadMessageBox.Show(Me, "Are you sure?", "Example Message", MessageBoxButtons.YesNo, icon)

````

   
Please, find an example solution [here](https://github.com/telerik/winforms-sdk/tree/master/RadMessageBox/radmessagebox_customtheme/ThemeApply).

