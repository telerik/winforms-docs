---
title: Getting Started
page_title: Getting Started - WinForms Button Control
description: WinForms Button is a themable replacement of the standard WinForms Button. It can be clicked by using the mouse, Enter key, or Spacebar, if the button has focus.
slug: winforms/buttons/button/getting-started
tags: button, getting-started
published: True
position: 4 
---

# Getting Started with WinForms Button

This article shows how you can start using `RadButton`.

## Adding Telerik Assemblies Using NuGet

To use `RadButton` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the __RadButton__

You can add __RadButton__ either at design time or at run time:

### Design Time

1. To add a __RadButton__ to your form, drag a __RadButton__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio change the __Text__ property of __RadButton__.
3. Double click the button to generate the __Click__ event handler. Add the desired code to perform the required action.
4. Click `F5` to start the application.

### Run Time

To programmatically add a __RadButton__ to a form, create a new instance of a __RadButton__, and add it to the form __Controls__ collection. Subscribe to its __Click__ event in order to perform the required action, e.g. showing a message box:

#### Adding a RadButton at runtime 

{{source=..\SamplesCS\Buttons\Button.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\Button.vb region=creatingbutton}} 

````C#
RadButton myNewRadButton = new RadButton();
myNewRadButton.Text = "My New RadButton";
myNewRadButton.Width = 150;
myNewRadButton.Height = 50;
this.Controls.Add(myNewRadButton);
myNewRadButton.Click+=myNewRadButton_Click;

````
````VB.NET
Dim myNewRadButton As New RadButton()
myNewRadButton.Text = "My New RadButton"
myNewRadButton.Width = 150
myNewRadButton.Height = 50
Me.Controls.Add(myNewRadButton)
AddHandler myNewRadButton.Click, AddressOf myNewRadButton_Click

````

{{endregion}} 

{{source=..\SamplesCS\Buttons\Button.cs region=ButtonClick}} 
{{source=..\SamplesVB\Buttons\Button.vb region=ButtonClick}} 

````C#
private void myNewRadButton_Click(object sender, EventArgs e)
{
    RadMessageBox.Show("Clicked");
}

````
````VB.NET
Private Sub myNewRadButton_Click(sender As Object, e As EventArgs)
    RadMessageBox.Show("Clicked")
End Sub

````

{{endregion}} 


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Button Component](https://www.telerik.com/products/winforms/buttons.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

