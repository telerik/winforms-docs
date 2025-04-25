---
title: Getting Started
page_title: Getting Started - WinForms TextBox Control
description: WinForms TextBox is a improve control of the standard WinForms TextBox. 
slug: winforms/editors/textbox/getting-started
tags: textbox, getting-started
published: True
position: 3
---

# Getting Started with WinForms TextBox

This article shows how you can start using **RadTextBox**.

## Adding Telerik Assemblies Using NuGet

To use `RadTextBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadTextBox

You can add __RadTextBox__ either at design time or at run time:

### Design Time

1. To add a __RadTextBox__ to your form, drag a __RadTextBox__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio change the __Text__ property of __RadTextBox__.
3. Click `F5` to start the application.

### Run Time

To programmatically add a __RadTextBox__ to a form, create a new instance of a __RadTextBox__, and add it to the form __Controls__ collection. 

#### Adding a RadTextBox at runtime 

````C#
RadTextBox myNewRadTextBox = new RadTextBox();
this.Controls.Add(myNewRadTextBox);

````
````VB.NET
Dim myNewRadTextBox As New RadTextBox()
Me.Controls.Add(myNewRadTextBox)

````

{{endregion}} 



## Telerik UI for WinForms Learning Resources
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

