---
title: Getting Started
page_title: Getting Started - WinForms SpinEditor Control
description: WinForms SpinEditor is a themable alternative to the standard Windows Numeric Up Down control. Learn how to get started with it.
slug: winforms/editors/spineditor/getting-started
tags: getting,started
published: True
position: 3
previous_url: editors-spineditor-getting-started
---

# Getting Started with WinForms SpinEditor

This article shows how you can start using **RadSpinEditor**.

## Adding Telerik Assemblies Using NuGet

To use `RadSpinEditor` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadSpinEditor

The following tutorial demonstrates changing the thumb position on a __RadTrackBar__ to reflect changes in a __RadSpinEditor__.

![WinForms RadSpinEditor Getting Started](images/editors-spineditor-getting-started001.png)

1\. Drop a __RadSpinEditor__ and a __RadTrackbar__ on a form.

2\. In the Property Window, set the __RadSpinEditor Maximum__ property to "20".

3\. Click the `Events` tab of the Property Window, locate the  __ValueChanged__ event and double-click it to create an event handler. Replace the event handler with the following code. 

{{source=..\SamplesCS\Editors\SpinEditor1.cs region=spinEditorAndTrackBar}} 
{{source=..\SamplesVB\Editors\SpinEditor1.vb region=spinEditorAndTrackBar}} 

````C#
void radSpinEditor1_ValueChanged(object sender, EventArgs e)
{
    this.radTrackBar1.Value = Convert.ToInt32(radSpinEditor1.Value);
}

````
````VB.NET
Private Sub RadSpinEditor1_ValueChanged1(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadSpinEditor1.ValueChanged
    Me.RadTrackBar1.Value = Convert.ToInt32(RadSpinEditor1.Value)
End Sub

````

{{endregion}} 
 
4\. Press __F5__ to run the application. Experiment with the
    behavior of the RadSpinEditor by typing values directly to the editor,
    by clicking the up and down arrows, and by pressing the up and down arrow
    keys.

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms SpinEditor Component](https://www.telerik.com/products/winforms/spineditor.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

