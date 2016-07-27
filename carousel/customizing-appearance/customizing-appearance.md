---
title: Customizing Appearance
page_title: Customizing Appearance | RadCarousel 
description: This articles shows how one can change the RadCarousel appearance. 
slug: winforms/carousel/customizing-appearance
tags: appearance
published: True 
position: 0
---

# Customizing at Design Time

You can customize the carousel elements with the [Element Hierarchy Editor]({%slug winforms/tools/element-hierarchy-editor%}). Figure shows how you can use the editor to change the carousel background color.

>caption Figure 1: Change Carousel BackColor

![carousel-customize-appearance001](images/carousel-customize-appearance001.png)

# Customizing in the Code behind

The following snippet shows how you can change the back color of the navigation buttons. Figure 2 shows the result from the bellow code.

#### Change Navigation Buttons BackColor

{{source=..\SamplesCS\Carousel\CarouselGettingStarted.cs region=NavBackColor}}
{{source=..\SamplesVB\Carousel\CarouselGettingStarted.vb region=NavBackColor}}

````C#
radCarousel1.ButtonNext.ButtonFillElement.BackColor = ColorTranslator.FromHtml("#91c930");
radCarousel1.ButtonPrevious.ButtonFillElement.BackColor = ColorTranslator.FromHtml("#91c930");

````
````VB.NET
RadCarousel1.ButtonNext.ButtonFillElement.BackColor = ColorTranslator.FromHtml("#91c930")
RadCarousel1.ButtonPrevious.ButtonFillElement.BackColor = ColorTranslator.FromHtml("#91c930")

````

{{endregion}}


>caption Figure 2: Navigation Buttons BackColor Changed.

![carousel-customize-appearance002](images/carousel-customize-appearance002.png)


# See Also

 * [RadCarousel Properties]({%slug winforms/carousel/properties%})
 * [Working with items]({%slug  winforms/carousel/using-radcarousel/carousel-items%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
 * [Carousel Path]({%slug winforms/carousel/using-radcarousel/carousel-path%})
