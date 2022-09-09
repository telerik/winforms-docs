---
title: Properties and Events
page_title: Properties and Events - WinForms Flyout Screen
description: Learn the most important properties for changing the Flyout Screen appearance and behavior.
slug: flyout-properties-events
tags: properties,and,events
published: True
position: 3
---

# Properties, Methods and Events

## RadFlyoutManager's Properties

|Property|Description|
|----|----|
|**FlyoutInstance**|Return instance of FlyoutScreen|
|**IsActive**|Get whether the Flyout is currently active or not|

## RadFlyoutManager's Methods

|Method|Description|
|----|----|
|**Show**|Show the Flyout screen over the passed control with the set type of user control|
|**Close**|Close the Flyout screen.|

## RadFlyoutManager's Events

|Event|Description|
|----|----|
|**FormLoad**|Occurs when the flyout screen has been loaded.|
|**FormShown**|Occurs when the flyout screen is shown.|
|**FlyoutClosed**|Occurs when the flyout screen has been closed.|
|**ContentCreated**|Occurs when the flyout screen is shown.|

>caution Note that all events are created on a separate __System.Threading.Threads__ and it is required to use BeginInvoke/Invoke when accessing it in order to prevent cross-thread exceptions. Also, these events are static and you need to explicitly unsubscribe from them in order to prevent memory leaks. Each object that is subscribed to one of these events cannot be garbage collected.


