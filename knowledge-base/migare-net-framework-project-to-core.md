---
title: How to Migrate a WinForms .NET Framework Project to .NET Core
description: This article demonstrates a step by step tutorial how to migrate your WinForms project that uses .NET Framework to .NET Core. 
type: how-to
page_title: How to Migrate a WinForms .NET Framework Project to .NET Core
slug: migare-net-framework-project-to-core
position: 0
tags: migrate, project, framework, core, net
res_type: kb
---


## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.3.1010|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

If you currently have a WinForms project that uses .NET Framework 4.8 (or older version) and you need to migrate it to .NET Core (or newer), this tutorial demonstrates a few steps how to do this in an easy way. 

Let's have the following project ("NetFrameworkDemo") that uses .NET Framework 4.7.2. and has a single RadForm with a RadGridView control:

>caption DemoForm.cs

![migare-net-framework-project-to-core001](images/migare-net-framework-project-to-core001.png) 

![migare-net-framework-project-to-core000](images/migare-net-framework-project-to-core000.png)  
 
## Solution 

In general, you are not expected to experience any difficulties when it comes to upgrading from .NET Framework 4.8 (or older) to .NET Core (or newer). We will migrate to .NET 6 as a Target Framework for the converted project.

1\. Create a brand new .NET 6 project:

![migare-net-framework-project-to-core002](images/migare-net-framework-project-to-core002.png) 

![migare-net-framework-project-to-core003](images/migare-net-framework-project-to-core003.png) 

2\. Copy all the files you have in the .NET Framework project to the new project's folder. 

3\. Then, include these files in the new project and make sure that the Program.cs file starts the desired form:

![migare-net-framework-project-to-core004](images/migare-net-framework-project-to-core004.png)  

4\. Install the [NuGet package]({%slug winforms/nuget%}) for the desired version (if it is necessary). Note that by default, when creating a new project with using the Telerik template, the UI.for.WinForms.AllControls NuGet is installed.

5\. Build and run the project:

![migare-net-framework-project-to-core005](images/migare-net-framework-project-to-core005.png)   

# See Also

* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}) 
* [Available NuGet Packages]({%slug winforms-available-nugets%})
* [Toolbox Version]({%slug core-toolbox-version%})

