---
title: Working with RadRotator
page_title: Working with RadRotator - UI for WinForms Documentation
description: Working with RadRotator
slug: winforms/rotator/working-with-radrotator
tags: working,with,radrotator
published: True
position: 2
previous_url: rotator-working-with-radrotator
---

# Working with RadRotator

## Properties

The following properties are specific to **RadRotator**:

### Items

The `Items` collection can contain a wide array of `RadElement` types. To add to the collection at design time, click the `Items` property ellipses button to display the **Rad Items Collection Editor**. Use the **Add** split button to locate and select one of the available item types. In particular, `RadImageItem` wraps a standard `Image` object (look for the `Image` and `ImageIndex` properties of `RadImageItem`), and `RadWebBrowserItem` can be used to display a web page by specifying the `Url` property. For an example of how to use these properties, refer to the [Getting Started]({%slug winforms/rotator/getting-started%}) article.

### Running

Setting the `Running` property to `true` starts the animation. The default value is `false`.

### AnimationFrames

This property controls the number of frames used to display a transition between items. Larger numbers of frames slow the animation and cause the transition to appear smoother. The default value is `10`. The value has to be greater than `0`.

### Interval

`Interval` is the number of milliseconds between item displays. The default value is `2000`.

### LocationAnimation

This property controls the direction and distance of movement when an item is animated. The value is a `SizeF` with `Width` and `Height` components, each in the range `[-1, 1]`. The default value is `(0, -1)`.

* A positive `Width` value causes the transition between items to move left. A negative value causes items to move right.
* A positive `Height` value causes the transition between items to move up. A negative value causes items to move down.
* A value of `1` or `-1` means the item will be completely outside the visible area before the animation begins (for the incoming item) or after it ends (for the outgoing item).

### OpacityAnimation

When set to `true` (the default), items become more transparent as they move off screen, while the item moving onscreen becomes opaque. The animation blends smoothly from one item to the other. When set to `false`, new items move over the top of old items without the fading effect.

### CurrentIndex

Gets or sets the index of the currently displayed rotator item. When the property is set, a swap animation is performed between the old and the new item.

### ShouldStopOnMouseOver

Gets or sets whether **RadRotator** stops rotating when the mouse hovers over the control. The default value is `true`.

### DefaultItem

Gets or sets the `RadItem` that is displayed while the rest of the items are loading. The `DefaultItem` is not cycled through when the rotation starts. To have an initial item that participates in the rotation, add it to the `Items` collection and navigate to it by using the `Goto` method.

### CurrentItem

Gets the currently displayed `RadItem`. This is a read-only property.

## Methods

### Start()

The `Start` method is equivalent to setting the `Running` property to `true`. You can call `Start()` without parameters or use the overload where the parameter takes a boolean. When the parameter is `true`, the animation starts immediately without waiting for the first interval to elapse.

The method returns `true` if the rotation started successfully and `false` if the `Items` collection is empty.

### Stop()

Stops the rotation. If a swap animation is in progress, it will be completed before the `StopRotation` event fires.

### Goto(int index)

Initiates a swap animation between the current item and the item at the specified index. Pass `-1` to navigate to the `DefaultItem`. Returns `true` on a successful swap.

### GotoDefault()

Navigates to the `DefaultItem`. Equivalent to calling `Goto(-1)`.

### Previous()

Moves to the previous item in the `Items` collection. Returns `true` on success.

### Next()

Moves to the next item in the `Items` collection. Returns `true` on success.

## Events

### ItemClicked

The `ItemClicked` event fires when an item in the rotator is clicked.

### StartRotation, StopRotation

The `StartRotation` event fires when the `Running` property is set to `true` or the `Start()` method is called. `StartRotation` passes `CancelEventArgs`, which allows you to prevent the rotation from starting. `StopRotation` fires when `Running` is set to `false` or when the `Stop()` method is called.

### BeginRotate, EndRotate

The `BeginRotate` and `EndRotate` events fire just before and after a transition between rotator items. `BeginRotate` passes a `BeginRotateEventArgs` parameter containing the following properties:

* `From`&mdash;Gets the index of the previous rotator item.
* `To`&mdash;Gets or sets the index of the upcoming rotator item. You can change this value to redirect the rotation to a different item.
* `Cancel`&mdash;Set to `true` to prevent the upcoming rotator item from displaying.
