---
title: Getting Started
page_title: Getting Started - WinForms ImageEditor Control
description: WinForms ImageEditor encapsulates the entire image editing logic.
slug: radimageeditor-getting-started
tags: getting,started
published: True
position: 2
---

# Getting Started with WinForms ImageEditor

This article shows how you can start using **RadImageEditor**.

## Adding Telerik Assemblies Using NuGet

To use `RadImageEditor` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadImageEditor

__RadImageEditor__ control encapsulates the entire image editing logic. In order to use it in your application you have to add references to:

The control offers a set of operations you can perform on an image which is loaded in the editor. 

>important Since **R3 2018** `Save` button behaves like `Save As`.

To use the __RadImageEditor__ just drop it from the toolbox on your form. The control already contains UI for editing the image. Once your application is started you can click the open button and load image in the control.

![WinForms RadImageEditor Getting Started](images/image-editor-getting-started001.png)


## See Also

* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
* [How to Get Click Coordinates Relative to the Image]({%slug get-clicked-image-coordinates%})
* [How to Edit a Multi-page TIFF Image]({%slug edit-multi-page-tiff-image%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ImageEditor Component](https://www.telerik.com/products/winforms/image-editor.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

