---
title: ToolTip
page_title: ToolTip - WinForms StepProgressBar Control
description: WinForms StepProgressBar 
slug: stepprogressbar-features-tooltip
tags: stepprogressbar
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Tooltip

There are two ways to assign tooltips to step indicators in __RadStepProgressBar__, namely setting the ToolTipText and AutoToolTip properties of the StepIndicator of each step, or as in most of the RadControls by using the ToolTipTextNeeded event. To assign a tooltip text, you can use the __ToolTipTextNeeded__ event of the __RadStepProgressBar__ control.

## Setting ToolTipText to StepIndicators

The code snippet below demonstrates how you can assign a tooltip to a step indicator.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepindicator_tooltiptext-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-stepindicator_tooltiptext-vb' />



![WinForms RadStepProgressBar ToolTipText](images/stepprogressbar-features-tooltip001.png)

## Setting Tooltips in the ToolTipTextNeeded Event

The code snippet below demonstrates how you can use the ToolTipTextNeeded event handler to set the ToolTipText of step indicators.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-tooltiptextneeded-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-tooltiptextneeded-vb' />



![WinForms RadStepProgressBar ToolTipTextNeeded](images/stepprogressbar-features-tooltip002.png)

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
* [How to Add Callout for StepProgressBar]({%slug callout-for-stepprogresbar%})
 
        
