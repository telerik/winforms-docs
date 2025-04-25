---
title: Getting Started
page_title: Getting Started - WinForms MessageBox
description: WinForms MessageBox displays a modal dialog box that contains a system icon, a set of buttons, and a brief application-specific message, such as status or error information.
slug: winforms/forms-and-dialogs/messagebox/getting-started
tags: getting,started
published: True
position: 2
previous_url: forms-and-dialogs-messagebox-getting-started
---

# Getting Started with WinForms MessageBox

This article shows how you can start using **RadMessageBox**.

## Adding Telerik Assemblies Using NuGet

To use `RadMessageBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadMessageBox

The following tutorial will show you a simple usage of __RadMessageBox__:

1\. Create a new Windows Application in Visual Studio

2\. Drag and drop a __RadButton__ on the form.

3\. Subscribe to the __Click__ event of this __RadButton__.

4\. Make sure that you import/use the following namespaces 

{{source=..\SamplesCS\Forms and Dialogs\MessageBox1.cs region=namespace}} 
{{source=..\SamplesVB\Forms and Dialogs\MessageBox1.vb region=namespace}} 

````C#
using Telerik.WinControls;

````
````VB.NET
Imports Telerik.WinControls

````

{{endregion}} 
 

5\. In the RadButton.__Click__ event handler, first set the theme of the __RadMessageBox__ and then call its static __Show__ method of the __RadMessageBox__ class, passing the appropriate parameters. Set the RadMessageBox.__Show__ method to a __DialogResult__ variable: 

#### Setting a theme and showing RadMessageBox 

{{source=..\SamplesCS\Forms and Dialogs\MessageBox1.cs region=workingWithRadMessageBox}} 
{{source=..\SamplesVB\Forms and Dialogs\MessageBox1.vb region=workingWithRadMessageBox}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    RadMessageBox.SetThemeName("Desert");
    
    DialogResult ds = RadMessageBox.Show(this, "Are you sure?", "Title", MessageBoxButtons.YesNo, RadMessageIcon.Question);
    this.Text = ds.ToString();
}

````
````VB.NET
Private Sub RadButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton1.Click
    RadMessageBox.SetThemeName("Desert")
    Dim ds As DialogResult = RadMessageBox.Show(Me, "Are you sure?", "Title", MessageBoxButtons.YesNo, RadMessageIcon.Question)
    Me.Text = ds.ToString()
End Sub

````

{{endregion}} 

6\. The result RadMessageBox is shown below:
    
![WinForms RadMessageBox Getting Started](images/forms-and-dialogs-messagebox-getting-started001.png)

# See Also

* [Parameters]({%slug winforms/forms-and-dialogs/messagebox/parameters%})



## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms MessageBox Component](https://www.telerik.com/products/winforms/messagebox.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

