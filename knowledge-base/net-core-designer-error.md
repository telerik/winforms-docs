---
title: Form's Designer doesn't Open in .NET Core   
description: Form's Designer doesn't Open in .NET Core 
type: troubleshooting
page_title: Form's Designer doesn't Open in .NET Core   
slug: net-core-designer-error
position: 0
tags: syntaxeditor, intelliprompts
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.2.616|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Problem

Opening a RadForm's designer with Telerik controls in a project that targets .NET Core will bring errors and the designer won't be loaded.

## Solution

The WinForms designer in .NET Core is still in its preview and currently it misses key features like support for libraries of third-party vendors. We are closely working with Microsoft to determine the best possible implementation approach. At the moment, we cannot provide you with a time estimate for a possible release or preview of the feature. I would recommend you to have a look at the following blog post that Microsoft released on this topic: [Windows Forms Designer for .NET Core Released](https://devblogs.microsoft.com/dotnet/windows-forms-designer-for-net-core-released/?fbclid=IwAR2q7fHPZ4RgS8bZwQSnTPjWqpKPOpxzc3j5PmPA-U4qbpF9xk0Iet4h_NE). 

I can suggest referring the official Microsoft documentation for details on porting a project built on the full .NET framework to .NET Core: [Overview of porting from .NET Framework to .NET Core](https://docs.microsoft.com/en-us/dotnet/core/porting/). Please bear in mind that the project file format in .NET Core is different so it will be necessary to update the old .csproj files. Microsoft have developed a tool to automate this process: [Try-Convert](https://github.com/dotnet/try-convert).

Since **R2 2020** Telerik UI for WinForms suite provides tooling in Visual Studio 2019, via our Visual Studio Extensions, that will convert client projects that use .NET Framework 4.8 (or lower) into .NET Core projects to ease out the migration: [.NET Core Project Converter](https://docs.telerik.com/devtools/winforms/core/net-core-project-converter).
  
As for the designer, please note that even the Microsoft implementation is still limited and only available as a preview in Visual Studio. If you need to target .NET Core and have complex designers you may consider trying the workaround as explained here: [Windows Forms .NET Core Designer](https://github.com/dotnet/winforms/blob/master/Documentation/winforms-designer.md). With this approach you can still target .NET Core and at the same time achieve the design-time experience you are already used to. 

# See Also

* [Migrating to .NET Core]({%slug core-migration%})
* [Deploying WinForms .NET Core Application]({%slug core-getting-started%})
* [3 Ways to Deploy a WinForms or WPF .NET Core Application](https://www.telerik.com/blogs/3-ways-to-deploy-a-winforms-or-wpf-net-core-application )  

