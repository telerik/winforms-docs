---
title: Getting Started
page_title: Getting Started - WinForms ToggleSwitch Control
description: WinForms ToggleSwitch is a control designed to represent two states - e.g. true/false, On/Off, etc.
slug: winforms/buttons/toggleswitch/getting-started
tags: getting,started
published: True
position: 3
previous_url: buttons-toggleswitch-getting-started
---

# Getting Started with WinForms ToggleSwitch

This article shows how you can start using `RadToggleSwitch`.

## Adding Telerik Assemblies Using NuGet

To use `RadToggleSwitch` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadToggleSwitch

You can add a __RadToggleSwitch__ to your form either at design time or at run time:
        

### Design Time

1. Drag a __RadToggleSwitch__ from the toolbox and drop it onto the surface of the form’s designer.
2. Double click the __RadToggleSwitch__ at design time in order to generate the __ValueChanged__ event handler.
            
### Run Time

Adding __RadToggleSwitch__ programmatically: create a new instance of __RadToggleSwitch__ and add it to the Form.__Controls__ collection:
            

#### Adding RadToggleSwitch programmatically 


{{source=..\SamplesCS\Buttons\ToggleSwitch.cs region=AddProgrammatically}} 
{{source=..\SamplesVB\Buttons\ToggleSwitch.vb region=AddProgrammatically}} 

````C#
            
Telerik.WinControls.UI.RadToggleSwitch toggleSwitch = new Telerik.WinControls.UI.RadToggleSwitch();
this.Controls.Add(toggleSwitch);

````
````VB.NET
Dim toggleSwitch As New Telerik.WinControls.UI.RadToggleSwitch()
Me.Controls.Add(toggleSwitch)

````

{{endregion}} 



>caption Figure 1: RadToggleSwitch added at run time

![WinForms RadToggleSwitch Added at Run Time](images/buttons-toggleswitch-overview002.png)

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Toggleswitch Component](https://www.telerik.com/products/winforms/buttons.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

