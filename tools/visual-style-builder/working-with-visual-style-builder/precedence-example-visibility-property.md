---
title: Precedence Example Visibility Property
page_title: Precedence Example Visibility Property | UI for WinForms Tools
description: This article shows a property precedence example with the Visibility Property of RadLabel.
slug: winforms/tools/visual-style-builder/working-with-visual-style-builder/precedence-example-visibility-property
tags: precedence,example,visibility,property
published: True
position: 2
previous_url: tools-visual-style-builder-working-with-visual-style-builder-precedence-example-visibility-property
---

# Precedence Example: Visibility Property

There are cases in which you apply a repository item to an element, but this element still does not show any colors. As it is stated in [this article]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/property-precedence-rules%}), if not overridden, the default values of the element are used. Such is the case with RadLabelElement where you apply a border repository item to it, but you get no borders applied. The reason for this behavior is that the default value of the __Visibility__ property is *Hidden* and repository items do not set a value to this property by default, so the *Hidden* value is taken into consideration. 

![tools-visual-style-builder-working-with-visual-style-builder-precedence-example-visibility-property 001](images/tools-visual-style-builder-working-with-visual-style-builder-precedence-example-visibility-property001.png)

>tip Border1 repository item is applied to the default RadLabelElement state, but the default Visibility value is Hidden, and since it is not overridden, the fill is not visible.

In order to display the BorderPrimitive of the RadLabelElement, you should alter this property directly in the property grid of the BorderPrimitive.

![tools-visual-style-builder-working-with-visual-style-builder-precedence-example-visibility-property 002](images/tools-visual-style-builder-working-with-visual-style-builder-precedence-example-visibility-property002.png)

>tip When we set the Visibility property to Visible, we override the default value and the repository item colors become visible.

>tip 
This example concerns the Visibility property, but the rules described here are general and they are in force for all the properties that can be set by Visual Style Builder.
>




# See Also
* [Applying Font repository items]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/applying-font-repository-items%})

* [Color Blending]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/color-blending%})

* [Loading Predefined Themes]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/loading-predefined-themes%})

* [Loading themes created with the old VSB]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/loading-themes-created-with-the-old-vsb%})

* [Property Precedence Rules]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/property-precedence-rules%})

* [Saving and Loading Theme Files]({%slug winforms/tools/visual-style-builder/working-with-visual-style-builder/saving-and-loading-theme-files%})

