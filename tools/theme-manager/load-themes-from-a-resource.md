---
title: Load Themes from a Resource
page_title: Load Themes from a Resource | RadThemeManager
description: This article shows how you can load the XML files when they are embedded as resource using RadThemeManager.
slug: winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-a-resource
tags: load,themes,from,a,resource
published: True
position: 3
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

>important If the form with the theme manager will be opened multiple time in the life cycle of the application, the theme manager needs to be diposed explicitly. A suitable place to call its Dispose method is the Closing event of the form.
>

# See Also
* [Adding RadThemeManager to a Form]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/adding-radthememanager-to-a-form%})

* [Applying a Theme to a Control]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/applying-a-theme-to-a-control%})

* [Add Remove Theme Files]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/editing-themes%})

* [Load Themes from an External File]({%slug winforms/tools/visual-style-builder/adding-custom-themes-to-your-application/load-themes-from-an-external-file%})
