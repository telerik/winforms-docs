---
title: Available NuGet Packages
page_title: Available NuGet Packages
description: Telerik UI for WinForms provides a set of NuGet packages targeting different .NET versions.   
slug: winforms-available-nugets
tags: install, nuget
published: True
position: 5
---

# Available NuGet Packages

Telerik UI for WinForms comes with several different packages that can be [installed via the Telerik server or from a local package source]({%slug winforms/nuget%}):

![winforms-available-nugets001](images/winforms-available-nugets001.png)

The Telerik assemblies are built against [different versions]({%slug assemblies-version%}) of .NET starting from .NET 4 to the latest official .NET. You should pick up this version of the NuGet package to install in your project that corresponds to the Target Framework that you are using in your project and that is available on your computer. 

>important The last NuGet package for .NET 2.0 is version 2022.2.622. 
>important The last NuGet package for .NET 4.0 is version 2024.1.312.
>important The last NuGet package for .NetCore is version 2024.1.312.

## Full Packages

`Telerik_UI_for_WinForms_<version number>_NuGet_Dev.zip` contains `.nupkg` files for the following full packages:

* `UI.for.WinForms.AllControls.Net462`
* `UI.for.WinForms.AllControls.Net48`
* `UI.for.WinForms.AllControls.Net60`
* `UI.for.WinForms.AllControls.Net70`
* `UI.for.WinForms.AllControls.Net80`
* `UI.for.WinForms.AllControls` : Contains all available [Telerik .NET Distributions]({%slug winforms/installation-deployment-and-distribution/distributions%}) 

Each of these packages contains all Telerik UI for WinForms assemblies for the corresponding .NET framework/ .NET Core/ .NET version. 

## Separate Packages

`Telerik_UI_for_WinForms_<version number>_NuGet_Dev.zip` contains `.nupkg` files for the separate packages for each Telerik assembly:

* `UI.for.WinForms.Common`
* `UI.for.WinForms.GridView`
* `UI.for.WinForms.PdfViewer`
* `UI.for.WinForms.Scheduler`
* `UI.for.WinForms.Theme`
* `UI.for.WinForms.SyntaxEditor`
*  .etc

Each of these packages contain the corresponding  assemblies for all available [Telerik .NET Distributions]({%slug winforms/installation-deployment-and-distribution/distributions%}). In case the dll is dependent on another Telerik dll, the required package will be installed automatically.

>note As the AllControls package contains all UI controls and themes it should not be installed in projects having other packages containing the UI controls (e.g. UI.for.WinForms.Common etc.) or the UI.for.WinForms.Themes package. Either use the AllControls package or the packages of the separate controls and the themes.

## Telerik NuGet Server Packages

There is an [online package source]({%slug winforms/nuget%}) that can be used to get Telerik NuGets. 

## See Also

* [Installing On Your Computer]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%})
* [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})
* [Install NuGet Key]({%slug install-nuget-keys%})
