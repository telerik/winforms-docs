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

Telerik UI for WinForms supports the Visual Studio .NET Core WinForms designer. All of the Telerik designers are migrated and the controls are populated in the toolbox. We have special control designers, action lists, property builders and editors achieving a design time experience similar to the one seen on the full .NET framework. 

>caption Figure 1: RadGridView .NET Core Designer

![core-designer001](images/core-designer001.png)

## Requirements

The design time assemblies in .NET Core are resolved via the installed in the project NuGet packages. In order use the new designers, please make sure that the following requirements are met:

*  **Visual Studio 2019 v16.8 or newer**
    - The VS 2019 Preview [versions](https://visualstudio.microsoft.com/vs/preview/) are also supported. 
    
	>caution Check the compatibility table below with details about matching Telerik and Visual Studio versions.
	
    - Don’t forget to enable the designer in *Tools > Options > Environment > Preview Features*.
* **Telerik UI for WinForms NuGet installed in the project**: [Install using NuGet Packages]({%slug winforms/nuget%})
     - Telerik UI for Winforms R3 2020 or newer.

	>caution Even though you may have an installation of the Telerik UI for WinForms suite with the correct version according to the compatibility table below, it is not enough to load the designer. It requires installing the appropriate Telerik UI for WinForms NuGet package.

	![core-designer002](images/core-designer002.png)

* **Target .NET Core 3.1/.NET 5.0 in your project**: [https://docs.microsoft.com/en-us/dotnet/standard/frameworks#supported-target-frameworks](https://docs.microsoft.com/en-us/dotnet/standard/frameworks#supported-target-frameworks)

>important Our designers target a specific version of the WinForms Designer SDK and this SDK is also inserted into Visual Studio. Sometimes there might be breaking changes in the WinForms Designer SDK and as it is part of Visual Studio itself this will break our designers. As things are dynamically changing one needs to pay attention of the Telerik NuGet version and the Visual Studio version. The table below is a mapping between the Telerik and the Visual Studio versions.
>

|Telerik NuGet Version|Visual Studio Version|
|----|----|
|R1 2021 v2021.1.119|Visual Studio 2019 v16.9 Preview 2|
|HotFix v2020.3.1215-hotfix|Visual Studio 2019 v16.9 Preview 2|
|HotFix v2020.3.1116-hotfix|Visual Studio 2019 v16.9 Preview 1|
|R3 2020 SP1 v2020.3.1020|Visual Studio 2019 v16.8 or newer (e.g. 16.8.1, 16.8.2)|
|R3 2020 SP1 v2020.3.1020|Visual Studio 2019 v16.8 Preview 4|
|R3 2020 v2020.3.915|Visual Studio 2019 v16.8 Preview 3|

>note The HotFix NuGet packages are uploaded to the Telerik NuGet server as part of our [Latest Internal Builds](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/latest-internal-builds#latest-internal-builds).  
>

>note The toolbox is populated from the UI controls added to the referenced NuGet package/s.  
>

>important As the *AllControls* package contains all UI controls it should not be mixed with other packages containing the same UI controls.
>

## What`s coming next 

* Custom glyphs
* Embedded in the designer editors


# See Also
* [Migrating to .NET Core]({%slug winforms/core/core-migration%})
* [.NET Core Project Converter]({%slug winforms/core/net-core-project-converter%})
* [Windows Forms Designer for .NET Core Released](https://devblogs.microsoft.com/dotnet/windows-forms-designer-for-net-core-released/)
