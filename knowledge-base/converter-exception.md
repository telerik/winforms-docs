---
title: WinForms Converter crashes with Visual Studio 15.8
description: This article explains why the converter crashes Visual Studio
type: troubleshooting
page_title: WinForms Converter crashes with Visual Studio 15.8
slug:  troubleshoot-winforms-converter
position: 0
tags: Winforms, converter, VisualStudio
res_type: kb
---

|Product Version|Product|
|----|----|
|2018.3.1016|Converter for WinForms| 

## Problem

The Winforms converter crashes when converting a project. This happens with Visual Studio 2017 18.7 or newer. This is caused because in the latest version of Visual Studio a type used in the converter was moved. Detailed information can be found here: [Version used in VS 15.8 not available on NuGet (Breaks VS extension using MSBuildWorkspace) Issue #29334](https://github.com/dotnet/roslyn/issues/29334)

## Solution

This is an issue that Microsoft should provide a fix for and at this point, there is nothing we can do but wait. 

As a workaround, I can suggest using version 15.7 where the converter is working (the converter works well with Visual Studio 2015 as well). 