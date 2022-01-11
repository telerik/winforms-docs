---
title: Structure
page_title: Structure - WinForms StepProgressBar Control
description: Get familiar with the internal elements structure of WinForms StepProgressBar. 
slug: stepprogressbar-structure
tags: stepprogressbar, structure
published: True
position: 1 
CTAControlName: StepProgressBar
---

# Structure 

This article describes the inner structure and organization of the elements which build the **RadStepProgressBar** control.
 

![winforms/StepProgressBar-structure 001](images/stepprogressbar-structure001.png) 

The __RadStepProgressBarElement__ represents the entire __RadStepProgressBar__ control. Any settings you make at this level will be inherited by all elements further down in the tree.

* __StepIndicator__: Represent the StepIndicator element of the StepProgressItem.
* __FirstHeader__: Represent the first header of the first content element.
* __FirstDescription__: Represent the first description of the first content element. 
* __SecondHeader__: Represent the second header of the second content element.
* __SecondDescription__: Represent the second description of the second content element.        
* __Connection__: Represent the StepConnectionElement of the StepIndicator.
* __StepIndicator InProgress__: Represent StepIndicator in progress.

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
 
        
