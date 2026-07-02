---
title: Getting Started
page_title: Getting Started - WinForms TreeMap Control
description: Get familiar with the WinForms TreeMap.  
slug: winforms-treemap-getting-started
tags: treemap, getting, started
published: True
position: 2
---

# Getting Started with WinForms TreeMap

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadTreeMap` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadTreeMap

This article shows how you can start using **RadTreeMap**. Just drag a RadTreeMap from the toolbox and drop it onto the form. Then, define the sample data in a DataTable and bind the control:

>important **RadTreeMap** is supported in .NET Framework 4.0 (or higher). 

![WinForms RadTreeMap Getting Started](images/treemap-getting-started001.png)

<snippet id='treemap-treemapgettingstarted-populate-cs' />
<snippet id='treemap-treemapgettingstarted-populate-vb' />



## See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms TreeMap Component](https://www.telerik.com/products/winforms/treemap.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Converter](https://www.telerik.com/products/winforms/documentation/ai-coding-assistant/converter/converter)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

