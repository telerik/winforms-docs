---
title: Exporting FloatingImage from RadSpreadsheet Worksheet
description: Learn how to save an image from a RadSpreadsheet worksheet as a file.
type: how-to
page_title: How to Save a FloatingImage from RadSpreadsheet Worksheet as an Image File
slug: radspreadsheet-export-floatingimage
tags: spreadsheet, winforms, workbook, worksheet, image, export, file
res_type: kb
ticketid: 1672191
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1113|RadSpreadsheet for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

To export an image (represented as a `FloatingImage` object) inside the Worksheet, you can use the `ImageSource.Data` property of the `FloatingImage` object. This property exposes the image as a byte array, which you can then export using the `File.WriteAllBytes()` method. Follow the steps below to achieve this:

Here is an example code snippet demonstrating how to perform these steps:

````C#
using System.IO;

var worksheet = this.radSpreadsheet1.Workbook.Sheets[0] as Worksheet;

// Access the first FloatingImage object from the worksheet's Images collection
var floatingImage = worksheet.Images[0];

// Export the image 
File.WriteAllBytes($"../../image.{floatingImage.ImageSource.Extension}", floatingImage.ImageSource.Data);

````

This code saves the first image found in the worksheet's `Images` collection. You can modify the file path and name as needed. Additionally, ensure the extension matches the image format for correct file handling.

## See Also

* [RadSpreadsheet Documentation](https://docs.telerik.com/devtools/winforms/controls/spreadsheet/overview)
