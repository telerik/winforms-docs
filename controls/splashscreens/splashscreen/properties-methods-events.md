---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - SplashScreen
description: Get familiar with the public API of the WinForms SplashScreen.
slug: properties-methods-events
tags: splash, screen
published: True
position: 4  
---

## SplashScreen's Properties

|Property|Description|
|----|----|
|**TopMost**|Gets or sets a value indicating whether the splash form will be top most.|
|**StartPosition**|Gets or sets the screen start position. The SplashStartPosition can be *Manual* or *CenterScreen*. When *Manual* the position of the form is determined by the RadSplashScreenSettings.Location property. When *CenterScreen* the splash form is centered on the current display, and has dimensions specified in the RadSplashScreenSettings's Size property.|
|**Location**| Gets or sets the desktop location when the  StartPosition is SplashStartPosition.Manual.|

## SplashScreen's Methods

|Property|Description|
|----|----|
|**CreateFrom**| Creates a splash form (RadSplashScreenForm).|
|**Show(RadSplashScreenSettings settings)**|Shows a splash form with the default splash control.|
|**Show(Type contentType)**|Shows a splash form with given content type.|
|**Close**|Closes the splash form.|
|**SetSize(int width, int height)**|Sets the size of the splash form.|
|**SetImage**|Sets the main image if the displayed control is RadSplashScreenControl.|
|**SetContent(string text)**|Sets the main text if the displayed control is RadSplashScreenControl.|
|**SetState(SplashScreenProgressIndicatorState newState)**|Sets the progress indicator state if the displayed control is RadSplashScreenControl. *Determinate* - Defines a determined state. The progress is indicated by a RadProgressBarElement. *Indeterminate* - Defines an undetermined state. The RadWaitingBarElement is used to express the undetermined progress. *None* - The progress indicators are not displayed.|
|**SetProgress(int progress)**|Sets the progress percentage if the displayed control is RadSplashScreenControl and the state is determinate.|
|**SetFooter**|Sets the footer text if the displayed control is RadSplashScreenControl and the state is determinate.|
|**SetIcon(Image footerIcon)**|Sets the footer icon if the displayed control is RadSplashScreenControl and the state is determinate.|

>caution Note that the SplashScreen is created and shown in a separate System.Threading.Threads and it is required to use BeginInvoke/Invoke when accessing it from the main UI thread in order to prevent cross-thread exceptions. That is why the static RadSplashScreenManager offers similar methods to update the content in the splash screen in a safe way. Feel free to use the RadSplashScreenManager's when it is required to update the content of the splash in the main UI thread.

## RadSplashScreenManager's Events

|Event|Description|
|----|----|
|**ContentCreated**|Occurs when the content control has been created.| 
|**FormLoad**|Occurs when the splash form has been loaded.|
|**FormShown**|Occurs when the splash form is shown.|

>caution Note that the events are created on a separate __System.Threading.Threads__ and it is required to use BeginInvoke/Invoke when accessing it in order to prevent cross-thread exceptions. Also, these events are static and you need to explicitly unsubscribe from them in order to prevent memory leaks. Each object that is subscribed to one of these events cannot be garbage collected.

# See Also

* [Structure]({%slug splashscreen-structure%}) 
* [Getting Started]({%slug splashscreen-getting-started%}) 
 
        
