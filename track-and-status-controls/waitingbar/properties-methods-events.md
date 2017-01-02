---
title: Properties, Methods and Events
page_title: Properties and Methods | RadWaitingBar
description: RadWaitingBar is designed to indicate that a long-running operation with indeterminate  length is undergoing.
slug: winforms/track-and-status-controls/waitingbar/properties-methods-events
tags: properties,and,methods,events
published: True
position: 6
previous_url: track-and-status-controls-waitingbar-programming-radwaitingbar
---

# Properties  

|Property|Description|Result|
|----|----|----|
|__Image__, __ImageKey__ and __ImageIndex__|Allows you manipulate the image displayed in the waiting indicators.|![track-and-status-controls-waitingbar-properties-methods-events 001](images/track-and-status-controls-waitingbar-properties-methods-events001.gif)|
|__IsWaiting__|Indicates whether the __RadWaitingBar__ is currently waiting.||
|__ShowText__|Indicates whether the text in __RadWaitingBar__ is displayed. By default, the text of __RadWaitingBar__ is not displayed. To show it, set the property to *true*. |![track-and-status-controls-waitingbar-properties-methods-events 002](images/track-and-status-controls-waitingbar-properties-methods-events002.gif)|
|__StretchIndicatorsHorizontally__|Indicates whether the waiting indicators are stretched horizontally, so that their width equals the available width of the parent element.|![track-and-status-controls-waitingbar-properties-methods-events 003](images/track-and-status-controls-waitingbar-properties-methods-events003.png) ![track-and-status-controls-waitingbar-properties-methods-events 004](images/track-and-status-controls-waitingbar-properties-methods-events004.png)|
| __StretchIndicatorsVertically__|Indicates whether the waiting indicators are stretched vertically, so that their height equals the available height of the parent element.|![track-and-status-controls-waitingbar-properties-methods-events 005](images/track-and-status-controls-waitingbar-properties-methods-events005.png) ![track-and-status-controls-waitingbar-properties-methods-events 006](images/track-and-status-controls-waitingbar-properties-methods-events006.png)|
|__Orientation__|The property is set to *Horizontal* when the waiting indicator moves horizontally, i.e. the __WaitingDirection__ property is set to *Left* or *Right*. The property is set to *Vertical* when the waiting indicator moves vertically, i.e. the __WaitingDirection__ property is set to *Top* or *Bottom*.|![track-and-status-controls-waitingbar-properties-methods-events 007](images/track-and-status-controls-waitingbar-properties-methods-events007.gif) ![track-and-status-controls-waitingbar-properties-methods-events 008](images/track-and-status-controls-waitingbar-properties-methods-events008.gif)|
|__WaitingDirection__|The property indicates the direction of indicators’ movement.<br> *Right*: the indicators move from left to right;<br> *Left*: the indicators move from right to left;<br> *Top*: the indicators move from bottom to top;<br> *Bottom*: the indicators move from top to bottom;<br>Note that setting __WaitingDirection__ does not change the size of the control. This implies that when you set the property to *Bottom* or *Top*, you will need to resize the __RadWaitingBar__ appropriately, i.e. the control height should be larger than its width. Changing the __WaitingDirection__ property affects also the values of the __StretchIndicatorsVertically__ and the __StretchIndicatorsHorizontally__, unless a local value is assigned to either of the two properties. For example, when the __WaitingDirection__ is *Top* or *Bottom*, the __StretchIndicatorsVertically__ is set to *false* and the __StretchIndicatorsHorizontally__ is set to *true* automatically. When the __WaitingDirection__ is *Right* or *Left*, the __StretchIndicatorsVertically__ is set to *true* and the __StretchIndicatorsHorizontally__ is set to *false*.|![track-and-status-controls-waitingbar-properties-methods-events 009](images/track-and-status-controls-waitingbar-properties-methods-events009.gif) ![track-and-status-controls-waitingbar-properties-methods-events 010](images/track-and-status-controls-waitingbar-properties-methods-events010.gif) ![track-and-status-controls-waitingbar-properties-methods-events 011](images/track-and-status-controls-waitingbar-properties-methods-events011.gif)![track-and-status-controls-waitingbar-properties-methods-events 012](images/track-and-status-controls-waitingbar-properties-methods-events012.gif)|
|__WaitingIndicatorSize__|The property allows you to set the size of the of the waiting indicators|![track-and-status-controls-waitingbar-properties-methods-events 013](images/track-and-status-controls-waitingbar-properties-methods-events013.gif)|
| __WaitingIndicatorWidth__|The property is obsolete. Currently, it sets the WaitingIndicatorSize.__Width__||
|__WaitingSpeed__|The property sets the speed of the animation. The higher the __WaitingSpeed__ is, the faster the waiting indicators move. __WaitingSpeed__ possible values range from *0* to *100*, where *1* sets the slowest indicator and *100* results in the fastest indicator. If the __WaitingSpeed__ is set to *0*,  the __WaitingStopped__ event is raised and the waiting process terminates. Then, if the __WaitingSpeed__ is set to a value greater than *0*, the __WaitingStarted__ event is raised and the waiting animation continues automatically.|![track-and-status-controls-waitingbar-properties-methods-events 014](images/track-and-status-controls-waitingbar-properties-methods-events014.gif)|
|__WaitingStep__|Sets the number of pixels the waiting indicators move during each step of the waiting animation process. If the __WaitingStep__ is set to *0*, the __WaitingStopped__ event is raised and the waiting process terminates. Then, if the __WaitingStep__ is set to a value greater than *0*, the __WaitingStarted__ event raises and the waiting animation continues automatically.|![track-and-status-controls-waitingbar-properties-methods-events 015](images/track-and-status-controls-waitingbar-properties-methods-events015.gif)|
|__WaitingStyle__|Sets the style of __RadWaitingBar__. Read more here: [Waiting Styles]({%slug winforms/track-and-status-controls/waiting-styles%})||
|__AssociatedControl__|Specifies the associated control.||

# Methods

|Method|Description|
|----|----|
|__StartWaiting__()|Starts the animation.|
|__StopWaiting__()|Stops the animation.|
|__ResetWaiting__()|Moves the waiting indicators to their initial position. Resetting the animation after the waiting process has been started will not stop the animation. Respectively, resetting the animation after the waiting process has been stopped will not start the animation.|

# Events

|Event|Description|
|----|----|
|__WaitingStarted__|Fires when the control starts waiting.|
|__WaitingStopped__|Fires when the control stops waiting.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radwaitingbar.htm)	
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radwaitingbar.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radwaitingbar.htm)	
