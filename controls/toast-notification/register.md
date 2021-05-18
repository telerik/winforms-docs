---
title: Register
page_title: Register - WinForms Toast Notification
description: Before showing a WinForms toast notification, it is important to register the manager first. Learn how to do it.  
slug: toast-notification-register
tags: toast notification
published: True
position: 3 
CTAControlName: ToastNotification
---

# Register

Before showing a toast notification, it is important to register the manager first. The appropriate place to do it is the form's constructor. Don't forget to unregister the manager while closing the application.

>important There are several overloads for the **Register** and **Unregister** methods. It is essential to use the corresponding **Unregister** method considering which of the **Register** method overloads are used. 

Here are listed the available **Register** method overloads:

## Register()

This is the preferred method for registering the toast manager.

It actually registers the application using the current process file name (full **exe** name), adds a default Telerik shortcut name, default AUMID and internal activator (**RadToastNotificationInternalActivator**). When the internal activator is activated, it fires the static **RadToastActivated** event. 

## Register(string exePath, string shortcutName, string aumid)

It registers the application using an internal activator, expecting the path of the executable, a name of the shortcut that will be placed in start menu and a unique id of the application - recommended string - name + GUID.

>note If you don't have a shortcut for your application, you will have to pass a shortcut name for it and its ID. In case you already have a shortcut created for the application, you must pass **null** for the **shortcutName** parameter and specify the application ID. 

## Registering with a Custom Activator 

Similar to the above mentioned **Register** method overloads, there are two overloads that expect a **RadToastNotificationActivatorBase** which is actually a derivative of the [Microsoft.Toolkit.Uwp.Notifications.NotificationActivator](https://docs.microsoft.com/en-us/windows/uwp/design/shell/tiles-and-notifications/send-local-toast-desktop?tabs=msix-sparse).

* Register<T>() where T : RadToastNotificationActivatorBase
* Register<T>(string exePath, string shortcutName, string aumid) where T : RadToastNotificationActivatorBase


# See Also

* [Notification Templates]({%slug toast-notification-templates%})
* [Design Time]({%slug toast-notification-design-time%})
 
        
