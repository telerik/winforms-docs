---
title: Using Themes 
page_title: Using default themes  | UI for WinForms Documentation
description: Using default themes 
slug: winforms/themes/using-default-themes
tags: using,default,themes,
published: True
position: 0
previous_url: themes-using-default-themes
---

# Using default themes 

| RELATED VIDEOS |  |
| ------ | ------ |
|[Applying themes to RadControls for WinForms at the control and form level.](http://tv.telerik.com/watch/winforms/themes/radcontrols-winforms-theme)|![themes-using-default-themes 002](images/themes-using-default-themes002.png)|

## 

All themes that come with Progress&reg; Telerik&reg; UI for WinForms since version R2 2008 are available as standalone components, apart from the control's assemblies. This improvement has been added in order to simplify the way themes are added to the application and to improve the application’s loading time.

If you have installed the suite from the provided installation files, you will see the themes loaded in the Visual Studio toolbox. If you do not see the themes in the toolbox, you will have to [add them manually to the toolbox.]({%slug winforms/installation-deployment-and-distribution/adding-radcontrols-to-visual-studio-toolbox%})

>caption Figure 1: The themes in the Visual Studio toolbox.

![themes-using-themes001](images/themes-using-themes001.png)

In order to use the Theme components, just drag and drop them from the VS Toolbox to the form. This will add a reference to the corresponding theme assembly in the project and will enable the theme in the ThemeName drop-down of all Telerik controls on the form. All you have to do afterwards is to set the needed theme from the __ThemeName__ drop-down (in the smart tag) or programmatically.

>caption Figure 2: Set the theme at design time using the SmartTag.

![themes-using-themes002](images/themes-using-themes002.png)

## Setting a default theme for a whole application programmatically

Before using the following code snippets, please make sure that you have added the desired theme DLL file to your project references.

#### Setting a default theme for the entire application

{{source=..\SamplesCS\Themes\UsingDefaultThemes.cs region=usingDefaultThemes}} 
{{source=..\SamplesVB\Themes\UsingDefaultThemes.vb region=usingDefaultThemes}} 

````C#
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
    Office2007SilverTheme theme = new Office2007SilverTheme();
    ThemeResolutionService.ApplicationThemeName = "Office2007Silver";
}

````
````VB.NET
Protected Overrides Sub OnLoad(e As EventArgs)
    MyBase.OnLoad(e)
    Dim theme As New Office2007SilverTheme()
    ThemeResolutionService.ApplicationThemeName = "Office2007Silver"
End Sub

````

{{endregion}}

## Applying theme to all controls in the current form.

When you are working at design time you can change the theme of the form and apply it to all controls on the form. All you need to do is right-click the form and choose the following item:
 
>caption Figure 3: Apply the current form theme to all controls. 

![themes-using-themes003](images/themes-using-themes003.png)


# See Also
* [Touch Enabled Themes]({%slug winforms/themes/touch-enabled-themes%})

* [Using a Default Theme for the Entire Application]({%slug winforms/themes/using-a-default-theme-for-the-entire-application%})

* [Using custom themes]({%slug winforms/themes/using-custom-themes%})

* [Visual Style Builder]({%slug winforms/themes/visual-style-builder%})

