---
title: Assemblies targeting Net80 are missing
description: Assemblies targeting Net80 are missing.
type: troubleshooting
page_title: Assemblies targeting Net80 are missing
slug: common-target-net8-version
tags: common, winforms, nuget,assemblies,dll,net7, download, Telerik UI, AllControls.Net80
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2023.3.1114|Telerik UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In November 2023 Microsoft released Net 8. If you check our **C:\Program Files (x86)\Progress\Telerik UI for WinForms {version}** folder you can observe that there aren't assemblies that target the Net8 version. Telerik UI for WinForms is currently compatible with the latest .NET 8 release candidate. However, dedicated assemblies targeting .NET 8 are not yet available. If your project targets .NET 8 (Net80), you can use the .NET 7 (Net70) assemblies in the meantime. There is no specific time frame for the availability of dedicated assemblies for .NET 8. Any updates regarding this will be announced by Progress.

## See Also
- [Telerik UI for WinForms Product Page](https://www.telerik.com/products/winforms.aspx)
