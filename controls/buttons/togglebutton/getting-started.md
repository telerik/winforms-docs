---
title: Getting Started
page_title: Getting Started - WinForms ToggleButton Control
description: WinForms ToggleButton is designed to manage states on your form. It shares many features with the RadCheckBox, but provides a different visual effect than the standard check mark. 
slug: winforms/buttons/togglebutton/getting-started
tags: togglebutton
published: True
position: 3 
---

# Getting Started with WinForms ToggleButton

This article shows how you can start using `RadToggleButton`.

## Adding Telerik Assemblies Using NuGet

To use `RadToggleButton` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadToggleButton

You can add __RadToggleButton__ either at design time or at run time:

### Design Time

1. To add a __RadToggleButton__ to your form, drag a __RadToggleButton__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio you can change the __Text__ property.
3. Double click the __RadToggleButton__ at design time in order to generate the __ToggleStateChanged__ event handler.

### Run Time

To programmatically add a __RadToggleButton__ to a form, create a new instance of a __RadToggleButton__, and add it to the form __Controls__ collection.

#### Adding a RadToggleButton at runtime 

{{source=..\SamplesCS\Buttons\ToggleButton.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\ToggleButton.vb region=creatingbutton}} 

````C#
RadToggleButton myToggleButton = new RadToggleButton();
myToggleButton.Text = "Pin";
myToggleButton.Width = 150;
myToggleButton.Height = 50;
this.Controls.Add(myToggleButton);

````
````VB.NET
Dim myToggleButton As New RadToggleButton()
myToggleButton.Text = "Pin"
myToggleButton.Width = 150
myToggleButton.Height = 50
Me.Controls.Add(myToggleButton)

````

{{endregion}} 


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ToggleButton Component](https://www.telerik.com/products/winforms/buttons.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

