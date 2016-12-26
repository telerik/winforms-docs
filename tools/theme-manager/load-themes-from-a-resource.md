---
title: Load Themes from a Resource
page_title: Load Themes from a Resource | UI for WinForms Documentation
description: Load Themes from a Resource
slug: winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-a-resource
tags: load,themes,from,a,resource
published: True
position: 2
previous_url: tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource
---

# Load Themes from a Resource

>important RadThemeManager cannot load the theme if it is saved as package (tssp file). This is shown in the following article: [using custom themes]({%slug winforms/themes/using-custom-themes%})


To load a theme from a resource into a Theme Manager, follow these steps:

1. Add a __RadThemeManager__ control to your form.

1. Add the XML file containing the theme to your Microsoft Visual Studio project.

1. In the Properties window for the XML file, set the __Build Action__ to __Embedded Resource__.

    ![tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource 001](images/tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource001.png)

1. Select the RadThemeManager control and open its Smart Tag menu.
          

1. Select the __Load Theme From Resources task__.  

    ![tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource 002](images/tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource002.png)

1. Enter your theme's name in the __Load Theme__ dialog box, and then click __OK__.
    ![tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource 003](images/tools-visual-style-builder-adding-custom-themes-to-your-application-load-themes-from-a-resource003.png)

1. Using the same approach, load the  __theme repository file__ and all other theme files that you need.


