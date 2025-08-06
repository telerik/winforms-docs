---
title: Design Time 
page_title: NET Design Time
description:   
slug: core-design-time
tags: core, designer, net, winforms
published: True
position: 2
---

# Design Time

Telerik UI for WinForms fully supports the Visual Studio .NET WinForms designer. All Telerik designers have been migrated, and all of our controls are available in the toolbox at design time. Specialized control designers, action lists, property builders, smart tags and editors provide a design-time experience in .NET that matches the capabilities available in .NET Framework, enabling our customers to take advantage of the new enhancements in the latest .NET.

>caption Figure 1: RadGridView .NET Designer

![core-designer001](images/core-designer001.png)

## Requirements

The design time assemblies in .NET are resolved via the installed in the project NuGet packages. This means that toolbox is populated from the Telerik UI controls added to the referenced Telerik NuGet package/s. In order use the designers in .NET, please make sure that the following requirements are met:

*  **Visual Studio 2022 v17.0 and newer**
   
* **Telerik UI for WinForms NuGet package installed in the project**: [Install using NuGet Packages]({%slug winforms/nuget%})
    * **UI.for.WinForms.AllControls.Net**** package wraps all Telerik assemblies for specific .Net version in one package. For more information see [Available NuGet Packages]({%slug winforms-available-nugets%})

>note For best results, use the latest version of Telerik UI for WinForms Nuget package and latest Visual Studio 2022 version.

>caption Figure 2: TelerikWinFormsApp in .NET using UI.for.WinForms.AllControls.Net90

![core-designer002](images/core-designer002.png)
  
    >caution Even though you may have an installation of the Telerik UI for WinForms suite, it is not enough to load the designer. It requires installing Telerik UI for WinForms NuGet package.


## Tips and Tricks

Note that the design-time assemblies are resolved from the installed NuGet packages by the new Microsoft SDK which is part of Visual Studio. It is recommended to close all the opened designers when you are about to install or update our NuGets. The same is also true when rebuilding the project. Please have in mind that if you have a designer opened and you rebuild the project, this will kill the .NET Core process hosting the design server, ultimately this will lead to restarting the design surface by starting a new server process. If your form has a complex designer this may slow down Visual Studio so you may consider closing the designers before rebuilding the application. 

>important The new architecture is described in more details in our [New Telerik UI for WinForms Designers for .NET Core and .NET 5.0](https://www.telerik.com/blogs/new-telerik-ui-for-winforms-designers-dotnet-core-dotnet-5) blog.


## See Also

* [New Telerik UI for WinForms Designers for .NET Core and .NET 5.0](https://www.telerik.com/blogs/new-telerik-ui-for-winforms-designers-dotnet-core-dotnet-5)
* [Migrating to .NET Core]({%slug core-migration%})
* [Windows Forms Designer for .NET Core Released](https://devblogs.microsoft.com/dotnet/windows-forms-designer-for-net-core-released/)
* [How to Handle NETSDK1141 Error]({%slug netsdk1141-error%})
* [How to Build Custom Telerik Assemblies when Using .NET Core and Enable Design Time Experience]({%slug build-custom-assemblies-for-net-core%})
