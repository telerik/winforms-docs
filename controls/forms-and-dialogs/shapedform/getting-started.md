---
title: Getting Started
page_title: Getting Started - WinForms ShapedForm
description: WinForms ShapedForm control allows you to design and display a Windows form with any conceivable shape.
slug: winforms/forms-and-dialogs/shapedform/getting-started
tags: getting,started
published: True
position: 1
previous_url: forms-and-dialogs-shapedform-getting-started
---

# Getting Started with WinForms ShapedForm 

This article shows how you can start using **ShapedForm**.

## Adding Telerik Assemblies Using NuGet

To use `ShapedForm` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the ShapedForm

To add a __ShapedForm__ to your project: 

1\. Create a new Windows Application in Visual Studio.

2\. Make sure your project includes a reference to __Telerik.WinControls__ and __Telerik.WinControls.UI__ libraries.
			

>note You can add these references automatically by adding any RadControl to the form.
>


3\. Right-click the default form and select __View Code__.

4\. __If you are working in C#:__ Change the declaration of the form so that it derives from the __Telerik.WinControls.UI.ShapedForm__ class.

5\. __If you are working in Visual Basic:__

1. Click the __Show All Files__ button in Solution Explorer.

1. Expand the Form1.vb node in Solution Explorer. 

1. Open the Form1.Designer.vb file by double-clicking it.

1. Change the declaration in the Form1.Designer.vb file so that it derives from the __Telerik.WinControls.UI.ShapedForm__ class: 
      			
#### Changing WinForms form to Telerik ShapedForm 

{{source=..\SamplesCS\Forms and Dialogs\ShapedForm1.Designer.cs region=shapedForm}} 
{{source=..\SamplesVB\Forms and Dialogs\ShapedForm1.Designer.vb region=shapedForm}} 

````C#
partial class ShapedForm1 : Telerik.WinControls.UI.ShapedForm

````
````VB.NET
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ShapedForm1
    Inherits Telerik.WinControls.UI.ShapedForm

````

{{endregion}} 

10\. Return to the design view of the form. Visual Studio will repaint the form without a title bar, indicating that it is now being derived from the __ShapedForm__ class.

11\. Press __F5__ to run the project.

## See Also

* [RadTitleBar]({%slug winforms/forms-and-dialogs/radtitlebar%})	


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ShapedForm Component](https://www.telerik.com/products/winforms/shapedform.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

