---
title: Overview
page_title: .NET Support Overview
description: Telerik UI for WinForms support .NET 8 and later
slug: core-overview
tags: core, overview, .net, winforms
published: True
position: 1
---

# .NET Support Overview

**Telerik UI for WinForms** comes with support for **.NET 8** and later.

Telerik provides sets of assemblies built against each supported .NET version. To start using the Telerik controls in .NET, simply reference the appropriate Telerik NuGet package for your target framework and start building your application. Whether you're starting a new project or migrating from .NET Framework, Telerik controls will help you develop modern .NET apps, ensuring it can leverage the latest .NET features, performance improvements, and security enhancements. 

If you are interested in migrating your app to .NET, see the [Migrating to .NET]({%slug core-migration%}) article.

### .NET 8 Requirements

To use the Telerik UI for WinForms assemblies targeting .NET 8, the following prerequisites must be installed.

* The latest [.NET 8 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/8.0).

* [Visual Studio](https://visualstudio.microsoft.com/downloads/) 2022 (v17.2 or newer).

* The latest version of **Telerik UI for WinForms NuGet package** available at [Telerik NuGet server](https://nuget.telerik.com/v3/index.json).

### .NET 9 Requirements

To use the Telerik UI for WinForms assemblies targeting .NET 9, the following prerequisites must be installed.

* The latest [.NET 9 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/9.0).

* [Visual Studio](https://visualstudio.microsoft.com/downloads/) 2022 (v17.2 or newer).

* The latest version of **Telerik UI for WinForms NuGet package** available at [Telerik NuGet server](https://nuget.telerik.com/v3/index.json).

### Design-Time Support and Visual Studio ToolBox

The Telerik controls can be drag/dropped from the Visual Studio Toolbox. To enable this under .NET you will need to reference the Telerik dlls via nuget package. Installing the nuget packages will add the corresponding controls in the toolbox. Drag and drop from the toolbox is available only for the projects that have the Telerik nuget packages installed.

Additionally, the Telerik controls introduce customized design-time support as using smart tags, design-time selection, and also the standard control properties that can be changed through the Visual Studio Designer.

>important For more information about design-time support and Visual Studio ToolBox see [Design Time]({%slug core-design-time%})

## See Also

* [Design Time]({%slug core-design-time%})
* [New Telerik UI for WinForms Designers for .NET Core and .NET 5.0](https://www.telerik.com/blogs/new-telerik-ui-for-winforms-designers-dotnet-core-dotnet-5)
* [Migrating to .NET Core]({%slug core-migration%})
* [Windows Forms Designer for .NET Core Released](https://devblogs.microsoft.com/dotnet/windows-forms-designer-for-net-core-released/)
