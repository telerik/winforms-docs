---
title: Getting Started
page_title: Getting Started - RadApplicationMenu
description: RadApplicationMenu is the Telerik counterpart of the application menu that displays controls used to perform actions on entire documents and forms, such as Save and Print. 
slug: winforms/menus/applicationmenu/getting-started
tags: applicationmenu
published: True
position: 3
---

# Getting Started with WinForms ApplicationMenu

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadApplicationMenu` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadApplicationMenu

The following tutorial demonstrates how to populate **RadApplicationMenu** and how to react to a user's choice in code.

1\. Drag **RadApplicationMenu** to a form and click the *Smart Tag*.
            

2\. Click the *Edit Items* button.
            

3\. Add a few items. 
            
>caption Figure 1: Adding items at design time

![WinForms RadApplicationMenu Adding items at design time](images/menus-application-menu-getting-started001.png)

4\. Apply different images for each item.

5\. In the *Properties* section in Visual Studio select the events button. Select the desired item from the *Properties* drop down and double click the **Click** event.

>caption Figure 2: Generate Click event handler:

![WinForms RadApplicationMenu Generate Click event handler](images/menus-application-menu-getting-started002.png)

6\. Replace the automatically generated event handler with this code:

#### Handling Click event

{{source=..\SamplesCS\Menus\AppMenu\ApplicationMenu.cs region=ItemClick}} 
{{source=..\SamplesVB\Menus\AppMenu\ApplicationMenu.vb region=ItemClick}} 

````C#
private void radMenuItem1_Click(object sender, EventArgs e)
{
    RadMenuItem item = sender as RadMenuItem;
    RadMessageBox.Show(item.Text + " is clicked!");
}

````
````VB.NET
Private Sub RadMenuItem1_Click(sender As Object, e As EventArgs) Handles RadMenuItem1.Click
    Dim item As RadMenuItem = TryCast(sender, RadMenuItem)
    RadMessageBox.Show(item.Text + " is clicked!")
End Sub

````

>caption Figure 2: Handling Click event

![WinForms RadApplicationMenu Handling Click event](images/menus-application-menu-getting-started002.gif)

## See Also

* [Populating with Data]({%slug winforms/menus/applicationmenu/populating-with-data%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ApplicationMenu Component](https://www.telerik.com/products/winforms/applicationmenu.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

