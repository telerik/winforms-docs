---
title: Getting Started
page_title: Getting Started - WinForms TrackBar Control
description: WinForms TrackBar, sometimes called a slider control, can be used for navigating a large amount of information or for visually adjusting a numeric setting. 
slug: winforms/track-and-status-controls/trackbar/getting-started
tags: getting,started
published: True
position: 3
previous_url: track-and-status-controls-trackbar-getting-started
---

# Getting Started with WinForms TrackBar

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadTrackBar` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadTrackBar

This tutorial demonstrates connecting a **RadTrackBar** to a **RadTextBox** control. Setting the track bar slider position changes the value in the text box.
        

1. Place a __RadTrackBar__, __RadTextBox__ and __RadLabel__ controls on a form.
            

1. Select the __RadLabel__ control and set its **Text** property to "*Current Value:*".
            

1. Select the __RadTrackBar__ control and set the __Maximum__ property to __30__.
            

1. Click the __Events__ toolbar button in the *Properties* window.
            

1. Double-click the __ValueChanged__ event.
            

1. Replace the automatically-generated event handler with the following code:

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackGettingStarted.cs region=valueChanged}} 
{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackGettingStarted.vb region=valueChanged}} 

````C#
void radTrackBar1_ValueChanged(object sender, EventArgs e)
{
    this.radTextBox1.Text = radTrackBar1.Value.ToString();
}

````
````VB.NET
Private Sub radTrackBar1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    Me.radTextBox1.Text = radTrackBar1.Value.ToString()
End Sub

````

{{endregion}} 

8\. Press __F5__ to run the project.

9\. Move the slider on the track bar using the mouse. The text box will update to show the new slider position.

![WinForms RadTrackBar Getting Started](images/track-and-status-controls-trackbar-getting-started001.png)

## See Also

* [Structure]({%slug winforms/track-and-status-controls/trackbar/control-element-structure%})	
* [Design Time]({%slug winforms/track-and-status-controls/trackbar/design-time%}) 

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms TrackBar Component](https://www.telerik.com/products/winforms/trackbar.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

