---
title: Working with RadRotator
page_title: Working with RadRotator | UI for WinForms Documentation
description: Working with RadRotator
slug: winforms/rotator/working-with-radrotator
tags: working,with,radrotator
published: True
position: 2
previous_url: rotator-working-with-radrotator
---

# Working with RadRotator

## Properties

The significant properties unique to __RadRotator__ are:

### Items

The __RadRotator Items collection__ can contain a wide array of possible __RadElement__ types. To add to the collection at design-time, click the __Items__ property ellipses button to display the __Rad Items Collection Editor__. Use the __Add__ split button to locate and select one of the available item types. In particular, __RadImageItem__ wraps a standard Image object (look for the __Image__ and __ImageIndex__ properties of __RadImageItem__), __RadWebBrowserItem__ can be used to display a web page by specifying the __Url__ property. See the [Getting Started]({%slug winforms/rotator/getting-started%}) topic for an example using these properties.

### Running

Setting the Running property to true starts the animation.

### AnimationFrames

This property controls the number of frames used to display a transition between items. Larger numbers of frames slow the animation and cause the transition to appear smoother.

### Interval

Interval is the number of milliseconds between item displays.

### LocationAnimation

This property controls the direction of movement when an item is animated. The __LocationAnimation.Width__ property value when positive causes the transition between items to move left, and when negative the items move right. The __LocationAnimation.Height__ property value when positive causes the transition between items to move up and when negative the items move down.

### OpacityAnimation

When true (the default), items become more transparent as they move off screen, while the item moving onscreen to replace the previous item becomes opaque. The animation appears to smoothly blend from one item to the other. When false, new items move over the top of old items without the fading effect.

### CurrentIndex

__CurrentIndex__ gets or sets the currently displayed rotator item.

## Methods

### Start()

The Start method is equivalent to setting the __Running__ property to true. You can call Start() without parameters or use the overload where the parameter takes a boolean that when true starts the animation immediately without waiting for the first interval to elapse.

### Stop()

Causes the animation to freeze on the currently displayed item.

## Events

### StartRotation, StopRotation

The __StartRotation__ event fires when the __Running__ property is set to __true__ or the __Start()__ method is called. __StartRotation__ passes a __CancelEventArgs__ which allows you to stop the rotation from occuring. __StopRotation__ is fired when __Running__ is set __false__ or when the __Stop()__ method is called.

### BeginRotate, EndRotate

__BeginRotate__ and __EndRotate__ events are fired just before and after a transition between rotator items. __BeginRotate__ passes a __BeginRotateEventArgs__ containing __From__ property with the index of the previous rotator item, a __To__ property with the index of the upcoming rotator item that will display next, and a __Cancel__ property that when set true will prevent the upcoming rotator item from displaying.
