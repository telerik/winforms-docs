---
title: Load Themes from an External File
page_title: Load Themes from an External File | RadThemeManager
description: This article shows how you can load the XML files directly using RadThemeManager.
slug: winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-an-external-file
tags: load,themes,from,an,external,file
published: True
position: 2
previous_url: tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file
---

# Load Themes from an External File

>important RadThemeManager cannot load the theme if it is saved as package (tssp file). This is shown in the following article: [using custom themes]({%slug winforms/themes/using-custom-themes%})

## 

|RELATED VIDEOS||
|----|----|
|[Changing Themes at Run Time with Telerik UI for WinForms](http://tv.telerik.com/watch/winforms/visualstylebuilder/changing-themes-at-run-time-with-radcontrols-winforms)<br>In this video, you will learn how to give your users the ability to choose between Telerik themes and custom themes at run time. (Runtime: 08:42)|![tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file 003](images/tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file003.png)|

To load a theme from an external file into a Theme Manager, follow these steps:
        

1. Add a RadThemeManager control to your form.

1. Select the RadThemeManager control, and then open its __Smart Tag__ menu.

    ![tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file 001](images/tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file001.png)

1. Select __Load Theme From File__.
            

1. Find your theme in the __Open File__ dialog box, and then click __Open__. 

    ![tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file 002](images/tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-an-external-file002.png)

>caution It is up to you to choose a theme that makes sense for the controls on the form that you are customizing. Theme Manager does not check the theme to make sure that its customizations apply to the controls currently on the form.
>


# See Also
* [Adding RadThemeManager to a Form]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/adding-radthememanager-to-a-form%})

* [Applying a Theme to a Control]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/applying-a-theme-to-a-control%})

* [Add Remove Theme Files]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/editing-themes%})

* [Load Themes from a Resource]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-a-resource%})

