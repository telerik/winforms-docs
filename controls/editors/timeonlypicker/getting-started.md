---
title: Getting Started
page_title: Getting Started - WinForms TimeOnlyPicker Control
description: Learn how you can start using RadTimeOnlyPicker and use some of its common properties.
slug: editors-timeonlypicker-getting-started
tags: getting,started,timeonly
published: True
position: 3
---

# Getting Started with WinForms TimeOnlyPicker

This article shows how you can start using **RadTimeOnlyPicker**.

## Adding Telerik Assemblies Using NuGet

To use `RadTimeOnlyPicker` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadTimeOnlyPicker

This tutorial will demonstrate how to get started with __RadTimeOnlyPicker__ control, its functionalities and customization abilities:     

* Drag __RadTimeOnlyPicker__ from the toolbox to the form.

* Modify the desired minute’s interval by setting the __Step__ property.

* Set hour format by modifying the __Culture__ property. For example "en-US" uses 12 hour format while “en-GB” uses 24 hour format.

* Set the __ClockPosition__ property to *ClockAboveTables* to display the clock on the top of the popup.

* If needed you can set the __NullText__ property  this is the text which will be displayed in the control value is *null*

Here is how the control will look like, after the modifications:

![WinForms RadTimeOnlyPicker Getting Started](images/editors-timeonlypicker-getting-started001.png)

## See Also

* [Structure]({%slug editors-timeonlypicker-structure%})
* [Properties and Events]({%slug editors-timeonlypicker-properties-and-events%})
* [Localization]({%slug editors-timeonlypicker-localization%})

## Telerik UI for WinForms Learning Resources
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

