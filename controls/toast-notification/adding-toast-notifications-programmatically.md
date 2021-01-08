---
title: Adding Toast Notifications Programmatically  
page_title: Adding Toast Notifications Programmatically | Toast Notification
description: RadToastNotificationManager is built on the Windows' notification system, making it easier for our customers to create and manage notifications.  
slug: toast-notification-adding-toast-notifications-programmatically
tags: toast notification
published: True
position: 5 
CTAControlName: ToastNotification
---

## Adding Toast Notifications Programmatically

The easiest way to produce the XML for your toast notification is via the [RadToastNotifications Editor]({%slug toast-notification-design-time%}) and its **Elements** section on the right. It also allows you to preview the notification while you are designing it.

It is possible to build a **RadToastNotification** at run time, passing the [RadToastTemplateType](https://docs.telerik.com/devtools/winforms/api/telerik.radtoastnotificationmanager.radtoasttemplatetype) and the XML content if you want to extend the default design.

#### Adding RadToastNotification at RunTime

{{source=..\SamplesCS\ToastNotification\ProgrammaticallyAddedToasts.cs region=ProgrammaticallyAddedNotifications}} 
{{source=..\SamplesVB\ToastNotification\ProgrammaticallyAddedToasts.vb region=ProgrammaticallyAddedNotifications}}

````C#




````
````VB.NET


````


![winforms/toast-notification-adding-toast-notifications-programmatically001](images/toast-notification-adding-toast-notifications-programmatically001.png)

# See Also

* [Getting Started]({%slug toast-notification-getting-started%})
* [Design Time]({%slug toast-notification-design-time%})
* [Notification Templates]({%slug toast-notification-templates%}) 
 
        
