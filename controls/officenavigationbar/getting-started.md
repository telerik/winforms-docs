---
title: Getting Started
page_title: Getting Started - WinForms OfficeNavigationBar Control
description: Get started with the WinForms OfficeNavigationBar and construct your step layout navigation.   
slug: officenavigationbar-getting-started
tags: officenavigationbar
published: True
position: 2
CTAControlName: OfficeNavigationBar
---

# Getting Started with WinForms OfficeNavigationBar

This tutorial will walk you through the creation of a sample application that contains __RadOfficeNavigationBar__.

## Adding Telerik Assemblies Using NuGet

To use `RadOfficeNavigationBar` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadOfficeNavigationBar

The following picture shows the final result produced by the code of this tutorial.

![WinForms RadOfficeNavigationBar Sample Overview](images/officenavigationbar-getting-started001.png)

>note The design may vary according to the applied theme to the application. 

## Defining RadOfficeNavigationBar

To start using the __RadOfficeNavigationBar__ control, you can just populate its __Pages__ collection with __RadPageViewPage__ objects. 

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=GettingStarted}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=GettingStarted}} 

````C#

	RadOfficeNavigationBar radOfficeNavigationBar = new RadOfficeNavigationBar();
	var page1 = new RadPageViewPage() { Text = "Mail" };
	page1.Controls.Add(new Label() {Text="Mail" });
	var page2 = new RadPageViewPage() { Text = "Calendar" };
	page2.Controls.Add(new Label() { Text = "Calendar" });
	var page3 = new RadPageViewPage() { Text = "People" };
	page3.Controls.Add(new Label() { Text = "People" });
	var page4 = new RadPageViewPage() { Text = "Tasks" };
	page4.Controls.Add(new Label() { Text = "Tasks" });
	radOfficeNavigationBar.Controls.Add(page1);
	radOfficeNavigationBar.Controls.Add(page2);
	radOfficeNavigationBar.Controls.Add(page3);
	radOfficeNavigationBar.Controls.Add(page4);
	this.Controls.Add(radOfficeNavigationBar);

````
````VB.NET

	Dim radOfficeNavigationBar As RadOfficeNavigationBar = New RadOfficeNavigationBar()
    Dim page1 = New RadPageViewPage() With {
        .Text = "Mail"
    }
    page1.Controls.Add(New Label() With {
        .Text = "Mail"
    })
    Dim page2 = New RadPageViewPage() With {
        .Text = "Calendar"
    }
    page2.Controls.Add(New Label() With {
        .Text = "Calendar"
    })
    Dim page3 = New RadPageViewPage() With {
        .Text = "People"
    }
    page3.Controls.Add(New Label() With {
        .Text = "People"
    })
    Dim page4 = New RadPageViewPage() With {
        .Text = "Tasks"
    }
    page4.Controls.Add(New Label() With {
        .Text = "Tasks"
    })
    radOfficeNavigationBar.Controls.Add(page1)
    radOfficeNavigationBar.Controls.Add(page2)
    radOfficeNavigationBar.Controls.Add(page3)
    radOfficeNavigationBar.Controls.Add(page4)
    Me.Controls.Add(radOfficeNavigationBar)


````

{{endregion}} 

## See Also

* [Design Time]({%slug officenavigationbar-design-time%}) 
 
        

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms OfficeNavigationBar Component](https://www.telerik.com/products/winforms/officenavigationbar.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

