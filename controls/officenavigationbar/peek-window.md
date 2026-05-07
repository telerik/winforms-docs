---
title: Peek Window
page_title: Peek Window - WinForms OfficeNavigationBar Control
description: Get familiar with the design time options that the WinForms OfficeNavigationBar offers.   
slug: officenavigationbar-peek-window
tags: officenavigationbar
published: True
position: 5
CTAControlName: OfficeNavigationBar
---

# Peek Window 

RadOfficeNavigationBar provides popup preview option for its elements when the mouse is over a them. This functionality is disabled by default. To enable it, you can set the __EnablePeekPopup__ property to true.

![WinForms RadOfficeNavigationBar Peek Window](images/officenavigationbar-peek-window001.png) 

<snippet id='officenavigationbar-officenavigationbargettingstarted-peekwindow-cs' />
<snippet id='officenavigationbar-officenavigationbargettingstarted-peekwindow-vb' />



To set a content for each peek window, we can use the __PeekPopupOpening__ event. In the event handler, we have access to the current hovered RadPageViewItem and depending on it, we can set the __Page.PeekPopupContent__ property. This property is of type __Control__.

>The Peek Window will take the size of its content. This needs to be considered while using UserControl as a content of the Peek Window.

<snippet id='officenavigationbar-officenavigationbargettingstarted-peekwindowevent-cs' />
<snippet id='officenavigationbar-officenavigationbargettingstarted-peekwindowevent-vb' />



In the following image we can see the Peek Window content when it hosts a custom user control.

![WinForms RadOfficeNavigationBar Custom Peek Window](images/officenavigationbar-peek-window002.png) 

# See Also

* [Getting Started]({%slug officenavigationbar-getting-started%})
* [Design Time]({%slug officenavigationbar-design-time%})
* [Structure]({%slug officenavigationbar-structure%})
 
        
