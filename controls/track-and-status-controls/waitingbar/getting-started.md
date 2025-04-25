---
title: Getting Started
page_title: Getting Started - WinForms WaitingBar Control
description: WinForms WaitingBar is designed to indicate that a long-running operation with indeterminate  length is undergoing.
slug: winforms/track-and-status-controls/waitingbar/getting-started
tags: getting,started
published: True
position: 3
previous_url: track-and-status-controls-waitingbar-getting-started
---

# Getting Started with WinForms WaitingBar

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadWaitingBar` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadWaitingBar

* To add a __RadWaitingBar__ to your form, drag a __RadWaitingBar__ from the toolbox onto the surface of the form designer.

* To programmatically add a __RadWaitingBar__ to a form, create a new instance of a __RadWaitingBar__, and add it to the form __Controls__ collection.

#### Adding a RadWaitingBar at runtime

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\WaitingGettingStarted.cs region=AddWaitingBar}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\WaitingGettingStarted.vb region=AddWaitingBar}} 

````C#
RadWaitingBar radWaitingBar = new RadWaitingBar();
radWaitingBar.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.Dash;
radWaitingBar.WaitingDirection = ProgressOrientation.Left;
this.Controls.Add(radWaitingBar);

````
````VB.NET
Dim radWaitingBar As New RadWaitingBar()
radWaitingBar.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.Dash
radWaitingBar.WaitingDirection = ProgressOrientation.Left
Me.Controls.Add(radWaitingBar)

````

{{endregion}} 


The following tutorial illustrates how to start and stop the animation of __RadWaitingBar__:


1\. Place a __RadWaitingBar__ control and a __RadButton__ control on a form.

2\. Select the __RadWaitingBar__ control.

3\. In the __Properties__ window set the __WaitingDirection__ property to *Bottom*.

4\. Resize the __RadWaitingBar__ so that its height is larger than its width.

5\. Select the __RadButton__ control.

6\. Set the __Text__ property to *Start*.

7\. In the __Properties__ window click the events button.

8\. Double-click the __Click__ event.

9\. Replace the automatically-generated event handler with this code:

#### RadButton's Click event handler

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\WaitingGettingStarted.cs region=click}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\WaitingGettingStarted.vb region=click}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    if (radWaitingBar1.IsWaiting)
    {
        radWaitingBar1.StopWaiting();
        this.radButton1.Text = "Start";
    }
    else
    {
        radWaitingBar1.StartWaiting();
        this.radButton1.Text = "Stop";
    }
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    If RadWaitingBar1.IsWaiting Then
        RadWaitingBar1.StopWaiting()
        Me.RadButton1.Text = "Start"
    Else
        RadWaitingBar1.StartWaiting()
        Me.RadButton1.Text = "Stop"
    End If
End Sub

````

{{endregion}} 

10\. Press __F5__ to run the project.

11\. Click the *Start* button to start and stop the animation.

![WinForms RadWaitingBar Start Stop Animation](images/track-and-status-controls-waitingbar-getting-started001.gif)

## Adding Indicator Elements programmatically

The following example demonstrates how to add __DotsLineWaitingBarIndicatorElements__ in a __RadWaitingBar__ with WaitingBarStyles.*DotsSpinner*:

![WinForms RadWaitingBar Adding Indicator Elements programmatically](images/track-and-status-controls-waitingbar-getting-started002.gif)

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.cs region=AddingIndicators}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.vb region=AddingIndicators}} 

````C#
RadWaitingBar radWaitingBar1 = new RadWaitingBar();
radWaitingBar1.Size = new System.Drawing.Size(200, 200);
radWaitingBar1.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.DotsSpinner;
radWaitingBar1.StartWaiting();
int radius = 20;
int elementCount = 5;
for (int i = 0; i < 4; i++)
{
    radius += 10;
    elementCount += 1;
    DotsSpinnerWaitingBarIndicatorElement dsi = new DotsSpinnerWaitingBarIndicatorElement();
    radWaitingBar1.WaitingIndicators.Add(dsi);
    dsi.Radius = radius;
    dsi.ElementCount = elementCount;
    dsi.RotationDirection = (RotationDirection)(i % 2);
}
DotsLineWaitingBarIndicatorElement dli = new DotsLineWaitingBarIndicatorElement();
radWaitingBar1.WaitingIndicators.Add(dli);
dli.PositionOffset = new SizeF(0, 50);
DotsLineWaitingBarIndicatorElement dli1 = new DotsLineWaitingBarIndicatorElement();
radWaitingBar1.WaitingIndicators.Add(dli1);
dli1.WaitingDirection = Telerik.WinControls.ProgressOrientation.Left;
dli1.PositionOffset = new SizeF(0, -50);
DotsLineWaitingBarIndicatorElement dli2 = new DotsLineWaitingBarIndicatorElement();
radWaitingBar1.WaitingIndicators.Add(dli2);
dli2.WaitingDirection = Telerik.WinControls.ProgressOrientation.Bottom;
dli2.PositionOffset = new SizeF(50, 0);
DotsLineWaitingBarIndicatorElement dli4 = new DotsLineWaitingBarIndicatorElement();
radWaitingBar1.WaitingIndicators.Add(dli4);
dli4.WaitingDirection = Telerik.WinControls.ProgressOrientation.Top;
dli4.PositionOffset = new SizeF(-50, 0);
radWaitingBar1.Location = new Point(10, 10);
this.Controls.Add(radWaitingBar1);
radWaitingBar1.StartWaiting();

````
````VB.NET
Dim radWaitingBar1 As New RadWaitingBar()
radWaitingBar1.Size = New System.Drawing.Size(200, 200)
radWaitingBar1.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.DotsSpinner
radWaitingBar1.StartWaiting()
Dim radius As Integer = 20
Dim elementCount As Integer = 5
For i As Integer = 0 To 3
    radius += 10
    elementCount += 1
    Dim dsi As New DotsSpinnerWaitingBarIndicatorElement()
    radWaitingBar1.WaitingIndicators.Add(dsi)
    dsi.Radius = radius
    dsi.ElementCount = elementCount
    dsi.RotationDirection = DirectCast(i Mod 2, RotationDirection)
Next
Dim dli As New DotsLineWaitingBarIndicatorElement()
radWaitingBar1.WaitingIndicators.Add(dli)
dli.PositionOffset = New SizeF(0, 50)
Dim dli1 As New DotsLineWaitingBarIndicatorElement()
radWaitingBar1.WaitingIndicators.Add(dli1)
dli1.WaitingDirection = Telerik.WinControls.ProgressOrientation.Left
dli1.PositionOffset = New SizeF(0, -50)
Dim dli2 As New DotsLineWaitingBarIndicatorElement()
radWaitingBar1.WaitingIndicators.Add(dli2)
dli2.WaitingDirection = Telerik.WinControls.ProgressOrientation.Bottom
dli2.PositionOffset = New SizeF(50, 0)
Dim dli4 As New DotsLineWaitingBarIndicatorElement()
radWaitingBar1.WaitingIndicators.Add(dli4)
dli4.WaitingDirection = Telerik.WinControls.ProgressOrientation.Top
dli4.PositionOffset = New SizeF(-50, 0)
radWaitingBar1.Location = New Point(10, 10)
Me.Controls.Add(radWaitingBar1)
radWaitingBar1.StartWaiting()

````

{{endregion}}

## See Also

* [Structure]({%slug winforms/track-and-status-controls/waitingbar/structure%})	
* [Design Time]({%slug winforms/track-and-status-controls/wiating-bar/design-time%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms WaitingBar Component](https://www.telerik.com/products/winforms/waitingbar.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

