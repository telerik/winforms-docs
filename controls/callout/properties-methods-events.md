---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms Callout Control
description: Get familiar with the public API that WinForms Callout offers.   
slug: properties-methods-events
tags: callout
published: True
position: 4 
CTAControlName: Callout
---

# Properties, Methods and Events for RadCallout

## Properties  

|Property|Description|
|----|----|
|**ErrorCaption**|Gets or sets the title (caption) of the error message when the callout can't be shown.|
|**ErrorMessage**|Gets or sets the content of the error message.|
|**CalloutForm**|Gets the callout form (ShapedForm).|
|**AssociatedControl**|Gets or sets the associated control that is displayed in the callout. Note that you can associate a single control to RadCallout. If you need to add multiple controls, add them in a container (e.g. RadPanel) control and associate it with RadCallout.|
|**CalloutType**|Gets or sets the type of the shape of the callout.|
|**ArrowType**|Gets or sets the type of the arrow of the callout. By default, it is CalloutArrowType.Triangle.|
|**ArrowSize**|Gets or sets the size of the arrow of the callout. Its default size is (20,20).|
|**ArrowDirection**|Gets or sets the direction of the arrow of the callout. Its default value is ArrowDirection.Down.|
|**CornerRadius**|Gets or sets the size of the arrow of the callout. It is applicable when CalloutType is CalloutType.RoundedRectangle. Its default value is 5.|
|**Distance**|Gets or sets the distance between the callout and the control(element) relative to which it is shown. Its default value is 0.|
|**DropShadow**|Gets or sets a value indicating whether the callout drops a shadow. Note that the shadow effect cannot be customized. By default, it is *false*.|
|**AutoClose**|Gets or sets a value indicating whether the callout will automatically close. If *true*, the Mouse is captured in the callout. If *false*, user is responsible for closing the callout form either manually or with RadCallout.Close() method. Its default value is *true*.|
|**MoveWithParentForm**|Gets or sets a value indicating whether the callout will move along with the parent form of the placement target. This property has effect only when AutoClose is *false*.|
|**CloseAction**|Determines the executed action when the callout form is about to be closed. Its default value is CalloutCloseAction.Hide.|
|**AnimationManager**|Gets the animation manager, which holds all the animation settings and is responsible for the callout animations.|

## Methods

|Method|Description|
|----|----|
|**Show(Point location)**|Shows a callout form pointing to a specific location in screen coordinates.|
|**Show(Control control)**|Shows a callout form pointing to a specific control.|
|**Show(RadElement element)**|Shows a callout form pointing to a specific element.|
|**Close**|Closes the callout form.|

## Events

|Event|Description|
|----|----|
|**Opening**|Fires when the callout about to be opened. Cancellable.|
|**Opened**|Fires when the callout is opened.|
|**Closing**|Fires when the callout about to be closed. Cancellable.|
|**Closed**|Fires when the callout is closed.| 

# See Also

* [Getting Started]({%slug callout-getting-started%})
* [Design Time]({%slug callout-structure%}) 
 
        
