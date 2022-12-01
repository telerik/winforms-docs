---
title: Scrolling
page_title: Scrolling - RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/items-text-formatting
tags: listcontrol, scrolling
published: True
position: 6  
---

# Scrolling

If the __RadListDataItems__ cannot fit in the pop up, a vertical scroll bar appears so that they can be scrolled and later selected. __RadListControl__ provides three scrolling modes that can be used depending on user preferences: *Discrete*, *Smooth* and *Deferred*. It is controlled by the __ScrollMode__ property.

|ScrollMode|Description|Scrolling Behavior|
|----|----|----|
|__Discrete__|Defines scrolling by only one item at a time.|![WinForms RadListControl dropdown-and-listcontrol-listcontrol-features-scrolling 001](images/dropdown-and-listcontrol-listcontrol-features-scrolling001.gif)|
|__Smooth__|Sets scrolling by pixel, meaning that an item can be partially visible.|![WinForms RadListControl dropdown-and-listcontrol-listcontrol-features-scrolling 002](images/dropdown-and-listcontrol-listcontrol-features-scrolling002.gif)|
|__Deferred__|Does not cause GUI updates until the user finishes the scrolling operation.|![WinForms RadListControl dropdown-and-listcontrol-listcontrol-features-scrolling 003](images/dropdown-and-listcontrol-listcontrol-features-scrolling003.gif)|

## KineticScrolling

This feature ensures that the control is ready for modern touch-screen applications. It can be attached by simply setting the __EnableKineticScrolling__ property to *true*.
        
>caption Figure 1: Enable Kinetic Scrolling

![WinForms RadListControl Enable Kinetic Scrolling](images/dropdown-and-listcontrol-listcontrol-features-scrolling004.gif)

## Programmatically Scrolling

The RadListControl.__ListElement__ provides out of the box functionality for programmatically scrolling its content. The available methods are: 
        
* __ScrollToItem__: Scrolls to a specific item.
            

* __ScrollToActiveItem__: Scrolls to the active item if it is not null and if it is not fully visible.
            
