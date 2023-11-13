---
title: Infinite Scrolling
page_title: Infinite Scrolling - WinForms SlideView Control
description: This article shows the infinite scrolling of SlideView control.
slug: slideview-infinite-scrolling
tags: slideview, scrolling
published: True
position: 8
---

# Infinite Scrolling

By default, when the user scrolls to the last slideview item the navigation button looks disabled and it can not be clicked. This behavior can be changed through the **IsInfiniteScrollingEnabled** property.  When **IsInfiniteScrollingEnabled** property is enabled it allows infinite scrolling from last slideview item back to first item automatically and the same in vice versa.


#### Enable Infinite Scrolling

{{source=..\SamplesCS\SlideView\GettingStartedGallery.cs region=EnableInfiniteScrolling}} 
{{source=..\SamplesCS\SlideView\GettingStartedGallery.vb region=EnableInfiniteScrolling}}

````C#
this.radSlideView1.IsInfiniteScrollingEnabled = true;

````
````VB.NET
Me.radSlideView1.IsInfiniteScrollingEnabled = True

```` 


![RadSlideView Infinite Scrolling](images/slideview-infinite-scrolling.gif)

## See Also

* [Getting Started]({%slug slideview-getting-started%})
* [Structure]({%slug slideview-structure%})
* [Structure]({%slug slideview-navigation-buttons%})