---
title: Telerik License Watermark Appears When UI for WinForms Form is Used in Add-In Project
description: The invalid or missing Telerik license key warning is displayed in an Add-In project, like Excel/Word VST, and others.
page_title: Telerik License Key Invalid or Missing Message Box and Watermark Displayed in a Add-in/Plugin Project
type: troubleshooting
slug: add-license-key-in-add-in-project
position: 0
tags: licensing, installation, telerik, licensing, license, key, not, found, addin
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|Telerik UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

The invalid/missing Telerik license key dialog is shown in addin (like Excel VSTO Add-in) projects even when a valid license is installed.

## Solution

This happens because there is no proper main window and application context, which means that the licensing mechanism cannot be evaluated as expected. To resolve this, use the `TelerikLicensing.Register` static method.

Here is a possible solution to resolve the licensing mechanism and remove the Watermark if the license key is valid:

* Ensure that each project library in your Add-in/Plugin Project is referencing the Telerik.Licensing NuGet. The Licensing NuGet is located on the [NuGet.org server](https://www.nuget.org/).

* Ensure that the Watermark does not appear in your Add-In/Plugin when run as a standalone application in Visual Studio. 

* Call the TelerikLicensing.Register() method as early as possible, before initializing any Telerik controls. Keep in mind that RadForm is also a control from our suite. You will need to consider placing it as early as possible in your plug-in’s loading process.

````C#

public class TelerikHelper
{
	public static void Register() => Telerik.Licensing.TelerikLicensing.Register();
}
	
````



