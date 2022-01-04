---
title: Getting Started
page_title: Getting Started - WinForms StepProgressBar Control
description: Get started with the WinForms StepProgressBar and construct your step layout navigation.   
slug: stepprogressbar-getting-started
tags: stepprogressbar
published: True
position: 3 
CTAControlName: StepProgressBar
---

# Getting Started

This tutorial will walk you through the creation of a sample application that contains __RadStepProgressBar__.

The following picture shows the final result produced by the code of this tutorial.

![stepprogressbar-getting-started 001](images/stepprogressbar-getting-started001.png)

>note The design may vary according to the applied theme to the application. 

## Defining RadStepProgressBar

To start using the __RadStepProgressBar__ control, you can just populate its __Items__ collection with __StepProgressBarItem__ objects. Each __RadStepProgressBar__ will produce a step visual element with track bar rendered between the steps. The following example shows how to add 3 steps along with text to each step added via the __Content__ property of the RadStepProgressBarItem elements. In the example, the second step is selected.

#### Populate RadStepProgressBar

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    var item1 = new StepProgressItem() { Progress = 100, FirstHeader = "Account", SecondHeader = "Step 1", FirstDescription = "Step 1", SecondDescription = "Desc 2" };
    var item2 = new StepProgressItem() { Progress = 50, FirstHeader = "Security", SecondHeader = "Header 2", FirstDescription = "Step 2", SecondDescription = "Desc 2" };
    var item3 = new StepProgressItem() { Progress = 0, FirstHeader = "Review", SecondHeader = "Header 2", FirstDescription = "Step 3", SecondDescription = "Desc 2" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET


````

{{endregion}} 

When you run the project, you can observe that the first step is complete. While the second one is half completed. Each step has two headers and two descriptions thus allowing you to add detailed information about each step.

# See Also

* [Structure]({%slug callout-getting-started%})
* [Design Time]({%slug callout-structure%}) 
 
        
