---
title: Getting Started
page_title: Getting Started - WinForms Panel Control
description: Learn how RadPanel can be added as a control either using the Visual Studio designer or be created programmatically 
slug: winforms/panels-and-labels/panel/getting-started
tags: getting started,radpanel
published: True
position: 3
---

# Getting Started with WinForms Panel

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadPanel` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadPanel

You can add a **RadPanel** either at design time or at run-time:

## Design Time

1. To add a **RadPanel** to your form, drag a **RadPanel** from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio change the **Dock** property of **RadPanel** to *Fill*.
3. Drag another control from the toolbox and place it on the panel.
4. Click `F5` to start the application.

## Run Time

To programmatically add a **RadPanel** to a form, create a new instance of a **RadPanel**, and add it to the form`s __Controls__ collection. Change its **Text**, **ForeColor**, and **BackColor** properties.

>caption Figure 1: RadPanel Run-time
![WinForms RadPanel Run-time](images/panels-and-labels-panel-getting-started001.png)

#### Adding a RadPanel at Run-time 

{{source=..\SamplesCS\PanelsAndLabels\Panel\PanelGettingStarted.cs region=AddPanel}} 
{{source=..\SamplesVB\PanelsAndLabels\Panel\PanelGettingStarted.vb region=AddPanel}}
````C#
RadPanel panel = new RadPanel();
this.Controls.Add(panel);
panel.ForeColor = Color.DarkBlue;
panel.BackColor = Color.LightBlue;
panel.PanelElement.PanelBorder.ForeColor = Color.Gray;
panel.Text = "I am a RadPanel!";

````
````VB.NET
Dim panel As New RadPanel()
Me.Controls.Add(panel)
panel.ForeColor = Color.DarkBlue
panel.BackColor = Color.LightBlue
panel.PanelElement.PanelBorder.ForeColor = Color.Gray
panel.Text = "I am a RadPanel!"

````



{{endregion}}

## Programming RadPanel

**RadPanel** shares most of the properties of the standard Windows Form Panel, including:

* The __BackColor__ property sets the background color of the control.

* The __BackgroundImage__ and __BackgroundImageLayout__ properties allow you to tile, center, stretch, or zoom an image across the control.

* The __ForeColor__ property sets the control`s text color.

* The __Text__ property sets the text in the control.

The example below has the **BackgroundImage** property set to the Progress logo.

>caption Figure 2: RadPanel BackgroundImage
![WinForms RadPanel BackgroundImage](images/panels-and-labels-panel-getting-started002.png)

# See Also

* [Design Time]({%slug winforms/panels-and-labels/panel/design-time%})
* [Structure]({%slug winforms/panels-and-labels/panel/structure%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Panel Component](https://www.telerik.com/products/winforms/panel.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

