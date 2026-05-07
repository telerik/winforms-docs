---
title: Peek Window
page_title: Peek Window - WinForms PageView Control
description: Get familiar with the design time options that the WinForms PageView offers.   
slug: pageview-peek-window
tags: pageview
published: True
position: 5
CTAControlName: PageView
---

# Peek Window 

RadPageView provides popup preview option for its elements when the mouse is over them. This functionality is disabled by default. To enable it, you can set the __EnablePeekPopup__ property to true.

![WinForms RadPageView Peek Window](images/pageview-peek-window001.png) 

<snippet id='pageview-peekwindow-enablepeekwindow-cs' />
<snippet id='pageview-peekwindow-enablepeekwindow-vb' />



To set a content for each peek window, we can use the __PeekPopupOpening__ event. In the event handler, we have access to the current hovered RadPageViewItem and depending on it, we can set the __Page.PeekPopupContent__ property. This property is of type __Control__. 

>The Peek Window will take the size of its content. This needs to be considered while using UserControl as a content of the Peek Window.

<snippet id='pageview-peekwindow-peekwindowevent_pageview-cs' />
<snippet id='pageview-peekwindow-peekwindowevent_pageview-vb' />



In the following image we can see the Peek Window content when it hosts a custom user control.

![WinForms RadPageView Peek Window Content](images/pageview-peek-window002.png) 

# See Also

* [Getting Started]({%slug winforms/pageview/getting-started%})
* [Design Time]({%slug winforms/pageview/design-time%})
* [Structure]({%slug winforms/pageview/architecture%})
 
        
