---
title: Generating a Bar Code Image outside WinForms
description: Learn how to generate a bar code image in a .Net 7 non-Winforms project using RadBarcodeView for WinForms.
type: how-to
page_title: Generating a Bar Code Image outside WinForms | RadBarcodeView for WinForms | Telerik
slug: barcodeview-generating-image-console-app
tags: winforms, barcode, image, generate, non-winforms,consoleapplication
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.2.1114|UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial we will demonstrate how to generate bar code image in a non-Winforms .Net 7 project using Telerik RadBarcodeView for WinForms.

## Solution

To generate a bar code image in a non-Winforms project, you can follow these steps:

1. Modify the project file to enable the use of WinForms assemblies by adding the following code:

```xml
<Project Sdk="Microsoft.NET.Sdk">

	<PropertyGroup>
		<OutputType>Exe</OutputType>
		<TargetFramework>net7.0-windows</TargetFramework>
		<ImplicitUsings>enable</ImplicitUsings>
		<Nullable>enable</Nullable>
		<UseWindowsForms>true</UseWindowsForms>
	</PropertyGroup>

	<ItemGroup>
		<PackageReference Include="UI.for.WinForms.AllControls.Net70" Version="2023.3.1114" />
	</ItemGroup>

</Project>
```

2. Add the RadBarcodeView control to your code and export it to an image using the following code:

````C#
using System.Drawing;
using Telerik.WinControls.UI.Barcode;
using Telerik.WinControls.UI.Barcode.Symbology;

Telerik.WinControls.UI.Barcode.QRCode qrCode1 = new Telerik.WinControls.UI.Barcode.QRCode();
RadBarcodeView radBarcodeView = new RadBarcodeView();
radBarcodeView.BindingContext = new BindingContext();
qrCode1.Version = 1;
radBarcodeView.Symbology = qrCode1;
radBarcodeView.Text = "radBarcodeView1";
radBarcodeView.Value = "1234567";
radBarcodeView.Invalidate();
Image img = radBarcodeView.ExportToImage(200,200);
img.Save("TestImage.png", System.Drawing.Imaging.ImageFormat.Png);

````
````VB.NET

Imports System.Drawing
Imports Telerik.WinControls.UI.Barcode
Imports Telerik.WinControls.UI.Barcode.Symbology

Dim qrCode1 As Telerik.WinControls.UI.Barcode.QRCode = New Telerik.WinControls.UI.Barcode.QRCode()
Dim radBarcodeView As RadBarcodeView = New RadBarcodeView()
radBarcodeView.BindingContext = New BindingContext()
qrCode1.Version = 1
radBarcodeView.Symbology = qrCode1
radBarcodeView.Text = "radBarcodeView1"
radBarcodeView.Value = "1234567"
radBarcodeView.Invalidate()
Dim img As Image = radBarcodeView.ExportToImage(200,200)
img.Save("TestImage.png", System.Drawing.Imaging.ImageFormat.Png)

````


Please note that generating images from RadBarcodeView control for WinForms requires the use of WinForms assemblies, and it may not be supported in non-Winforms projects.

## Notes
- This solution assumes that you have the necessary references and packages installed.
- Make sure to replace "TestImage.png" with the desired file name and path for the generated image.

## See Also
- [RadBarcodeView for WinForms Documentation](https://docs.telerik.com/devtools/winforms/controls/barcode/barcodeview)
