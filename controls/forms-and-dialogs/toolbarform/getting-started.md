---
title: Getting Started
page_title: Getting Started - WinForms ToolbarForm
description: WinForms ToolbarForm allows to display tab items directly in the title bar  
slug: radtoolbarform-getting-started
tags: radtoolbarform
published: True
position: 3
---

# Getting Started with WinForms ToolbarForm

This article shows how you can start using **RadToolbarForm**.

## Adding Telerik Assemblies Using NuGet

To use `RadToolbarForm` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadToolbarForm

This topic will walk you through the creating process of RadToolbarForm.

1\. Create a blank new Telerik WinForms application using the standard template. 

2\. Add a new Toolbar form from Visual Studio. Go to __Project -> Add Windows Form__ and then select Telerik RadToolbarForm.

![WinForms RadToolbarForm VS Template](images/winforms-radtoolbarform-vs-template.png)

3\. From the __Smart Tag__ we can populate each of the three sections of the RadToolbarForm.

![WinForms RadToolbarForm Getting Started Smart Tag](images/winforms-radtoolbarform-getting-started-smart-tag.png)

4\. From the __Collection Editor__ window you can choose from a variety of elements to populate each of the three sections of the control.

![WinForms RadToolbarForm Collection Editor](images/winforms-radtoolbarform-collection-editor.png)

5\. Go to the Program.cs and change the startup form. 

![WinForms RadToolbarForm Startup Form](images/winforms-radtoolbarform-start-up-form.png)

In VB.NET this can be done from the project's properties.

![WinForms RadToolbarForm VB Startup Form](images/winforms-radtoolbarform-vb-start-up-form.png)

5\. Start the application.

![WinForms RadToolbarForm Getting Started](images/winforms-radtoolbarform-getting-started.png)

## See Also

* [Structure]({%slug radtoolbarform-structure%})
* [Design Time]({%slug  radtoolbarform-design-time%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Toolbarform Component](https://www.telerik.com/products/winforms/toolbarform.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

