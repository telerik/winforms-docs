---
title: Toolbox Error in a .NET Framework Project
description: Learn how to deal with error after dragging a control from the toolbox and dropping it onto the form. 
type: how-to
page_title: Toolbox Error in a .NET Framework Project
slug: toolbox-error
position: 5
tags: toolbox, error, comexception, interop, services
ticketid: 1602936
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2023.1.117|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

When you drag a control from the toolbox and drop it onto the form in a .NET Framework project, it is possible to observe the following error: 

>caption Failed to create component

![toolbox-error002](images/toolbox-error002.png)

![toolbox-error001](images/toolbox-error001.gif)

This article gives more details why this may happen and how to deal with the error.

## Solution

Let's consider that we have a single version, **R1 2023 SP1 (version 2023.1.314)**, installed on the machine:

![toolbox-error003](images/toolbox-error003.png)

This means that in the installation folder of the Telerik UI for WinForms suite we will have the same version:

![toolbox-error004](images/toolbox-error004.png)

Telerik UI for WinForms controls are automatically added to Visual Studio's Toolbox during the [installation]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}) process when using **.NET 2.0 (up to 4.8) Framework** in your project. This means that the Toolbox population relies on the Telerik WinForms version available in the Global Assembly Cache:

>caption Toolbox Version

![toolbox-error005](images/toolbox-error005.png)

Then, while creating a new Telerik WinForms project, the VS template gives you the possibility to choose a version for the project which may not be only the installed one:

![toolbox-error006](images/toolbox-error006.png)

![toolbox-error007](images/toolbox-error007.png)

![toolbox-error008](images/toolbox-error008.png)

Navigate to **%AppData%** and then select **Telerik\Updates**. You are expected to see all versions that have been downloaded by VS extensions.

![toolbox-error009](images/toolbox-error009.png)

That is why the second option (**2023.1.413**) in the Version drop down is available:

![toolbox-error010](images/toolbox-error010.png) 

Now, we face a situation in which the Toolbox version is different than the version of the referred assemblies in the project. That is why when a control is dragged from the toolbox and dropped onto the form, the error is observed.

The possible solution is to unify the Toolbox version and the version of the assemblies referred in your project. You can do this by using one of the following approaches:

1. [Toolbox configurator]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/toolbox-configurator%}) - setup the Toolbox with the same version (**2023.1.413**).

	![toolbox-error011](images/toolbox-error011.png) 

2. Remove all references and add them anew by using the DLLs from your installation: [Updating Assemblies in a Project]({%slug winforms/installation-deployment-and-distribution/updating-assemblies-in-a-project%})
Delete the license.licx file. After that, you should rebuild your project, close Visual Studio and open it again to make sure that no references are kept in the memory by Visual Studio. 
>note Ensure that no old versions are available in GAC: [Examine the GAC and remove old assemblies]({%slug radcontrols-examine-the-gac%}).
>