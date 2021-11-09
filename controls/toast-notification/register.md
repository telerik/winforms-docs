---
title: Register
page_title: Register - WinForms Toast Notification
description: Before showing a WinForms toast notification, it is important to register the manager first. Learn how to do it.  
slug: toast-notification-register
tags: toast notification
published: False
position: 3 
CTAControlName: ToastNotification
---

# Register

>important As of R3 2021 SP1 registration is no longer needed – Register methods are obsolete.

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

## Unregister methods

* **Unregister<T>(string shortcutName, string aumid)**: Unregister a registered manager of type T with the unique id of the application.
* **Unregister<T>()**: Unregister a registered manager of type T where T : RadToastNotificationActivatorBase
* **Unregister(string shortcutName, string aumid)**: Unregister a registered manager.
* **Unregister()**: Cleans up resources used by the Toast Notification Manager. Keep in mind that calling this will clear notifications in the action area as well. You can call this, when the program exits or on uninstalling the program, but it must be called from the exe that was showing the toast notifications.


# See Also

* [Notification Templates]({%slug toast-notification-templates%})
* [Design Time]({%slug toast-notification-design-time%})
 
        
