---
title: Properties and Events
page_title: Properties and Events - WinForms Overlay Screen
description: Learn the most important properties for changing the Overlay Screen appearance and behavior.
slug: overlay-properties-events
tags: properties,and,events
published: True
position: 2
---

# Properties, Methods and Events

## RadOverlayManager Properties

|Property|Description|
|----|----|
|**OverlayInstance**|Return instance of OverlayScreen|

## RadOverlayManager Methods

|Method|Description|
|----|----|
|**Show**|Show the Overlay screen over the passed control|
|**Close**|Close the Overlay screen.|

|Event|Description|
|----|----|
|**FormLoad**|Occurs when the splash form has been loaded.|
|**FormShown**|Occurs when the splash form is shown.|

>Note that both events are created on a separate __System.Threading.Threads__ and it is required to use BeginInvoke/Invoke when accessing it in order to prevent cross-thread exceptions. Also, these events are static and you need to explicitly unsubscribe from them in order to prevent memory leaks. Each object that is subscribed to one of these events cannot be garbage collected.

## OverlayScreen Methods

|Method|Description|
|----|----|
|**CreateFrom**|This method can be overriden to return your own custom form. This form will be used for the overlay screen to be place on top of the passed control.|


