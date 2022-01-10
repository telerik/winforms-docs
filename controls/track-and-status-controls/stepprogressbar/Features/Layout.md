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

# Layout

The RadStepProgressBar control is arranged horizontally by default which means that the steps are ordered from left to right. Additionally, the control can be arranged vertically from top to bottom. The flow direction can also be reversed - right to left or bottom to top.

## Orientation

To change the orientation of the control, set the __Orientation__ property. The orientation can be __Horizontal__ or __Vertical__. By default the control is horizontally orientated.

>When the control is vertically orientated, the control will not automatically calculate how the height. It will try to fit in the default Size property. You can pass new Size depending on the steps count and their settings.

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateHorizontalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    stepProgressBar.Orientation = Orientation.Vertical;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
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

![stepprogressbar-layout 001](images/stepprogressbar-features-layout001.png)

## Flow Direction

To change the horizontal flow direction, set the __RightToLeft__ property.

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateHorizontalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    stepProgressBar.RightToLeft = RightToLeft.Yes;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
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

![stepprogressbar-layout 002](images/stepprogressbar-features-layout002.png)

The same property is applicable in vertical orientation. 

{{source=..\SamplesCS\StepProgressBar\StepProgressBarSettings.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\StepProgressBar\StepProgressBarSettings.vb region=ShowStepProgressBar}} 

````C#
private void CreateHorizontalStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    stepProgressBar.Orientation = Orientation.Vertical;
    stepProgressBar.RightToLeft = RightToLeft.Yes;
    var item1 = new StepProgressItem() { FirstHeader = "Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() { FirstHeader = "Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() { FirstHeader = "Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() { FirstHeader = "Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() { FirstHeader = "Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
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

![stepprogressbar-layout 003](images/stepprogressbar-features-layout003.png)

## LayoutMode

Using the __LayoutMode__ property of the RadStepProgressBar, you can control how the steps are arrange in the form. This property is an enumeration and expose the following options:

### Auto

This is the __default value__ of the __LayoutMode__ property. In this mode the steps are arranged according to the specified spacing and connection lengths. In case there is not enough space, the spacing is decreased so that all steps remain visible.

### Absolute

In this mode the steps are always arranged according to the specified spacing and connection lengths. In case the available space cannot fit all the steps, the navigation buttons become visible.

### Stretched

In this mode the step spacing is adjusted dynamically to fit at an equal distance all steps in the available space.

## See Also

* [Getting Started]({%slug stepprogressbar-getting-started%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
* [Structure]({%slug stepprogressbar-structure%}) 
 
        
