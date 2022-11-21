---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - Toast Notification
description: RadToastNotificationManager is built on the Windows' notification system, making it easier for our customers to create and manage notifications.  
slug: toast-notification-properties-methods-events
tags: toast notification
published: True
position: 5 
CTAControlName: ToastNotification
---

## Properties, Methods and Events for RadToastNotificationManager

### Properties

|Property|Description|
|----|----|
|ToastNotifications|A collection with initialized toast notifications.|

### Methods

|Method|Description|
|----|----|
|Unregister()|Unregister a registered manager.|
|Unregister(string shortcutName, string aumid)|Unregister a registered manager, passing the name of the shortcut that will be removed and the unique id of the application.|
|Unregister<T>() where T : RadToastNotificationActivatorBase|Unregister a registered manager with a custom activator.|
|Unregister<T>(string shortcutName, string aumid) where T : RadToastNotificationActivatorBase|Unregister a registered manager with a custom activator, passing the name of the shortcut that will be removed and the unique id of the application.|
|ShowNotification(int index)|Shows a notification from ToastNotifications collection using its index.|
|ShowNotification(string name)|Shows a notification from ToastNotifications collection using its name.|
|ShowNotification(RadToastNotification radToastNotification)|Shows a given toast notification.|
|HideNotification|Hides the currently shown toast notification.|

### Events

|Event|Description|
|----|----|
|RadToastOnActivated |Static event. Fires the event when a toast activates.|

# See Also

* [Getting Started]({%slug toast-notification-getting-started%})
* [Design Time]({%slug toast-notification-design-time%})
* [Notification Templates]({%slug toast-notification-templates%})
* [API reference](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radtoastnotificationmanager)
 
        
