---
title: Adding RadControls to Visual Studio Toolbox in .NET Projects
page_title: NET Toolbox Version
description: Learn how to manage and update toolbox versions in Telerik UI for WinForms to ensure compatibility and smooth integration in your projects.
slug: core-toolbox-version
tags: core, designer, toolbox, net, .NET, winforms
published: True
position: 4
---

# Adding RadControls to Visual Studio Toolbox in .NET Projects

Telerik UI for WinForms controls used to be automatically added to Visual Studio's Toolbox during the [installation]({%slug winforms/installation-deployment-and-distribution/adding-radcontrols-to-visual-studio-toolbox%}) process when using **.NET Framework (up to 4.8)** in your project. This means that the Toolbox population relies on the Telerik WinForms version available in the Global Assembly Cache.

With the introduction of .NET and the Visual Studio .NET WinForms designer, the Toolbox configuration doesn't rely on the GAC anymore and it is not necessary to have an installation of the Telerik UI for WinForms suite. The design time assemblies in .NET are resolved via the installed in the project NuGet packages.

>important In order to enable the .NET WinForms Designer, please get familiar with the requirements here: [Design Time]({%slug core-design-time%}).

## Toolbox Version

The Toolbox version depends on the version of installed NuGet package:

>caption Toolbox version R3 2020 SP1 (2020.3.10.20)

![core-toolbox-version001](images/core-toolbox-version001.png)

For example, if you have the UI.for.WinForms.AllControls.NetCore and you want to get another version in the Toolbox, it is necessary to:

1\. Remove the current version of the **UI.for.WinForms.AllControls.Net** package:

![core-toolbox-version002](images/core-toolbox-version002.png)

2\. Install the desired NuGet version: [Install using NuGet Packages]({%slug winforms/nuget%})

>caption Install UI.for.WinForms.AllControls.Net90 vQ2 2025 (2025.2.520)
![core-toolbox-version003](images/core-toolbox-version003.png)

3\. Rebuild the project.

>note The same approach is also valid for the other Telerik UI for WinForms packages, e.g. UI.for.WinForms.AllControls.Net80, UI.for.WinForms.Common, etc.

## Troubleshooting Visual Studio Toolbox

#### Issue: Telerik controls for UI for WinForms are not visible in Toolbox after upgrade

After installing or updating the Telerik NuGet, controls will automatically appear in the Toolbox, with no further action required by you. However, you may experience issues with missing Telerik items in the Toolbox at design time. 

#### Solution

The *Automatically Populate Toolbox* option affects whether controls are populated in the .NET Core designer. If set to *false* the Telerik controls are not visible in the Toolbox. It is necessary to ensure that ***Automatically Populate Toolbox*** is set to ***True*** in the Visual Studio. 

In Visual Studio 2022 navigate to *Tools >> Options >> Windows Forms Designer*:

![core-toolbox-version004](images/core-toolbox-version004.png)

## See Also

* [Design Time]({%slug core-design-time%})
* [Migrating to .NET Core]({%slug core-migration%})
* [Windows Forms Designer for .NET Core Released](https://devblogs.microsoft.com/dotnet/windows-forms-designer-for-net-core-released/)
* [Handle Toolbox Issues with .NET Core]({%slug toolbox-issues-with-net-core%})
* [How to Build Custom Telerik Assemblies when Using .NET Core and Enable Design Time Experience]({%slug build-custom-assemblies-for-net-core%})
