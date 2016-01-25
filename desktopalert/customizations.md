---
title: Customizations
page_title: Customizations | UI for WinForms Documentation
description: Customizations
slug: winforms/desktopalert/customizations
tags: customizations
published: True
position: 2
previous_url: desktopalert-customizations
---

# Customizations
 
## Setting custom size
 
By default, RadDesktopAlert is initially shown with a predefined (default) size. You can, however, modify this size by using the __FixedSize__ property. If this property is set to a value different than empty size, this value will be considered as a size for the alert’s popup. This property can be set in the Visual Studio designer, as well as programmatically:

#### Setting FixedSize property 

{{source=..\SamplesCS\DesktopAlert\DesktopAlert1.cs region=fixedSize}} 
{{source=..\SamplesVB\DesktopAlert\DesktopAlert1.vb region=fixedSize}} 

````C#
this.radDesktopAlert1.FixedSize = new Size(200, 200);

````
````VB.NET
Me.radDesktopAlert1.FixedSize = New Size(200, 200)

````

{{endregion}} 

 
You can use this property to manually adjust the size of the alert’s popup so that you can ensure that your content is displayed properly on the screen.
 
## Defining the Alert’s Position on the Screen

You can define the position of the alert’s popup on the screen by using the __ScreenPosition__ property which accepts values from the *AlertScreenPosition* enumerator. There are six possible positions you can choose from: *TopLeft, TopCenter, TopRight, BottomLeft, BottomCenter, BottomRight.*

 
## Using the Caption Buttons
 

RadDesktopAlert has three caption buttons positioned at the top-right part of the alert’s popup: *CloseButton, PinButton and OptionsButton.* The *close* button closes the alert. The *pin* button can be used to pin the alert on the screen and prevent it from being closed automatically. The *options* button displays a drop-down menu with user-defined content. You can use the __OptionItems__ collection of RadDesktopAlert to modify the content of its drop-down menu. You can also use the __ShowCloseButton__, __ShowPinButton__ and __ShowOptionsButton__ properties to control the visibility of the caption buttons.
 
## Moving the RadDesktopAlert

__CanMove__

## Using the AutoClose and AutoCloseDelay Properties

RadDesktopAlert can be adjusted to automatically close after a certain amount of time. To disable this behavior, you should set the __AutoClose__ property to false. By default, the alert will be automatically closed in 10 seconds. If you wish to modify the auto-close delay, you can use the __AutoCloseDelay__ property. This property accepts the amount of time in seconds which should pass before the alert’s popup is automatically closed.
 
## Using Alert Animations
 
For better user experience, you can animate the desktop alert when it is shown on the screen. To do so, you should first enable the animations by setting the __PopupAnimation__ property to *true.*

You can then use the __PopupAnimationFrames__, __PopupAnimationDirection__ and __PopupAnimationEasing__ properties to fine-tune the animation.

The __PopupAnimationFrames__ defines the amount of frames used to animate the alert’s popup. By increasing the amount of frames, you will increase the length of the animation and vice-versa.

The __PopupAnimationDirection__ property defines how the alert’s popup is animated in terms of direction. By default, this property is set to *Down* which means that it will appear on its initial location and will extend to its full height when the animation finishes. If you set this property to *Up*, the alert’s popup will be offset in vertical direction by its height and its height and vertical location will be animated so that it appears on its initial position. The *Left* and *Right* animation types animate the alert’s popup from left to right and right to left accordingly by preserving its height.

The __PopupAnimationEasing__ property allows for different animation easing effects which are used to start and finish the animation.
 
## Using Fade Animations
  
You can apply fade-in or fade-out animations by using the __FadeAnimationType__ property which is initially set to *FadeIn*,*FadeOut*. This property accepts values from the *FadeAnimationType* enum which also allows for combinations between its values.

You can also use the __FadeAnimationFrames__ property to define the amount of frames used to animate the opacity of the alert’s popup. By increasing the amount of frames you will increase the duration of the fade animation.
 
## Adjusting the RadDesktopAlert’s Opacity 

The RadDesktopAlert appears on the screen with initial opacity of 80%. If you wish to modify this behavior, you can use the __Opacity__ property which accepts values in the range of 0.0 – 1.0 representing the alert’s opacity in percents.
	 
>note The opacity of the RadDesktopAlert is changed to 100% when you hover it with the mouse cursor and reverted to its initial value when the mouse leaves its bounds.
>
 
## Displaying Multiple RadDesktopAlert Instances on the Screen
 
You can easily display multiple alerts on the screen thanks to the DesktopAlertManager which takes care to calculate the alerts’ location so that they do not overlap. When shown on the screen, an alert is first registered in the DesktopAlertManager which calculates its location based on the ScreenPosition setting and the other desktop alerts shown on the screen having the same ScreenPosition setting. In this way, alerts with the same screen position are stacked on the screen in the order of their appearance. When an alert is closed, all related alerts visible are automatically relocated to optimally utilize the screen estate.

## Multiple Screens Scenarios

RadDesktopAlert is designed to support multi-monitor environments. Currently, you can set the active monitor and all desktop alerts will be displayed on it. To do so, you need to specify which of your screens will be used as an active screen when positioning desktop alert popups. To do so, you can use the SetActiveScreen() method of the DesktopAlertManager class. This way all desktop alerts will be positioned on the specified screen regarding their __ScreenPosition__.

>note When calling the SetActiveScreen() method all currently visible alerts are relocated to the newly specified screen whereby their ScreenPosition setting is considered.
>



