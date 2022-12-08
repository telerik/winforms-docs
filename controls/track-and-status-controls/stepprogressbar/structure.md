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
 

![WinForms RadStepProgressBar Structure](images/stepprogressbar-structure001.png) 

The __RadStepProgressBarElement__ represents the entire __RadStepProgressBar__ control. Any settings you make at this level will be inherited by all elements further down in the tree.

* __StepIndicator__: Represents the StepIndicator element of the StepProgressItem.
* __FirstHeader__: Represents the first header of the first content element.
* __FirstDescription__: Represents the first description of the first content element. 
* __SecondHeader__: Represents the second header of the second content element.
* __SecondDescription__: Represents the second description of the second content element.        
* __Connection__: Represents the StepConnectionElement of the StepIndicator.
* __StepIndicator InProgress__: Represents StepIndicator in progress.

## Elements Hierarchy

![WinForms RadStepProgressBar Elements Hierarchy](images/stepprogressbar-structure002.png) 

# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
 
        
