---
title: Converting FloatingChartShape to Bitmap in RadSpreadsheet for WinForms
description: Learn how to export FloatingChartShape from RadSpreadsheet to a Bitmap image in WinForms applications.
type: how-to
page_title: How to Convert FloatingChartShape to Bitmap in RadSpreadsheet for WinForms
slug: convert-floatingchartshape-to-bitmap-radspreadsheet-winforms
tags: spreadsheet, winforms, floatingchartshape, bitmap, export
res_type: kb
ticketid: 1631289
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1113|RadSpreadsheet for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In RadSpreadsheet for WinForms, you may need to convert a `FloatingChartShape` to a bitmap image. Unlike `RadChartView` which offers a direct `DrawToBitMap()` method, `FloatingChartShape` requires a different approach for exporting to a bitmap.

## Solution

To export a `FloatingChartShape` from a `RadSpreadsheet` to a bitmap, utilize the `ChartModelToImageConverter.GetImageFromFloatingChartShape()` method. This method accepts the `FloatingChartShape` as its first parameter and the desired image size as its second parameter. It returns an `Image` object, which you can then save to a file in PNG format or any other supported format.

Below is an example code snippet that demonstrates how to achieve this:

````C#
private void ExportChartToImage()
{
    var worksheet = this.radSpreadsheet1.Workbook.Sheets[0] as Worksheet;
    var image = Telerik.WinForms.Controls.Spreadsheet.Layers.ChartModelToImageConverter.GetImageFromFloatingChartShape(worksheet.Charts[0], new Size(780, 588));
    image.Save("Chart.png", System.Drawing.Imaging.ImageFormat.Png);
}
````

In this example, the `ExportChartToImage` method retrieves the first chart from the worksheet, converts it to an image with the specified size, and then saves the image as a PNG file named "Chart.png".

## See Also

- [RadSpreadsheet Documentation](https://docs.telerik.com/devtools/winforms/controls/radspreadsheet/overview)
- [RadSpreadsheet Workbook Overview](https://docs.telerik.com/devtools/winforms/controls/radspreadsheet/model/workbook)
- [RadSpreadsheet Chart Shapes](https://docs.telerik.com/devtools/winforms/controls/radspreadsheet/features/chart-shapes)
