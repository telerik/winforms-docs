---
title: Getting Started
page_title: Getting Started - WinForms ProgressBar Control
description: WinForms ProgressBar is designed to display progress information to the user during a long-running operation.  
slug: winforms/track-and-status-controls/progressbar/getting-started
tags: getting,started
published: True
position: 2
previous_url: track-and-status-controls-progressbar-getting-started
---

# Getting Started with WinForms ProgressBar

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadProgressBar` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadProgressBar

In this tutorial, you will use a **RadProgressBar** to show the progress of a long-running operation. The long-running operation is simulated with a **Timer** control.

1\. Place a __RadProgressBar__ control, a __RadButton__ control, and a standard __Timer__ control on a form.

2\. Set the __Timer__ control __Interval__  property to __50__.

3\. In the __Properties__ window, click the events button.

4\. Double-click the __Tick__ event.

5\. Replace the automatically-generated event handler with this code:
          
#### Handling the Timer Tick event

{{source=..\SamplesCS\TrackAndStatus\ProgressBar\ProgressGettingStarted.cs region=tick}} 
{{source=..\SamplesVB\TrackAndStatus\ProgressBar\ProgressGettingStarted.vb region=tick}} 

````C#
int ticks = 0;
private void timer1_Tick(object sender, EventArgs e)
{
    ticks++;
    radProgressBar1.Value1 = ticks;
    if (ticks == 100)
    {
        timer1.Enabled = false;
        ticks = 0;
    }
}

````
````VB.NET
Private ticks As Integer = 0
Private Sub timer1_Tick(ByVal sender As Object, ByVal e As EventArgs)
    ticks += 1
    RadProgressBar1.Value1 = ticks
    If ticks = 100 Then
        Timer1.Enabled = False
        ticks = 0
    End If
End Sub

````

{{endregion}} 

6\. In the design view of the form, select the __RadButton__ control.

7\. In the __Properties__ window set the __Text__ property to "Go!".

8\. In the __Properties__ window, click the events button.

9\. Double-click the __Click__ event.

10\. Replace the automatically-generated event handler with this code:

{{source=..\SamplesCS\TrackAndStatus\ProgressBar\ProgressGettingStarted.cs region=click}} 
{{source=..\SamplesVB\TrackAndStatus\ProgressBar\ProgressGettingStarted.vb region=click}} 

````C#
void radButton1_Click(object sender, EventArgs e)
{
    timer1.Enabled = true;
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Timer1.Enabled = True
End Sub

````

{{endregion}} 

11\. In the design view of the form select the __RadProgressBar__ control.

12\. Set __Dash__ to __true__.

13\. Set __Text__ to an empty string.

14\. Set __SeparatorColor1__ to __Yellow__.

15\. Set __SeparatorColor2__ to __Gold__.

16\. Set __SeparatorWidth__ to __6__.

17\. Set __StepWidth__ to __12__.

18\. Set __SweepAngle__ to __210__.

19\. Press __F5__ to run the project.

20\. Click the __Go__ Button to see the Telerik RadProgressBar animation.

![WinForms RadProgressBar Getting Started](images/track-and-status-controls-progressbar-getting-started001.gif)

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ProgressBar Component](https://www.telerik.com/products/winforms/progressbar.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

