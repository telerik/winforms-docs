---
title: How to detect DataPoint of RadBarSeries on Mouse Click in RadChartView
description: Learn how to detect the underlying datapoint of a BarSeries when clicking on a specific bar in RadChartView.
type: how-to
page_title: How to Detect DataPoint on Click in RadChartView for WinForms
meta_title: How to Detect DataPoint on Click in RadChartView for WinForms
slug: chartview-get-datapoint-mouse-click
tags: chartview, winforms, barseries, datapoint, mouseclick, hit-test
res_type: kb
ticketid: 1691155
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadChartView for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

This article shows how to identify a datapoint of a RadBarSeries in RadChartView when clicking on a specific bar. 

## Solution

To achieve this, handle the `MouseClick` event of RadChartView and use the `HitTest` method to detect the datapoint associated with the clicked bar. 
Here is the code example:

````C#

this.radChartView1.MouseClick += RadChartView1_MouseClick;

private void RadChartView1_MouseClick(object sender, MouseEventArgs e)
{
    foreach (var s in this.radChartView1.Series)
    {
        Telerik.WinControls.UI.BarSeries barSeries = s as Telerik.WinControls.UI.BarSeries;
        if (barSeries != null)
        {
            DataPoint dp = barSeries.HitTest(e.Location.X, e.Location.Y);
            if (dp != null)
            {
                Console.WriteLine(dp.Label); // Outputs the datapoint label
            }
        }
    }
}

````

## See Also

* [RadChartView Documentation](https://docs.telerik.com/devtools/winforms/controls/chartview/overview)
* [BarSeries](https://docs.telerik.com/devtools/winforms/controls/chartview/series-types/bar)
