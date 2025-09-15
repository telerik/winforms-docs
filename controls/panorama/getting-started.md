---
title: Getting Started
page_title: Getting Started - WinForms Panorama Control
description: WinForms Panorama is a control that displays elements of type RadTileElement in a mosaic manner.
slug: winforms/panorama/getting-started
tags: getting,started
published: True
position: 4
previous_url: panorama-getting-started
---

# Getting Started with WinForms Panorama

This tutorial will help you to quickly get started using the control.

| RELATED VIDEOS |  |
| --- | ------ |
|[Getting started with RadPanorama ](http://www.telerik.com/videos/winforms/radpanorama-getting-started)![WinForms RadPanorama Tutorial](images/panorama-getting-started000.png)|In this video, we are going to see what it takes to get started with the RadPanorama. RadPanorama is a control that displays elements of type RadTileElement in a mosaic manner. This control is inspired by the Metro Start Menu screen of Windows 8.|

## Adding Telerik Assemblies Using NuGet

To use `RadPanorama` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadPanorama

This article will demonstrate how to get started with **RadPanorama**. You will be guided through the process of creating a sample application step-by-step.

1\. Let’s start by adding the **RadPanorama** control to the form and setting its __Dock__ property to *Fill* in the Properties window.

2\. Click **RadPanorama** and a small arrow will appear in the upper right corner. Open the **Smart Tag**.

3\. In the **Smart Tag** click the __Edit Groups__ link:

![WinForms RadPanorama Edit Groups Design Time](images/panorama-getting-started001.png)

4\. The **RadItem Collection Editor** will be opened. Add three groups and set their __Text__  properties to: *Tile, Live Tiles, Mixed*

![WinForms RadPanorama RadItem Collection Editor](images/panorama-getting-started002.png)

5\. Now, navigate to the __Items__ property of each group and add few items in it. In this case the first group will contain only __RadTileElements__, the  second group only __RadListTileElements__ and the third group both types of elements.

![WinForms RadPanorama Populate Items Collection](images/panorama-getting-started003.png)

6\. Then click `OK` to close the editor.

7\. Go back to the **Smart Tag** and check the __Show Groups__ check box. 

![WinForms RadPanorama Show Groups](images/panorama-getting-started004.png)

8\. Select each tile and in each tile’s **Smart Tag**, edit its __Column__, __Row__, __Column Span__ and __Row Span__ properties.

![WinForms RadPanorama Column Row Properties](images/panorama-getting-started005.png)

9\. Once you are done with the customization of the properties, if the size that the items need is greater than the control size, the scroll bar will automatically be shown: 

![WinForms RadPanorama Scroll Bar](images/panorama-getting-started006.png)

10\. The layout is done. You can customize each item according to your needs and also you can subscribe to the __Click__ event of each of them, in order to perform some action upon click. To customize **RadLiveTileElements**, you can use the [Live Tile Editor]({%slug winforms/panorama/live-tile-editor%}).

## See Also

* [Structure]({%slug winforms/panorama/structure%})	
* [Design Time]({%slug winforms/panorama/design-time%})		

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Panorama Component](https://www.telerik.com/products/winforms/panorama.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

