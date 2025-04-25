---
title: Getting Started
page_title: Getting Started - WinForms RibbonForm
description: WinForms RibbonForm control is designed to host a RadRibbonBar control and mimic the Microsoft Office 2007 UI form style.
slug: winforms/forms-and-dialogs/ribbonform/getting-started
tags: getting,started
published: True
position: 2
previous_url: forms-and-dialogs-ribbonform-getting-started
---

# Getting Started with WinForms RibbonForm

This article shows how you can start using **RadRibbonForm**.

## Adding Telerik Assemblies Using NuGet

To use `RadRibbonForm` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadRibbonForm

There are three ways in which you can use the __RadRibbonForm__ control:

1. Change the base class of a standard Windows Form to __Telerik.WinControls.UI.RadRibbonForm__

1. Drop a __RadRibbonBar__ control on a __RadForm__ control
          
1. Add a new __RadRibbonForm__ item to your project by right-clicking on the Project’s node in the Solution Explorer and selecting the "Add" option from the context menu.
          
###  Drag-and-Drop a RadRibbonBar Control on a RadForm

When you add a __RadRibbonBar__ control on a __RadForm__ the Visual Studio Designer pops up a dialog which asks you whether you would like to switch the form’s behavior to __RadRibbonFormBehavior:__

![WinForms RadRibbonForm Drag-and-Drop](images/forms-and-dialogs-ribbonform-getting-started001.png)

After you choose to replace the form's default behavior with a __RadRibbonFormBehavior__, the __RadForm__ is transformed to a __RadRibbonForm__:

![WinForms RadRibbonForm RadRibbonFormBehavior](images/forms-and-dialogs-ribbonform-getting-started002.png)

Switching to __RadRibbonFormBehavior__ does not change the base class to __RadRibbonForm__ but enables the __RadRibbonForm__ functionality on the __RadForm__ control.


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms RibbonForm Component](https://www.telerik.com/products/winforms/ribbonform.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

