---
title: Getting Started
page_title: Getting Started - WinForms Calculator Control
description: Get started with the WinForms Calculator and construct your step layout navigation.   
slug: calculator-getting-started
tags: calculator
published: True
position: 2
CTAControlName: Calculator
---

# Getting Started with WinForms Calculator

This tutorial will walk you through the creation of a sample application that contains __RadCalculator__. The following picture shows the final result produced by the code of this tutorial.

![WinForms RadCalculator Getting Started](images/calculator-getting-started001.png)

>note The design may vary according to the applied theme to the application. 

## Adding Telerik Assemblies Using NuGet

To use `RadCalculator` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining RadCalculator

To start using the __RadCalculator__ control, you can just add it to the Controls collection of your Form or drop it from the Toolbox. 

{{source=..\SamplesCS\Calculator\CalculatorGettingStarted.cs region=GettingStarted}} 
{{source=..\SamplesVB\Calculator\CalculatorGettingStarted.vb region=GettingStarted}} 

````C#

	public void AddCalculator()
	{
		var calculator = new RadCalculator();
		this.Controls.Add(calculator);
	}
	

````
````VB.NET

	Public Sub AddCalculator()
		Dim calculator = New RadCalculator()
		Me.Controls.Add(calculator)
	End Sub


````

{{endregion}} 

## See Also

* [Design Time]({%slug calculator-design-time%}) 
        

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Calculator Component](https://www.telerik.com/products/winforms/calculator.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

