---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms RadNotifyIcon Control
description: Get familiar with the public API that WinForms RadNotifyIcon offers.   
slug: radnotifyicon-properties-methods-events
tags: radnotifyicon
published: True
position: 4 
CTAControlName: RadNotifyIcon
---

# Properties, Methods and Events for RadNotifyIcon


## RadNotifyIcon's Properties

|Property|Description|
|----|----|
|**GuidItem**|Gets or sets the Guid id that will be used to identify the notify icon when sending messages to it.|
|**ThemeName**|Gets or sets theme name.|
|**TrayIcon**|Gets or sets the icon to be displayed in the windows notification area.|
|**BalloonTitle**|Gets or sets the title of the balloon tip.|
|**BalloonText**|Gets or sets the text of the balloon tip.|
|**BalloonIcon**|Gets or sets the icon of the balloon tip.|
|**TrayContextMenu**|Gets or sets the context menu.|
|**PopupContent**|Gets or sets the control that is set as the content of the the popup which the notify icon shows.|
|**ContextMenuActivationMouseEvent**|Gets or sets the mouse action that must be performed over the notify icon to show the **TrayContextMenu**. The possible user actions can be *LeftClick*, *RightClick*, *MiddleClick*, *LeftDoubleClick*, *RightDoubleClick*, *MiddleDoubleClick*, or *All*. Default value is *RightClick*.|
|**PopupActivationMouseEvent**|Gets or sets the mouse action that must be performed over the notify icon to show a popup with **PopupContent**. The possible user actions can be *LeftClick*, *RightClick*, *MiddleClick*, *LeftDoubleClick*, *RightDoubleClick*, *MiddleDoubleClick*, or *All*. Default value is *LeftClick*.|
|**TooltipText**|Gets or sets the content of the tooltip that will be shown when the mouse hovers over the notify icon.|
|**PopupShowDuration**|Gets or sets the amount of time in milliseconds after which the popup will begin to close automatically.|
|**IsPopupOpen**|Gets a value indicating whether a popup is open.|
|**PopupShowAnimation**|Gets or sets the animation played when opening the popup. Animations can be *Fade*, *Slide*, or *None*. |
|**PopupHideAnimation**|Gets or sets the animation played when hiding the popup.|
|**ShowTrayIcon**|Gets or sets whether the icon is visible in the notification area.|
|**PopupCloseMode**|Gets or sets the mode in which the popup closes. Modes can be *Deactivate*, *TimeOut*, or *None*.|


## RadNotifyIcon's Events

|Event|Description|
|----|----|
|**TrayIconMouseDown**|Occurs when the user presses a mouse button over the notify icon.|
|**TrayIconMouseUp**|Occurs when the user releases a mouse button over the notify icon.|
|**TrayIconMouseClick**|Occurs when the user clicks on the notify icon.|
|**TrayIconMouseDoubleClick**|Occurs when the user double clicks on the notify icon.|
|**TrayIconMouseMove**|Occurs when the user moves the mouse over the notify icon.|
|**BalloonTipShown**|Occurs when a balloon tip is shown.|
|**BalloonTipClosed**|Occurs when a balloon tip is closed.|
|**BalloonTipClicked**|Occurs when the user clicks on a balloon tip.|
|**TrayContextMenuOpening**|Occurs before the context menu of the notify icon is opened.|
|**TrayContextMenuOpened**|Occurs when the context menu of the notify icon is opened.|
|**PopupOpening**|Occurs before the popup of the notify icon is opened.|
|**PopupOpened**|Occurs when the popup of the notify icon is opened.|
|**Selected**|Occurs when the user selects a **RadNotifyIcon** in the Windows notification area.|


## RadNotifyIcon's Methods

|Method|Description|
|----|----|
|**GetUserNotificationState**|Checks the state of the computer for the current user to determine whether sending a notification is appropriate.|
|**AddIcon**|Adds the notify icon to the Windows notification area.|
|**UpdateIcon**|Sends an update message to the notify icon.|
|**RemoveIcon**|Removes the icon from the Windows notification area.|
|**ShowBalloonTip**|Shows a balloon tip.|
|**HideBalloonTip**|Hides the balloon tip.|
|**ShowPopup**|Shows the popup at certain location.|
|**HidePopup**|Hides the popup.|


# See Also
	
* [Overview]({%slug notifyicon-overview%})	
* [Getting Started]({%slug notifyicon-getting-started%})
* [Design Time]({%slug notifyicon-design-time%})	
    