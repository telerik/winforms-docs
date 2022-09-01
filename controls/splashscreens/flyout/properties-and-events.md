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

## RadFlyoutManager Properties

|Property|Description|
|----|----|
|**FlyoutInstance**|Return instance of FlyoutScreen|
|**IsActive**|Get whether the Flyout is currently active or not|

## RadFlyoutManager Methods

|Method|Description|
|----|----|
|**Show**|Show the Flyout screen over the passed control with the set type of user control|
|**Close**|Close the Flyout screen.|

|Event|Description|
|----|----|
|**FormLoad**|Occurs when the splash form has been loaded.|
|**FormShown**|Occurs when the splash form is shown.|

>Note that both events are created on a separate __System.Threading.Threads__ and it is required to use BeginInvoke/Invoke when accessing it in order to prevent cross-thread exceptions. Also, these events are static and you need to explicitly unsubscribe from them in order to prevent memory leaks. Each object that is subscribed to one of these events cannot be garbage collected.

## FlyoutScreen Methods

|Method|Description|
|----|----|
|**CreateFrom**|This method can be overriden to return your own custom form. This form will be used for the overlay screen to be place on top of the passed control.|


