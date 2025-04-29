---
title: Getting Started
page_title: Getting Started - WinForms SplitContainer Control
description: WinForms SplitContainer is a layout control which allows you to add many container panels to a form, separated by splitter(s).
slug: winforms/splitcontainer/getting-started
tags: getting,started
published: True
position: 3
previous_url: splitcontainer-getting-started
---

# Getting Started with WinForms SplitContainer

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadSplitContainer` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadSplitContainer


In this example we will position several **RadControls** in a specific layout using the **RadSplitContainer**:

1\. Drop a **RadSplitContainer** on your form.

2\. Click its **Smart Tag** to open the Action Menu. Notice that there is an option for the orientation of the **SplitPanels** in the **RadSplitContainer**. While it is set to '*Horizontal*' click twice on the **Add Panel** option. This will add two **SplitPanels** aligned horizontally in the **RadSplitContainer**.

![WinForms RadSplitContainer Smart Tag](images/splitcontainer-getting-started001.png)

3\. Now we want to have two **SplitPanels** aligned vertically in the place that is taken by the *SplitPanel2*. To do so, drag a new **RadSplitContainer** instance on the *SplitPanel2* and set its **Dock** property to *Fill*.

4\. Click on the **Smart Tag** of the second **RadSplitContainer** to open its Action Menu. Click on the '*Horizontal*' option to change it to '*Vertical*'. Now click twice on the **Add Panel** option. Since the alignment is set to '*Vertical*' the new **SplitPanels** will be aligned vertically.

![WinForms RadSplitContainer Add SplitPanels](images/splitcontainer-getting-started002.png)

5\. Drag and drop the desired controls on the **SplitPanels** and set their **Dock** property to *Fill*. Set the **Dock** property of the main **RadSplitContainer** to *Fill* as well. The result is shown on the screenshot below:

![WinForms RadSplitContainer Fill with Controls](images/splitcontainer-getting-started003.png)

# See Also

* [Structure]({%slug winforms/splitcontainer/structure%})	
* [Design Time]({%slug winforms/splitcontainer/design-time%})	

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms SplitContainer Component](https://www.telerik.com/products/winforms/split-container.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

