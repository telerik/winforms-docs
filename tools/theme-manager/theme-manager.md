---
title: Overview
page_title: Theme Manager | RadThemeManager
description: This article shows what is RadThemeMenager and when it should be used.
slug: winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-a-resource
tags: load,themes,from,a,resource
published: True
position: 0
---


# RadThemeManager

RadThememanger is a component which can be dragged from the toolbox. It purpose is to manage the XML files that contain the theme for the controls. The following articles are showing how you can use this control: 

* [Adding RadThemeManager to a Form]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/adding-radthememanager-to-a-form%})
* [Load Themes from a Resource]({%slug winforms/themes/advanced-topics/adding-custom-redistributable-themes-to-your-application-/adding-a-custom-theme-as-a-resource%})
* [Add Remove Theme Files]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/editing-themes%})
* [Load Themes from an External File]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-an-external-file%})

>important RadThemeManager cannot load the theme if it is saved as package (tssp file). This is shown in the following article: [using custom themes]({%slug winforms/styling-and-appearance/using-custom-themes%})
>

>important If the form with the theme manager will be opened multiple time in the life cycle of the application, the theme manager needs to be diposed explicitly. A suitable place to call its Dispose method is the Closing event of the form.
>

 

