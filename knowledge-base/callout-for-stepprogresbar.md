---
title: How to Add Callout for StepProgressBar
description: Learn how to show callout for the different steps in the WinForms Callout.
type: how-to 
page_title: How to Add Callout for StepProgressBar
slug: callout-for-stepprogresbar
position: 39
tags: callout, step, progress
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.1.222|RadStepProgressBar for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

By default, RadStepProgressBar offers [tooltips]({%slug stepprogressbar-features-tooltip%}). However, it may be required to display more detailed information for the different steps. This article demonstrates a sample approach to how to achieve it.

## Solution 

It is appropriate to use a RadCallout for each step. The [Getting Started with Callout]({%slug callout-getting-started%}) article demonstrates how to build the callout. Once you are done with the design for the RadCallout, iterate the RadStepProgressBar.**Steps** and subscribe to the **MouseEnter** event where the callout is shown.

![callout-for-stepprogresbar 001](images/callout-for-stepprogresbar001.gif)

````C# 

public RadForm1()
{
    InitializeComponent(); 

    foreach (StepProgressItem item in this.radStepProgressBar1.Steps)
    {
        item.StepIndicator.MouseEnter += StepIndicator_MouseEnter; 
    }
}

private void StepIndicator_MouseEnter(object sender, EventArgs e)
{
    if (this.radCallout1.CalloutForm.Visible)
    {
        this.radCallout1.Close();
    }

    this.radCallout1.Show(sender as StepItemIndicatorElement);
} 

    
````
````VB.NET
Public Sub New()
    InitializeComponent()

    For Each item As StepProgressItem In Me.RadStepProgressBar1.Steps
        AddHandler item.StepIndicator.MouseEnter, AddressOf StepIndicator_MouseEnter
    Next
End Sub

Private Sub StepIndicator_MouseEnter(ByVal sender As Object, ByVal e As EventArgs)
    If Me.RadCallout1.CalloutForm.Visible Then
        Me.RadCallout1.Close()
    End If

    Me.RadCallout1.Show(TryCast(sender, StepItemIndicatorElement))
End Sub
 
````

# See Also

* [Getting Started with Callout]({%slug callout-getting-started%}) 
* [StepProgressBar - Overview]({%slug stepprogressbar-overview%})
* [StepProgressBar - ToolTip]({%slug stepprogressbar-features-tooltip%})
