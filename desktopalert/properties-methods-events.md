---
title: Properties, Methods, Events
page_title: Properties, Methods, Events | UI for WinForms Documentation
description: RadDesktopAlert component displays a small pop-up window on the screen to notify the user that a specific event has occurred in the application. 
slug: winforms/desktopalert/properties,methods,events
tags: desktopalert, structure
published: True
position: 4
previous_url: desktopalert-customizations
---

# Properties

|Property|Description|
|----|----|
|RightToLeft|Gets or sets a value indicating whether control's elements are aligned to support locales using right-to-left fonts.|
|PlaySound|Gets or sets a Boolean value determining whether a sound is played when the alert's pop up is shown.|
|SoundToPlay|Gets or sets the sound played when the alert's pop up is shown.|
|Opacity|Gets or sets the initial opacity of the alert's pop up.|
|ShowOptionsButton|Gets or sets a Boolean value determining whether the options button is shown.|
|ShowPinButton|Gets or sets a Boolean value determining whether the pin button is shown.|
|ShowCloseButton|Gets or sets a Boolean value determining whether the close button is shown.|
|IsPinned|Gets or sets a Boolean value determining whether the alert's pop up will be pinned on the screen. If pinned, the alert's pop up will not be automatically closed upon mouse click outside its bounds or if the __AutoClose__ property is set to *true*.|
|CanMove|Gets or sets a Boolean value determining whether the pop up can be moved by dragging the caption grip.|
|PopupAnimation|Gets or sets a Boolean value determining whether the alert's pop up will be animated.|
|PopupAnimationDirection|Gets or sets a value determining the direction of the alert's pop up animation.|
|PopupAnimationFrames|Gets or sets the count of the alert's drop-down animation frames.|
|PopupAnimationEasing|Gets or sets the type of the drop-down animation easing.|
|FadeAnimationType|Gets or sets a value from the __FadeAnimationType__ enumerator that determines the type of fade animation performed when the alert's pop up is opened/closed|
|FadeAnimationSpeed|Gets or sets the interval in milliseconds between two animation frames.|
|FadeAnimationFrames|Gets or sets the count of animation frames for the fade animation.|
|AutoClose|Gets or sets a Boolean value determining whether the alert's pop up is automatically closed.|
|AutoCloseDelay|Gets or sets the amount of time in seconds after which the alert will be automatically closed.|
|ScreenPosition|Gets or sets the position of the alert pop up on the working area of the active screen.|
|FixedSize|Gets or sets the fixed size for the alert's pop up. If the value is Size.Empty, the size of the pop up is dynamically adjusted according to its content.|
|ContentImage|Gets or sets the content image of the alert.|
|ContentText|Gets or sets the alert's content text. This text can be HTML formatted for better appearance.|
|CaptionText|Gets or sets the alert's caption text.|
|ButtonItems|Gets the collection that holds the button items added to the alert.|
|OptionItems|Gets the collection that holds the option items added to the alert's options button.|
|Popup|Gets an instance of the __DesktopAlertPopup__ that represents the pop up of the desktop alert.|


# Methods

|Method|Description|
|----|----|
|Show|Displays the alert pop up on the screen at the specified location.|
|Hide|Hides the alert pop up from the screen.|
|ResetLocationModifier|Resets the explicit location modifier. In other words, if the user has modified the location of the alert's pop up, the __DesktopAlertManager__ will not consider it when rearranging the visible alerts. This method will reset the explicit location modifier and thus the __DesktopAlertManager__ will continue managing the location of the alert according to its location settings.|

# Events

|Event|Description|
|----|----|
|Opening|Fires when the alert's pop up is about to be opened. The opening action can be canceled by modifying the arguments of this event.|
|Opened|Fires when the alert's pop up was opened.|
|Closing|Fires when the alert's pop up is about to be closed. The closing action can be canceled by modifying the arguments of this event.|
|Closed|Fires when the alert's pop up was closed.|

 
## Displaying Multiple RadDesktopAlert Instances on the Screen
 
You can easily display multiple alerts on the screen thanks to the __DesktopAlertManager__ which takes care to calculate the alerts’ location so that they do not overlap. When shown on the screen, an alert is first registered in the __DesktopAlertManager__ which calculates its location based on the __ScreenPosition__ setting and the other desktop alerts shown on the screen having the same __ScreenPosition__ setting. In this way, alerts with the same screen position are stacked on the screen in the order of their appearance. When an alert is closed, all related alerts visible are automatically relocated to optimally utilize the screen estate.

## Multiple Screens Scenarios

__RadDesktopAlert__ is designed to support multi-monitor environments. Currently, you can set the active monitor and all desktop alerts will be displayed on it. To do so, you need to specify which of your screens will be used as an active screen when positioning desktop alert pop ups. To do so, you can use the __SetActiveScreen__ method of the __DesktopAlertManager__ class. This way all desktop alerts will be positioned on the specified screen regarding their __ScreenPosition__.

>note When calling the __SetActiveScreen__ method all currently visible alerts are relocated to the newly specified screen whereby their __ScreenPosition__ setting is considered.
>



