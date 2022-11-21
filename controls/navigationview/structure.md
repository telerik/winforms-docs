---
title: Structure
page_title: Structure - RadNavigationView
description: Get familiar with the internal elements structure of RadNavigationView.   
slug: navigationview-structure
tags: navigationview, structure
published: True
position: 1 
---

# Structure

This article will show the internal elements structure of RadNavigationView.

>caption Figure 1: RadNavigationView's elements hierarchy

![navigationview-structure 001](images/navigationview-structure001.png)

>caption Figure 2: RadNavigationView's structure

![navigationview-structure 002](images/navigationview-structure002.png)

**RadPageViewNavigationViewElement** is the main element of RadNavigationView. It contains:

* **NavigationViewHeaderElement** - represents the header element associated with the currently selected page.
* **HamburgerButtonElement** - represents the button that is responsible for expanding/collapsing.
* **NavigationViewItemContainer** - contains the RadPageViewNavigationViewItems.
* **RadPageViewContentAreaElement** - represents the content area associated with the selected page.


# See Also

* [Navigation View]({%slug winforms/pageview/navigationview%})	 
* [Getting Started]({%slug navigationview-getting-started%})



