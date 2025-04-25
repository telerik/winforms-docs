---
title: Getting Started
page_title: Getting Started - WinForms ColorBox Control
description: WinForms ColorBox is a themable control which allows users to select a color from a color dialog or to directly type it in the text field.
slug: winforms/editors/colorbox/getting-started
tags: getting,started
published: True
position: 3
previous_url: editors-color-box-getting-started
---

# Getting Started with WinForms ColorBox

This article shows how you can start using **RadColorBox**.

## Adding Telerik Assemblies Using NuGet

To use `RadColorBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadColorBox

The following example demonstrates how to change the __ForeColor__  of __RadLabel__ by using the __RadColorBox__.
		
>caption Figure 1: Synchronize Color.

![WinForms RadColorBox Synchronize Color](images/editors-color-box-getting-started001.png)
 
1\. Drag __RadLabel__ and __RadColorBox__ to a form.

2\. Select the __RadColorBox__, click the __Events tab__ of the __Property Window__, locate the __ValueChanged__ event and double-click it to create an event handler. Replace the event handler with the following code. 

{{source=..\SamplesCS\Editors\ColorBox1.cs region=colorBoxValueChanged}} 
{{source=..\SamplesVB\Editors\ColorBox1.vb region=colorBoxValueChanged}} 

````C#
private void radColorBox1_ValueChanged(object sender, EventArgs e)
{
    this.radLabel1.ForeColor = this.radColorBox1.Value;
}

````
````VB.NET
Private Sub RadColorBox1_ValueChanged(sender As Object, e As EventArgs)
    Me.RadLabel1.ForeColor = Me.RadColorBox1.Value
End Sub

````

{{endregion}} 
 
3\. Press __F5__ to run the application. Press the color dialog button and select a color. The color is then applied as __ForeColor__ of the __RadLabel__.

#№ See Also

* [Design Time]({%slug winforms/editors/design-time%})
* [Structure]({%slug winforms/editors/structure%})
* [Properties and Events]({%slug winforms/editors/colorbox/working-with-radcolorbox%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ColorBox Component](https://www.telerik.com/products/winforms/colorbox.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

