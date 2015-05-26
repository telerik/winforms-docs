---
title: Properties and Methods
page_title: Properties and Methods | UI for WinForms Documentation
description: Properties and Methods
slug: winforms/track-and-status-controls/waitingbar/properties-and-methods
tags: properties,and,methods
published: True
position: 1
---

# Properties and Methods



## 

Significant RadWaitingBar properties are:
      


* 

__Image__, __ImageKey__, and __ImageIndex__: these properties let you manipulate the image displayed in the waiting indicators.

* 

__IsWaiting__: the property indicates whether the RadWaitingBar is currently waiting.

* 

__ShowText__: by default the text of RadWaitingBar is not displayed. To show it, set the property to true. 

* 

__StretchIndicatorsHorizontally__: indicates whether the waiting indicators are stretched horizontally, so that their width equals the available width of the parent element.

* 

__StretchIndicatorsVertically__: indicates whether the waiting indicators are stretched vertically, so that their height equals the available height of the parent element.

* 

__Orientation__: the property is set to __Horizontal__ when the waiting indicator
  moves horizontally, i.e. the __WaitingDirection__ property is set to __Left__ or __Right__. 
  The property is set to __Vertical__ when the waiting indicator moves vertically, 
  i.e. the __WaitingDirection__ property is set to __Top__ or __Bottom__.

* 

__WaitingDirection__: the property indicates the direction of indicators’ movement.
		

* 

When set to __Right__ the indicators move from left to right;

* 

When set to __Left__ the indicators move from right to left;

* 

When set to __Top__ the indicators move from bottom to top;

* 

When set to __Bottom__ the indicators move from top to bottom;

* 

Note that setting __WaitingDirection__ does not change the size of the control. This implies that when you set the property to __Bottom__ or __Top__, 
	you will need to resize the RadWaitingBar appropriately, i.e. the control height should be larger than its width.

* 

Changing the __WaitingDirection__ property affects also 
	the values of the __StretchIndicatorsVertically__ and the 
	__StretchIndicatorsHorizontally__, unless a local value is
	assigned to either of the two properties. For example, when the __WaitingDirection__ 
	is __Top__ or __Bottom__, the 
	__StretchIndicatorsVertically__ is set to false and 
	the __StretchIndicatorsHorizontally__ is set to true automatically. 
	When the WaitingDirection is Right or Left, the __StretchIndicatorsVertically__
	is set to true and the __StretchIndicatorsHorizontally__ is set to false.

* 

__WaitingIndicatorSize__: the property allows you to set the size of the of the waiting indicators

* 

__WaitingIndicatorWidth__: the property is obsolete; currently, it sets the WaitingIndicatorSize.Width

* 

__WaitingSpeed__: the property sets the speed of the animation. 
		The higher the __WaitingSpeed__, the faster the waiting indicators move.
		__WaitingSpeed__ possible values range from 0 to 100, where 1 sets the slowest 
		indicator and 100 results in the fastest indicator.
		

* 

If the __WaitingSpeed__ is set to 0, 
		  the __WaitingStopped__ event is raised and the waiting process terminates.
		  Then, if the __WaitingSpeed__ is set to a value greater than 0,
		  the __WaitingStarted__ event is raised and the waiting animation 
		  continues automatically.

* 

__WaitingStep__: sets the number of pixels the waiting 
	indicators move during each step of the waiting animation process.
	

* 

If the __WaitingStep__ is set to 0,
 		 the __WaitingStopped__ event is raised and the waiting process terminates. 
 		 Then, if the WaitingStep is set to a value greater than 0, the __WaitingStarted__ 
 		 event raises and the waiting animation continues automatically.

* 

__WaitingStyle__: sets the style of RadWaitingBar. Currently, there are three modes supported:
		

* 

__Indeterminate__: mimics the indeterminate mode of the standard MS ProgressBar.

![track-and-status-controls-waitingbar-programming-radwaitingbar 002](images/track-and-status-controls-waitingbar-programming-radwaitingbar002.png)

* 

__Throbber__: moves one indicator in two directions: left and right when the RadWaitingBar is horizontal, and bottom and top when the control is vertical.

![track-and-status-controls-waitingbar-programming-radwaitingbar 003](images/track-and-status-controls-waitingbar-programming-radwaitingbar003.png)

* 

__Dash__: instead of indicators, the control moves smoothly a striped pattern in its active portion.

![track-and-status-controls-waitingbar-programming-radwaitingbar 001](images/track-and-status-controls-waitingbar-programming-radwaitingbar001.png)

In addition, three methods that control the waiting animation:



* 

The __StartWaiting__() method starts the animation

* 

The __StopWaiting__() method stops the animation

* 

The __ResetWaiting__() method moves the waiting indicators to their initial position.
   

* 

Resetting the animation after the waiting process has been started will not stop the animation. Respectively, resetting the animation after the waiting process has been stopped will not start the animation.
