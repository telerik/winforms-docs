---
title: Getting Started
page_title: Getting Started - WinForms CheckBox Control
description: WinForms CheckBox is designed to provide an interface element that can represent an On or Off state using a check mark.
slug: winforms/buttons/checkbox/getting-started
tags: checkbox
published: True
position: 3
---

# Getting Started with WinForms CheckBox

This article shows how you can start using `RadCheckBox`.

## Adding Telerik Assemblies Using NuGet

To use `RadCheckBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadCheckBox

You can add __RadCheckBox__ either at design time or at run time:

### Design Time

1. To add a __RadCheckBox__ to your form, drag a __RadCheckBox__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section of Visual Studio you can change the displayed text next to the check-box by setting the __Text__ property.
3. Double click the check-box in the designer in order to generate the __ToggleStateChanged__ event.
4. Click `F5` to start the application.

### Run Time

To programmatically add a __RadCheckBox__ to a form, create a new instance of a __RadCheckBox__, and add it to the form __Controls__ collection.

#### Adding a RadCheckBox at runtime 

{{source=..\SamplesCS\Buttons\CheckBox.cs region=AddCheckBox}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=AddCheckBox}} 

````C#
public void AddCheckBox()
{
    RadCheckBox checkBox = new RadCheckBox();
    checkBox.ToggleState = Telerik.WinControls.Enumerations.ToggleState.On;
    checkBox.Text = "Is active";
    this.Controls.Add(checkBox);
}

````
````VB.NET
Public Sub AddCheckBox()
    Dim checkBox As New RadCheckBox()
    checkBox.ToggleState = Telerik.WinControls.Enumerations.ToggleState.[On]
    checkBox.Text = "Is active"
    Me.Controls.Add(checkBox)
End Sub

````

{{endregion}} 

## See Also

* [How to Change the CheckBox's Size]({%slug change-checkbox-size%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms CheckBox Component](https://www.telerik.com/products/winforms/buttons.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

