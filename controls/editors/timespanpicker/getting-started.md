---
title: Getting Started
page_title: Getting Started - WinForms TimeSpanPicker Control
description: WinForms TimeSpanPicker is a UI component that provides a full control over picking a specific time span and duration. 
slug: radtimespanpicker-getting-started
tags: radtimespanpicker
published: True
position: 3
---

# Getting Started with WinForms TimeSpanPicker

This article shows how you can start using **RadTimeSpanPicker**.

## Adding Telerik Assemblies Using NuGet

To use `RadTimeSpanPicker` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadTimeSpanPicker

This topic will walk you through the process of creating of __RadTimeSpanPicker__.


1\. Create a blank new application and drop __RadTimeSpanPicker__ on the form. The layout should look like this.

![WinForms RadTimeSpanPicker Layout](images/radtimespanpicker-getting-started001.png)

2\. In the code behind set the value of the control. 

{{source=..\SamplesCS\Editors\TimeSpanCode.cs region=getting-started}} 
{{source=..\SamplesVB\Editors\TimeSpanCode.vb region=getting-started}}
````C#
this.radTimeSpanPicker1.Value = TimeSpan.FromDays(5);

````
````VB.NET
Me.radTimeSpanPicker1.Value = TimeSpan.FromDays(5)

```` 

{{endregion}} 

3\. You can start the application and enter a new value.

![WinForms RadTimeSpanPicker Getting Started](images/radtimespanpicker-getting-started002.png)

## See Also

* [Structure]({%slug radtimespanpicker-structure%})
* [Properties Methods and Events]({%slug radtimespanpicker-properties%})



## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Timespanpicker Component](https://www.telerik.com/products/winforms/timespanpicker.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

