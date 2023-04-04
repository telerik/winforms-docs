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

This tutorial will walk you through the creation of a sample application that contains __RadCalculator__.

The following picture shows the final result produced by the code of this tutorial.

![WinForms RadCalculator Getting Started](images/calculator-getting-started001.png)

>note The design may vary according to the applied theme to the application. 

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

# See Also

* [Design Time]({%slug calculator-design-time%}) 
 
        
