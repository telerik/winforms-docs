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

# Getting Started with WinForms StepProgressBar

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadStepProgressBar` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadStepProgressBar

The following picture shows the final result produced by the code of this tutorial.

![WinForms RadStepProgressBar Getting Started](images/stepprogressbar-getting-started001.png)

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

## See Also

* [Layout]({%slug stepprogressbar-features-layout%})
* [Step Progress Mode]({%slug stepprogressbar-features-progressmode%})
* [Design Time]({%slug stepprogressbar-design-time%}) 
 
        

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms StepProgressBar Component](https://www.telerik.com/products/winforms/stepprogressbar.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

