---
title: Infinite Scrolling
page_title: Infinite Scrolling - WinForms PipsPager Control
description: This article shows the infinite scrolling of the RadPipsPager control.
slug: pipspager-infinite-scrolling
tags: pipspager, scrolling
published: True
position: 8
---

# Infinite Scrolling

By default, when the user scrolls to the last pip the navigation button looks disabled and it can not be clicked. This behavior can be changed through the **IsInfiniteScrollingEnabled** property.  When the **IsInfiniteScrollingEnabled** property is enabled it allows infinite scrolling from the last pip to the first pip automatically and the same in vice versa.

#### Enable Infinite Scrolling

````C#
this.radPipsPager1.IsInfiniteScrollingEnabled = true;

````
````VB.NET
Me.radPipsPager1.IsInfiniteScrollingEnabled = True

```` 

![RadPipsPager Infinite Scrolling](images/pipspager-infinite-scrolling.gif)

## See Also

* [Getting Started]({%slug pipspager-getting-started%})
* [Structure]({%slug pipspager-structure%})
* [Structure]({%slug pipspager-orientation%})
