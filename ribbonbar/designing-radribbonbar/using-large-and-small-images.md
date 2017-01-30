---
title: Using Large and Small Images
page_title: Using Large and Small Images | RadRibbonBar
description: Elements on a RadRibbonBar (such as buttons, check boxes, and repeat buttons) can each be assigned two images.
slug: winforms/ribbonbar/getting-started/using-large-and-small-images
tags: using,large,and,small,images
published: True
position: 11
previous_url: ribbonbar-using-large-and-small-images
---

# Using Large and Small Images

Elements on a **RadRibbonBar** (such as buttons, check boxes, and repeat buttons) can each be assigned two images. In addition to the regular set of image properties (__Image__, __ImageIndex__, and __ImageKey__), there is a second set of image properties (__SmallImage__, __SmallImageIndex__, and __SmallImageKey__) that are used to designate an alternative, small, image for the element. This small image is only displayed when the user resizes the form on which the **RadRibbonBar** control is displayed and using small images enables the control to display more elements.

For example, here is a **RadRibbonBar** control with adequate space to display all of its default images.

>caption Figure 1: RibbonBar with Enough Space
![ribbonbar-using-large-and-small-images 001](images/ribbonbar-using-large-and-small-images001.png)

As the user resizes the form containing the control, the labels in the __Text__ group are first eliminated to save space.

>caption Figure 2: RibbonBar with Smaller Width
![ribbonbar-using-large-and-small-images 002](images/ribbonbar-using-large-and-small-images002.png)

Continued resizing switches the elements in the __Insert__ group from their large images to their small images (in addition to eliminating their labels):

>caption Figure 3: Collapsed Groups
![ribbonbar-using-large-and-small-images 003](images/ribbonbar-using-large-and-small-images003.png)

## See Also

* [Design Time]({%slug winforms/ribbonbar/design-time%})
* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})
* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Themes]({%slug winforms/ribbonbar/customizing-appearance/themes%})