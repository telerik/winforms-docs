---
title: Structure
page_title: Structure | RadWaitingBar
description: RadWaitingBar is designed to indicate that a long-running operation with indeterminate  length is undergoing.
slug: winforms/track-and-status-controls/waitingbar/structure
tags: control,element,structure
published: True
position: 1
previous_url: track-and-status-controls-waitingbar-structure, track-and-status-controls-waitingbar-control-element-structure
---

# Structure

>caption Fig.1 RadWaitingBar's elements hierarchy

![track-and-status-controls-waitingbar-structur 001](images/track-and-status-controls-waitingbar-structure001.png)

 1. __WaitingBarIndicatorElement__
 2. __WaitingBarTextElement__
 3. __WaitingBarSeparatorElement__


>caption Fig.2 RadWaitingBar's structure

![track-and-status-controls-waitingbar-structure 002](images/track-and-status-controls-waitingbar-structure002.png)



The __RadWaitingBarElement__ represents the entire __RadWaitingBar__ control. Any settings you make at this level will be inherited by all elements further down in the tree. The __WaitingBarContentElement__ wraps up the layout logic of the waiting bar and arranges the waiting indicators, the separator element, and the text element. The __WaitingBarSeparatorElement__ covers the __WaitingBarContentElement__’s area completely with a customizable stripe-pattern, hiding the waiting indicators. Stretched in the __WaitingBarContentElement__, the __WaitingBarTextElement__ displays the text of the __RadWaitingBar__. By default, __RadWaitingBar__ comprises two instances of __WaitingBarIndicatorElements__ which represent the control indicators. Each __WaitingBarIndicatorElement__ contains a __WaitingBarSeparatorElement__ in order to allow the waiting indicators to support dash style.   

# See Also

* [Design Time]({%slug winforms/track-and-status-controls/wiating-bar/design-time%})
* [Getting Started]({%slug winforms/track-and-status-controls/waitingbar/getting-started%})	
   
