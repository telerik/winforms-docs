---
title: Design Time 
page_title: NET Core Design Time
description:   
slug: core-design-time
tags: core, designer
published: True
position: 1
---

# Design Time

Telerik UI for WinForms supports the Visual Studio .NET Core WinForms designer. All of the Telerik designers are migrated and the controls are populated in the toolbox. We have special control designers, action lists, property builders and editors matching the design time experience you see on the full .NET framework. 

## Requirements

The design time assemblies in .NET Core are resolved via the installed in the project NuGet packages. In order use the new designers, please make sure that the following requirements are met:

*  **Visual Studio 2019 Preview, version 16.8 Preview 3 or newer**: [https://visualstudio.microsoft.com/vs/preview](https://visualstudio.microsoft.com/vs/preview/)
    - Don’t forget to enable the designer in *Tools > Options > Environment > Preview Features*.
* **Telerik UI for WinForms NuGet installed in the project**: [https://docs.telerik.com/devtools/winforms/visual-studio-integration/install-using-nuget](https://docs.telerik.com/devtools/winforms/visual-studio-integration/install-using-nuget)
     - Telerik UI for Winforms R3 2020 or newer and it should contain a UI control
* **Target .NET 5.0 in your project**

RadGridView .NET Core Designer
![core-designer001](images/core-designer001.png)


>note The toolbox is populated according the UI controls added to the referenced NuGet package/s.  
>

>important As the *AllControls* package contains all UI controls it should not be mixed with other packages containing the same UI controls.
>

### What`s coming next 

* Support for .NET Core 3.1
* Custom glyphs
* Embedded in the designer editors


# See Also
* [Migrating to .NET Core]({%slug winforms/core/core-migration%})
* [.NET Core Project Converter]({%slug winforms/core/net-core-project-converter%})
* [Windows Forms Designer for .NET Core Released](https://devblogs.microsoft.com/dotnet/windows-forms-designer-for-net-core-released/)
