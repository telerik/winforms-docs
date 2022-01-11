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

To start using the __RadStepProgressBar__ control, you can just populate its __Items__ collection with __StepProgressItem__ objects. Each __StepProgressItem__ will produce a step visual element with track bar rendered between the steps. The following example shows how to add 5 steps along with text to each step added via several properties of the StepProgressItem elements.

{{source=..\SamplesCS\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.cs region=ShowStepProgressBar}} 
{{source=..\SamplesVB\TrackAndStatus\StepProgressBar\StepProgressBarGettingStarted.vb region=ShowStepProgressBar}} 

````C#
private void CreateStepProgressBar()
{
    var stepProgressBar = new RadStepProgressBar();
    stepProgressBar.Dock = DockStyle.Fill;
    var item1 = new StepProgressItem() {FirstHeader="Step 1", SecondHeader = "New", SecondDescription = "Unassigned" };
    var item2 = new StepProgressItem() {FirstHeader="Step 2", SecondHeader = "InProgress", SecondDescription = "Dev" };
    var item3 = new StepProgressItem() {FirstHeader="Step 3", SecondHeader = "ReadyForTest", SecondDescription = "Dev" };
    var item4 = new StepProgressItem() {FirstHeader="Step 4", SecondHeader = "Testing", SecondDescription = "QA", Progress = 61, };
    var item5 = new StepProgressItem() {FirstHeader="Step 5", SecondHeader = "Done", SecondDescription = "N/A" };
    stepProgressBar.Steps.Add(item1);
    stepProgressBar.Steps.Add(item2);
    stepProgressBar.Steps.Add(item3);
    stepProgressBar.Steps.Add(item4);
    stepProgressBar.Steps.Add(item5);
    this.Controls.Add(stepProgressBar);
}

````
````VB.NET
Private Sub CreateStepProgressBar()
	Dim stepProgressBar = New RadStepProgressBar()
	stepProgressBar.Dock = DockStyle.Fill
	Dim item1 = New StepProgressItem() With {
		.FirstHeader = "Step 1",
		.SecondHeader = "New",
		.SecondDescription = "Unassigned"
	}
	Dim item2 = New StepProgressItem() With {
		.FirstHeader = "Step 2",
		.SecondHeader = "InProgress",
		.SecondDescription = "Dev"
	}
	Dim item3 = New StepProgressItem() With {
		.FirstHeader = "Step 3",
		.SecondHeader = "ReadyForTest",
		.SecondDescription = "Dev"
	}
	Dim item4 = New StepProgressItem() With {
		.FirstHeader = "Step 4",
		.SecondHeader = "Testing",
		.SecondDescription = "QA",
		.Progress = 61
	}
	Dim item5 = New StepProgressItem() With {
		.FirstHeader = "Step 5",
		.SecondHeader = "Done",
		.SecondDescription = "N/A"
	}
	stepProgressBar.Steps.Add(item1)
	stepProgressBar.Steps.Add(item2)
	stepProgressBar.Steps.Add(item3)
	stepProgressBar.Steps.Add(item4)
	stepProgressBar.Steps.Add(item5)
	Me.Controls.Add(stepProgressBar)
End Sub

````

{{endregion}} 

When you run the project, you can observe that the first step is complete. While the second one is half completed. Each step has two headers and two descriptions thus allowing you to add detailed information about each step.

# See Also

* [Layout]({%slug stepprogressbar-features-layout%})
* [Step Progress Mode]({%slug stepprogressbar-features-progressmode%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
 
        
