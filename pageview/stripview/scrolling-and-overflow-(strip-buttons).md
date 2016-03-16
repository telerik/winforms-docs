---
title: Scrolling and Overflow (strip buttons)
page_title: Scrolling and Overflow (strip buttons) | UI for WinForms Documentation
description: Scrolling and Overflow (strip buttons)
slug: winforms/pageview/stripview/scrolling-and-overflow-(strip-buttons)
tags: scrolling,and,overflow,(strip,buttons)
published: True
position: 1
previous_url: pageview-stripview-scrolling-and-overflow
---

# Scrolling and Overflow (strip buttons)



## 

The __StripButtons__ property of RadPageView in Strip View mode allows the user to scroll or get a drop-down list of the tabs that overflow the available space. There is also a close button which, when pressed, closes the currently selected page. The __StripButtons__ property is available at PadPageViewStripElement which can be accessed through the __ViewElement__ property when RadPageView is in Strip mode, for example:

#### Accessing the StripButtons property

{{source=..\SamplesCS\PageView\StripView.cs region=scrollingAndOverflow}} 
{{source=..\SamplesVB\PageView\StripView.vb region=scrollingAndOverflow}} 

````C#
RadPageViewStripElement stripElement = (RadPageViewStripElement)this.radPageView1.ViewElement;
stripElement.StripButtons = StripViewButtons.All;

````
````VB.NET
Dim stripElement As RadPageViewStripElement = DirectCast(Me.radPageView1.ViewElement, RadPageViewStripElement)
stripElement.StripButtons = StripViewButtons.All

````

{{endregion}} 


Strip mode of RadPageView supports the following __StripButtons__ modes:

* __All__. When this option is selected. RadPageView will display all the available strip buttons - *left scroll button, right scroll button, overflow button* and *close button:* <br>![](images/pageview-stripview-scrolling-and-overflow001.png) stripElement.StripButtons = StripViewButtons.All;

* __LeftScroll__. This option displays only the left scroll button:<br>![](images/pageview-stripview-scrolling-and-overflow002.png)

* __RightScroll__. This option displays only the right scroll button:<br>![](images/pageview-stripview-scrolling-and-overflow003.png)

* __Scroll__. Display both left and right scroll buttons:<br>![](images/pageview-stripview-scrolling-and-overflow004.png)

* __Close__. Displays only the close strip button.<br>![](images/pageview-stripview-scrolling-and-overflow005.png)

* __VS2005Style__: Displays both scroll buttons and the close button: <br>![](images/pageview-stripview-scrolling-and-overflow006.png)

* __ItemList__. Displays a drop-down button that invokes a drop-down list of the items:<br>![](images/pageview-stripview-scrolling-and-overflow007.png)

* __VS2008Style.__ Displays the item list drop-down button and the close button.<br>![](images/pageview-stripview-scrolling-and-overflow008.png)

* __None__. Displays no strip buttons:<br>![](images/pageview-stripview-scrolling-and-overflow009.png)
