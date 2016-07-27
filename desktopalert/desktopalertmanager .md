---
title: DesktopAlertManager 
page_title: DesktopAlertManager  | RadDesktopAlert
description: RadDesktopAlert component displays a small pop-up window on the screen to notify the user that a specific event has occurred in the application. 
slug: winforms/desktopalert/desktopalertmanager 
tags: desktopalert, desktopalertmanager
published: True
position: 7
---

## Displaying Multiple RadDesktopAlert Instances on the Screen
 
You can easily display multiple alerts on the screen thanks to the __DesktopAlertManager__ which takes care to calculate the alerts’ location so that they do not overlap. When shown on the screen, an alert is first registered in the __DesktopAlertManager__ which calculates its location based on the __ScreenPosition__ setting and the other desktop alerts shown on the screen having the same __ScreenPosition__ setting. In this way, alerts with the same screen position are stacked on the screen in the order of their appearance. When an alert is closed, all related alerts visible are automatically relocated to optimally utilize the screen estate.

## Multiple Screens Scenarios

__RadDesktopAlert__ is designed to support multi-monitor environments. Currently, you can set the active monitor and all desktop alerts will be displayed on it. To do so, you need to specify which of your screens will be used as an active screen when positioning desktop alert pop ups. To do so, you can use the __SetActiveScreen__ method of the __DesktopAlertManager__ class. This way all desktop alerts will be positioned on the specified screen regarding their __ScreenPosition__.

>note When calling the __SetActiveScreen__ method all currently visible alerts are relocated to the newly specified screen whereby their __ScreenPosition__ setting is considered.
>
