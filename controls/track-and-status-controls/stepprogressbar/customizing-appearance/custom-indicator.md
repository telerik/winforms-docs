---
title: Custom Indicator 
page_title: Custom Indicator- WinForms StepProgressBar Control
description: WinForms StepProgressBar 
slug: stepprogressbar-customize-appearance-custom-indicator
tags: stepprogressbar
published: True
position: 1
CTAControlName: StepProgressBar
---

# Custom Indicator  

This article demonstrates how you can apply custom shapes to the RadStepProgressBar step indicators. To apply custom shape you can use the Shape property of the StepIndicator inside the RadStepProgressBar steps.

## Using Predifined Shapes

The following code snippet demonstrates how to apply one of the predefined [ElementShapes]({%slug winforms/telerik-presentation-framework/shapes%}) that the Telerik Presentation Framework offers.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-shapeindicators-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-shapeindicators-vb' />



![WinForms RadStepProgressBar Predifined Shapes](images/stepprogressbar-appearance-customindicator001.png)

## Using ShapeEditor

In the following code snippet, we are changing the default look of all shapes with manually generated shapes. Using the __IsFirst__ and __IsLast__ properties of the __StepProgressItem__, we can apply different shapes from the rest steps for the first and last indicators.

> The custom shape in the following example is generated using the [ShapeEditor]({%slug winforms/tools/shapeeditor%}) designer.

<snippet id='track-and-status-controls-stepprogressbargettingstarted-customindicator-cs' />
<snippet id='track-and-status-controls-stepprogressbargettingstarted-customindicator-vb' />



![WinForms RadStepProgressBar Custom Shapes](images/stepprogressbar-appearance-customindicator002.png)

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
