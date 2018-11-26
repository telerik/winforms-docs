---
title: Indicator Elements
page_title: Indicator Elements | RadWaitingBar
description: RadWaitingBar is designed to indicate that a long-running operation with indeterminate  length is undergoing.
slug: winforms/track-and-status-controls/waitingbar/indicator-elements
tags: control,element,structure
published: True
position: 5
previous_url: track-and-status-controls-waitingbar-indicator-elements
---

# Indicator Elements

All indicators inherit from __BaseWaitingBarIndicatorElement__ and define their own implementation of the __Animate__ and __ResetAnimation__ methods. 

>caption Fig.1 WaitingBar indicators' hierarchy
>
![track-and-status-controls-waiting-bar-indicator-elements 012](images/track-and-status-controls-waiting-bar-indicator-elements014.png) 

* __BaseWaitingBarIndicatorElement__: Represents the base indicator element.
	* __ElementCount__: Controls how many elements will be displayed.
	
	![track-and-status-controls-waiting-bar-indicator-elements 012](images/track-and-status-controls-waiting-bar-indicator-elements013.gif) 
	
	* __ElementColor__: Gets or sets the color of the elements.
	
	![track-and-status-controls-waiting-bar-indicator-elements 015](images/track-and-status-controls-waiting-bar-indicator-elements015.gif)

	* __ElementColor2__: Gets or sets the secondary color of the elements.
	
	![track-and-status-controls-waiting-bar-indicator-elements 016](images/track-and-status-controls-waiting-bar-indicator-elements016.gif)

* __BaseRingWaitingBarIndicatorElement__: Represents the base ring indicator elements.
	* __InnerRadius__: Controls the inner radius.
	
	![track-and-status-controls-waiting-bar-indicator-elements 009](images/track-and-status-controls-waiting-bar-indicator-elements009.gif) 
	* __Radius__: Controls the radius.
	
	![track-and-status-controls-waiting-bar-indicator-elements 010](images/track-and-status-controls-waiting-bar-indicator-elements010.gif) 
	* __RotationDirection__: Determines the rotation direction.
		* *Clockwise*	 
		
			![track-and-status-controls-waiting-bar-indicator-elements 011](images/track-and-status-controls-waiting-bar-indicator-elements011.gif) 
		* *CounterClockwise*	
		
		 	![track-and-status-controls-waiting-bar-indicator-elements 012](images/track-and-status-controls-waiting-bar-indicator-elements012.gif) 

	* __ElementColor3__: Gets or sets the element back color3.
	
	![track-and-status-controls-waiting-bar-indicator-elements 017](images/track-and-status-controls-waiting-bar-indicator-elements017.gif)

	* __ElementColor4__: Gets or sets the element back color4.

	* __ElementGradientPercentage__: Gets or sets the element gradient percentage.
	![track-and-status-controls-waiting-bar-indicator-elements 018](images/track-and-status-controls-waiting-bar-indicator-elements018.gif)

	* __ElementGradientPercentage2__: Gets or sets the element gradient percentage.
	![track-and-status-controls-waiting-bar-indicator-elements 019](images/track-and-status-controls-waiting-bar-indicator-elements019.gif)

* __DotsLineWaitingBarIndicatorElement__: Represents accelerating dots moving in a line.

![track-and-status-controls-waiting-bar-indicator-elements 001](images/track-and-status-controls-waiting-bar-indicator-elements001.gif)

* __DotsRingWaitingBarIndicatorElement__: Represents accelerating dots moving in a ring.

![track-and-status-controls-waiting-bar-indicator-elements 002](images/track-and-status-controls-waiting-bar-indicator-elements002.gif)

* __DotsSpinnerWaitingBarIndicatorElement__: Represents accelerating dots like spinner.

![track-and-status-controls-waiting-bar-indicator-elements 003](images/track-and-status-controls-waiting-bar-indicator-elements003.gif)

* __FadingRingWaitingBarIndicatorElement__: Represents accelerating fading ring.

![track-and-status-controls-waiting-bar-indicator-elements 004](images/track-and-status-controls-waiting-bar-indicator-elements004.gif)

* __LineRingWaitingBarIndicatorElement__: Represents accelerating lines moving in a ring.

	![track-and-status-controls-waiting-bar-indicator-elements 005](images/track-and-status-controls-waiting-bar-indicator-elements005.gif) 

	* __LineThickness__: Controls how thick the lines are.
	
	![track-and-status-controls-waiting-bar-indicator-elements 008](images/track-and-status-controls-waiting-bar-indicator-elements008.gif) 

* __RotatingRingsWaitingBarIndicatorElement__: Represents rotating rings.

![track-and-status-controls-waiting-bar-indicator-elements 007](images/track-and-status-controls-waiting-bar-indicator-elements007.gif)

* __SegmentedRingWaitingBarIndicatorElement__: Represents accelerating segments moving in a ring.

![track-and-status-controls-waiting-bar-indicator-elements 006](images/track-and-status-controls-waiting-bar-indicator-elements006.gif)
   
# See Also

* [Structure]({%slug winforms/track-and-status-controls/waitingbar/structure%})	
* [Design Time]({%slug winforms/track-and-status-controls/wiating-bar/design-time%})
* [Getting Started]({%slug winforms/track-and-status-controls/waitingbar/getting-started%})	
* [Waiting Styles]({%slug winforms/track-and-status-controls/waiting-styles%})	
* [Properties, Methods and Events]({%slug winforms/track-and-status-controls/waitingbar/properties-methods-events%})	