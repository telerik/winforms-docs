---
title: Getting Started
page_title: Getting Started - WinForms RepeatButton Control
description: Learn how to get started with the WinForms RepeatButton.
slug: winforms/buttons/repeatbutton/working-with-radrepeatbutton
tags: working,with,radrepeatbutton
published: True
position: 3
previous_url: buttons-repeatbutton-working-with-radrepeatbutton
---

# Getting Started with WinForms RepeatButton

This article shows how you can start using `RadRepeatButton`.

## Adding Telerik Assemblies Using NuGet

To use `RadRepeatButton` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadRepeatButton

You can add __RadRepeatButton__ either at design time or at run time:

### Design Time

1. To add a __RadRepeatButton__ to your form, drag a __RadRepeatButton__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio you can change the __Text__ property.
3. Double click the __RadRepeatButton__ at design time in order to generate the __Click__ event handler.
4. Click `F5` to start the application.

### Run Time

To programmatically add a __RadRepeatButton__ to a form, create a new instance of a __RadRepeatButton__, and add it to the form __Controls__ collection.

#### Adding a RadButton at runtime 

{{source=..\SamplesCS\Buttons\RepeatButton.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\RepeatButton.vb region=creatingbutton}} 

````C#
RadRepeatButton repeatButton = new RadRepeatButton();
repeatButton.Text = "Increase value";
this.Controls.Add(repeatButton);

````
````VB.NET
Dim repeatButton As New RadRepeatButton()
repeatButton.Text = "Increase value"
Me.Controls.Add(repeatButton)

````

{{endregion}} 

### Working with RadRepeatButton

In addition to the standard properties shared by all buttons, notice a new property named __Interval__. This property determines the time, in milliseconds, between button click events after the control begins repeating events. The default value is 33.

To begin the repeat process, use the __ButtonClick__ event instead of __Click__. To create an event handler for this event, change the filter in the Property Grid to __Events__ and find the entry for __ButtonClick__. Double-click in the empty value drop-down list for the property to have the designer create a method to handle __ButtonClick__.

The following code illustrates the use of a __RadRepeatButton__ to manipulate a __ProgressBar__ control. At each interval the __ProgressBar__ value will increment. You do not need to write any additional code to handle the repeating event. As long as the mouse button is pressed down on the __RepeatButton__ control, the code in the __ButtonClick__ event handler will run at each interval. 


{{source=..\SamplesCS\Buttons\RepeatButton.cs region=handlingClickEvent}} 
{{source=..\SamplesVB\Buttons\RepeatButton.vb region=handlingClickEvent}} 

````C#
void radRepeatButton1_Click(object sender, EventArgs e)
{
    if (radProgressBar1.Value1 < radProgressBar1.Maximum)
    {
        radProgressBar1.Value1++;
    }
    else
    {
        radProgressBar1.Value1 = radProgressBar1.Minimum;
    }
}

````
````VB.NET
Private Sub radRepeatButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    If radProgressBar1.Value1 < radProgressBar1.Maximum Then
        System.Math.Max(System.Threading.Interlocked.Increment(radProgressBar1.Value1), radProgressBar1.Value1 - 1)
    Else
        radProgressBar1.Value1 = radProgressBar1.Minimum
    End If
End Sub

````

{{endregion}} 

![WinForms RadRepeatButton Overview](images/buttons-repeatbutton-overview001.gif)

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms RepeatButton Component](https://www.telerik.com/products/winforms/buttons.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

