---
title: Layout Mode
page_title: Layout - WinForms StepProgressBar Control
description: WinForms StepProgressBar Layout
slug: stepprogressbar-overview
tags: stepprogressbar, layout
published: True
position: 0 
CTAControlName: StepProgressBar
---

# Layout

The RadStepProgressBar control is arranged horizontally by default which means that the steps are ordered from left to right. Additionally, the control can be arranged vertically from top to bottom. The flow direction can also be reversed - right to left or bottom to top.

## StepLayoutMode



## Orientation

To change the orientation of the control, set the __Orientation__ property. The orientation can be __Horizontal__ or __Vertical__. By default the control is horizontally orientated.

>When the control is vertically orientated, the control will not automatically calculate how the height. It will try to fit in the default Size property. You can pass new Size depending on the steps count and their settings.

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateVerticalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    var item1 = new StepProgressItem() { Progress = 100, FirstHeader = "Account", SecondHeader = "Step 1", FirstDescription = "Step 1", SecondDescription = "Desc 2" };
    var item2 = new StepProgressItem() { Progress = 50, FirstHeader = "Security", SecondHeader = "Header 2", FirstDescription = "Step 2", SecondDescription = "Desc 2" };
    var item3 = new StepProgressItem() { Progress = 0, FirstHeader = "Review", SecondHeader = "Header 2", FirstDescription = "Step 3", SecondDescription = "Desc 2" };    
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Size = new Size(stepProgressBar.Size.Width, stepProgressBar.Size.Height + 100);
	stepProgressBar.Orientation = Orientation.Vertical;
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET


````

{{endregion}}  

![stepprogressbar-layout 001](images/stepprogressbar-features-layout001.png)

## Flow Direction

To change the horizontal flow direction, set the __RightToLeft__ property.

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateHorizontalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    var item1 = new StepProgressItem() { Progress = 100, FirstHeader = "Account", SecondHeader = "Step 1", FirstDescription = "Step 1", SecondDescription = "Desc 2" };
    var item2 = new StepProgressItem() { Progress = 50, FirstHeader = "Security", SecondHeader = "Header 2", FirstDescription = "Step 2", SecondDescription = "Desc 2" };
    var item3 = new StepProgressItem() { Progress = 0, FirstHeader = "Review", SecondHeader = "Header 2", FirstDescription = "Step 3", SecondDescription = "Desc 2" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.RightToLeft = RightToLeft.Yes;
    stepProgressBar.Size = new Size(stepProgressBar.Size.Width, stepProgressBar.Size.Height + 100);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET


````

{{endregion}}

![stepprogressbar-layout 002](images/stepprogressbar-features-layout002.png)

The same property is applicable in vertical orientation. 

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateVerticalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    var item1 = new StepProgressItem() { Progress = 100, FirstHeader = "Account", SecondHeader = "Step 1", FirstDescription = "Step 1", SecondDescription = "Desc 2" };
    var item2 = new StepProgressItem() { Progress = 50, FirstHeader = "Security", SecondHeader = "Header 2", FirstDescription = "Step 2", SecondDescription = "Desc 2" };
    var item3 = new StepProgressItem() { Progress = 0, FirstHeader = "Review", SecondHeader = "Header 2", FirstDescription = "Step 3", SecondDescription = "Desc 2" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.RightToLeft = RightToLeft.Yes;
    stepProgressBar.Size = new Size(stepProgressBar.Size.Width, stepProgressBar.Size.Height + 100);
      stepProgressBar.Orientation = Orientation.Vertical;
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET


````

{{endregion}}

![stepprogressbar-layout 003](images/stepprogressbar-features-layout003.png)

## See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
