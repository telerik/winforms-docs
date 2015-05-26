---
title: Performance Considerations
page_title: Performance Considerations | UI for WinForms Documentation
description: Performance Considerations
slug: winforms/carousel/using-radcarousel/performance-considerations
tags: performance,considerations
published: True
position: 4
---

# Performance Considerations



## 

RadCarousel is a dynamic control, which utilizes a lot of animations in order to bring rich interactivity. Because of this, there are a few performance considerations that you have to keep in mind when working with the control:

1. __Size of the images__ that you are using in the carousel items. Avoid large images, because they have a performance penalty on the animations. Here is a blog post where the author seems to have implemented a method that shows exactly how to manipulate large images:[http://blog.justinholton.com/post/Create-a-Scaled-GDI-Thumbnail-(Constrain-Proportions).aspx](http://blog.justinholton.com/post/Create-a-Scaled-GDI-Thumbnail-%28Constrain-Proportions%29.aspx)

1. __Item Reflections__ are calculated dynamically, and impact performance. If you are using reflections, try setting the __ItemReflectionPercentage__property to a lower value (even zero) to see whether this helps. 

1. __Transparent background__. Consider turning off transparency (if your carousel is set with a transparent background) by setting a Carousel background image that mixes well with the form background.A very good example that demonstrates the RadCarousel with a well-mixed background is located in the Quck Start Framework under __RadCarousel__-> Music Library.

1. __Number of items__that you have in the carousel. Generally speaking, having more than 10 items will slow it down, especially if some of the above items are true.
