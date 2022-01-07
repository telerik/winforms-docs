---
title: Custom Indicator 
page_title: Custom Indicator- WinForms StepProgressBar Control
description: WinForms StepProgressBar 
slug: stepprogressbar-customize-appearance-custom-indicator
tags: stepprogressbar
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Custom Indicator  

This article demonstrates how you can apply custom shapes to the RadStepProgressBar step indicators. To apply custom shape you can use the Shape property of the StepIndicator inside the RadStepProgressBar steps.

In the following code snippet, we are changing the default look of all shapes. Using the IsFirst and IsLast properties of the StepProgressItem, we can apply different shapes from the rest steps for the first and last indicators.

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateHorizontalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    var item1 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 1",  };
    var item2 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 2" };
    var item3 = new StepProgressItem() { Progress = 80, FirstHeader = "Step 3" };
    var item4 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 4" };
    var item5 = new StepProgressItem() { Progress = 0, FirstHeader = "Step 5" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);       
    stepProgressBar.Steps.Add(item4);       
    stepProgressBar.Steps.Add(item5);       
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET


````

{{endregion}}

![stepprogressbar-progress-mode 001](images/stepprogressbar-appearance-customindicator001.png)



# See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
