---
title: Getting Started
page_title: Getting Started - WinForms PipsPager Control
description: Get started with the WinForms PipsPager control.
slug: pipspager-getting-started
tags: pipspager
published: True
position: 3 
---

# Getting Started

This article shows how you can start using __RadPipsPager__.

## Adding Telerik Assemblies Using NuGet

To use `RadPipsPager` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadPipsPager

The following result will be achieved at the end of this tutorial:

![WinForms PipsPager Getting Started](images/pipspager-getting-started.gif)

>important When using Bound Mode the PipsPager automatically changes the __Position__ of the BindingSource. In unbound mode, the __NumberOfPages__ property determines the amount of items and the __SelectedIndexChanged__ events need to be handled to get notified when the user changes the selected Pips Pager Item.

RadPipsPager allows you to navigate the records of any collection by setting its __BindingSource__ property. Usually, it is used together with a [RadSlideView]({%slug slideview-overview%}).

Follow the steps:

1\. Go ahead and add a RadSlideView, a RadPipsPager and a BindingSource from the toolbox.

2\. Set __DataSource__ for the BindingSource to a collection of records. 

3\. Define __TemplateElement__ for the RadSlideView. This is actually the visual element that represents the UI for the current item. For simplicity of this example, we will use a LightVisualElement for displaying the Title.

4\. Define a __Mapping__ for RadSlideView to link the TemplateElement with the respective data field. 

5\. Set the __BindingSource__ property of RadSlideView and RadPipsPager. 

<snippet id='slideview-gettingstartedgallery-pipsslider-cs' />
<snippet id='slideview-gettingstartedgallery-pipsslider-vb' />



>note More advanced TemplateElement is demonstrated in the Demo application >> SlideView/ PipsPager >> First look example which also shows the smooth integration between RadSlideView and [RadPipsPager]({%slug pipspager-overview%}).


## See Also

* [Structure]({%slug pipspager-structure%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Pipspager Component](https://www.telerik.com/products/winforms/pipspager.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

