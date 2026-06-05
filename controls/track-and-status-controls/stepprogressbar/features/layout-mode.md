---
title: Layout Mode
page_title: Layout - WinForms StepProgressBar Control
description: WinForms StepProgressBar Layout
slug: stepprogressbar-features-layout
tags: stepprogressbar, layout
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Layout Mode

The RadStepProgressBar control is arranged horizontally by default which means that the steps are ordered from left to right. Additionally, the control can be arranged vertically from top to bottom. The flow direction can also be reversed - right to left or bottom to top.

## Orientation

To change the orientation of the control, set the __Orientation__ property. The orientation can be __Horizontal__ or __Vertical__. By default the control is horizontally orientated.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-verticalstepprogressbar-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-verticalstepprogressbar-vb' />



![WinForms RadStepProgressBar Orientation](images/stepprogressbar-features-layout001.png)

## Flow Direction

To change the horizontal flow direction, set the __RightToLeft__ property.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-horizontalstepprogressbarrighttoleft-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-horizontalstepprogressbarrighttoleft-vb' />



![WinForms RadStepProgressBar Horizontal Flow Direction](images/stepprogressbar-features-layout002.png)

The same property is applicable in vertical orientation. 

<snippet id='track-and-status-controls-stepprogressbargettingstarted-verticalstepprogressbarrighttoleft-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-verticalstepprogressbarrighttoleft-vb' />



![WinForms RadStepProgressBar Vertical Flow Direction](images/stepprogressbar-features-layout003.png)

## LayoutMode

Using the __LayoutMode__ property of the RadStepProgressBar, you can control how the steps are arrange in the form. This property is an enumeration and expose the following options:

### Auto

In this mode the steps are arranged according to the specified spacing and connection lengths. In case there is not enough space, the spacing is decreased so that all steps remain visible. This is the __default value__ of the __LayoutMode__ property. 

![WinForms RadStepProgressBar Auto](images/stepprogressbar-features-layout004.gif)

### Absolute

In this mode the steps are always arranged according to the specified spacing and connection lengths. In case the available space cannot fit all the steps, the navigation buttons become visible.

![WinForms RadStepProgressBar Absolute](images/stepprogressbar-features-layout005.gif)

### Stretched

In this mode the step spacing is adjusted dynamically to fit at an equal distance all steps in the available space.

![WinForms RadStepProgressBar Stretched](images/stepprogressbar-features-layout006.gif)

## See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
