---
title: Getting Started
page_title: Getting Started - WinForms Rating Control
description: WinForms Rating is a flexible UI component that allows users to place their rating by selecting from a finite number of items (stars, diamonds and hearts).
slug: winforms/track-and-status-controls/rating/getting-started
tags: getting,started
published: True
position: 3
previous_url: track-and-status-controls-rating-getting-started
---

# Getting Started with WinForms Rating

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadRating` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadRating

Below are the basic steps needed to get started with __RadRating__ control in Visual Studio:

1\. Drag __RadRating__ from the Visual Studio Toolbox to the form.

![WinForms RadRating Getting Started](images/rating-getting-started001.png)

1. Set the *Caption* to *“The best movie ever”*.

1. Set the **SelectionMode** property to *HalfItem*.

1. In the code behind subscribe to the **ValueChanged** event, where you can calculate and display the average rating:

#### Handling the ValueChanged event

<snippet id='track-and-status-controls-ratinggettingstarted-gettingstarted-cs' />
<snippet id='track-and-status-controls-ratinggettingstarted-gettingstarted-vb' />



5\. Press F5 to run the application.

![WinForms RadRating Getting Started Result](images/rating-getting-started002.png)

## See Also

* [Structure]({%slug winforms/splitcontainer/structure%})	
* [Design Time]({%slug winforms/track-and-status-controls/rating/design-time%})	

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Rating Component](https://www.telerik.com/products/winforms/rating.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Converter](https://www.telerik.com/products/winforms/documentation/ai-coding-assistant/converter/converter)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

