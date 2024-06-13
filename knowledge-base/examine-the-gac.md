---
title: Examine the GAC and remove old assemblies
description: Examine the GAC and remove old assemblies
type: how-to
page_title: Examine the GAC and remove old assemblies
slug: radcontrols-examine-the-gac
position: 0
tags: common, gac, assemblies, remove
res_type: kb
---

|Product Version|Product|Author|
|----|----|----|
|2019.1.117 (.NET 4.0 or later)|RadControls for WinForms|[Dimitar](https://www.telerik.com/blogs/author/dimitar-karamfilov)|


# Description 

You want to examine the GAC in order to check if the Telerik UI for WinForms are installed or perhaps more that one version exists. 

# Solution 

Open the .NET 4.0 GAC folder in the explorer. The GAC is located in the following folder: __C:\Windows\Microsoft.NET\assembly\GAC_MSIL__. Search for the Telerik assemblies.

![radcontrols-examine-the-gac001](images/radcontrols-examine-the-gac001.png)


That is all, you can remove the old assemblies directly from the search results. 