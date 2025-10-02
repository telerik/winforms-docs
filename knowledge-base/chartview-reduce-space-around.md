---
title: Reducing Space Around RadChartView in WinForms
description: Learn how to minimize the unused space around the RadChartView to make the chart appear larger within a WinForms application.
type: how-to
page_title: How to Adjust Margins for RadChartView in WinForms for a Larger Chart Display
slug: reduce-space-radchartview-winforms
tags: chartview, winforms, chart, margin, padding
res_type: kb
ticketid: 1681296
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadChartView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

Reducing the space around the RadChartView to make the chart appear larger is a common requirement. 

## Solution

To reduce the space around the `RadChartView`, adjust the margin of the view. Set the margin using the `Padding` class to specify the amount of space you want around your chart. Here's how you can achieve this:

````C#
radChartView1.View.Margin = new Padding(2, 2, 2, 2);
````

This code sets the margin to 2 pixels on all sides (left, top, right, bottom), making the chart area larger by reducing the unused space around it.

## See Also

* [RadChartView Overview](https://docs.telerik.com/devtools/winforms/controls/chartview/overview)
