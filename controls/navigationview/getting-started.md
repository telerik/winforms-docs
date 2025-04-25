---
title: Getting Started
page_title: Getting Started - RadNavigationView
description: Learn how to add pages to the WinForms NavigationView.   
slug: navigationview-getting-started
tags: navigationview, getting, started
published: True
position: 2 
---

# Getting Started with WinForms NavigationView

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadNavigationView` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadNavigationView

To start using **RadNavigationView**, just drag it from the toolbox and drop it onto the form.

1\. Select the RadNavigationView control and click the small arrow on the top right position in order to open the Smart Tag. It allows you to add/remove pages and adjust the settings relevant for the [NavigationView]({%slug winforms/pageview/navigationview%})	 

![WinForms RadNavigationView Design Time](images/navigationview-getting-started001.png)

2\. The *Properties* section in Visual Studio gives access to the *RadPageView Collection Editor*:

![WinForms RadNavigationView Properties Window](images/navigationview-getting-started002.png)

It is possible to add/remove pages, change the page's text, image, etc.

![WinForms RadNavigationView Page Collection Editor Window](images/navigationview-getting-started003.png)

3\. Once you are done with the changes, press the OK button to confirm the changes and close the collection editor:

![WinForms RadNavigationView Sample](images/navigationview-getting-started004.png)

Now, each page has an associated content area (on the right) where the developer can build whatever design is required for the page. Just select the page and drag the necessary controls.  

## See Also

* [Navigation View]({%slug winforms/pageview/navigationview%})	 
* [Structure]({%slug navigationview-structure%})




## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms NavigationView Component](https://www.telerik.com/products/winforms/navigationview.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

