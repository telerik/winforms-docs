---
title: Adding a custom theme as a resource
page_title: Adding a custom theme as a resource | UI for WinForms Documentation
description: Adding a custom theme as a resource
slug: winforms/themes/advanced-topics/adding-custom-redistributable-themes-to-your-application-/adding-a-custom-theme-as-a-resource
tags: adding,a,custom,theme,as,a,resource
published: True
position: 1
---

# Adding a custom theme as a resource



## Adding a custom theme as a resource

1. Create a new Windows Application, drag a RadControl, i.e. RadButton, from your Toolbox to your form.

1. Create a new custom theme and save it somewhere on your hard drive.

1. Right-click the project node in the Solution Explorer, choose __Add >> Existing Item__ and add the custom theme file(s) together with the theme repository file. This will automatically copy the custom theme file in your project's directory. You can also add a new folder (__Add >> New Folder__) to place your theme files.
            

1. Set the custom theme's __Build Action__ property to __Embedded Resource__.
            

1. Add a RadThemeManager to the form.

1. From the RadThemeManager's Action Menu (click the Smart Tag to open it) choose __Load Theme from resources__.
            

1. You will be prompted to enter the resource location. C# and VB.NET compilers differ from one another, so:
            

* In a C# application the pattern is __ProjectDefaultNamespace.ContainingFolderName.ThemeFileName.Extention__ if the theme file is in a folder as mentioned in step 3, otherwise it is just __ProjectName.ThemeFileName.Extention__

* In a VB.NET application, it does not matter whether the theme file is in a folder or not, the pattern is always the same: __ProjectRootNamespace.ThemeFileName.Extention__.
                

1. Perform the same action for all theme files needed and also for the  __theme repository__

1. Build the application. This will include the custom theme file in your assemblies.

1. Now you can apply the theme to the RadButton.

>note To be sure about the theme resource location in step 7, you can use Reflector. After building the project simply reflect the built assembly/executable and you will see it.
>

