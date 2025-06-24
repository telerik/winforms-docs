---
title: Identifying DataPoint of RadBarSeries on Click in RadChartView
description: Learn how to detect the underlying datapoint of a RadBarSeries when clicking on a specific bar in RadChartView.
type: how-to
page_title: How to Detect DataPoint on Click in RadChartView for WinForms
meta_title: How to Detect DataPoint on Click in RadChartView for WinForms
slug: detect-datapoint-click-radchartview-winforms
tags: radchartview, winforms, radbarseries, datapoint, mouseclick, hit-test
res_type: kb
ticketid: 1691155
---

## Environment

<table>
<tbody>
<tr>
<td>Product</td>
<td>
RadChartView for WinForms
</td>
</tr>
<tr>
<td>Version</td>
<td>
2025.2.520
</td>
</tr>
</tbody>
</table>

## Description

I want to identify the datapoint of a RadBarSeries in RadChartView when clicking on a specific bar. I attempted using `LayoutSlots` and the `Contains` method, but the results were unreliable.

This knowledge base article also answers the following questions:
- How to get the clicked bar datapoint in RadChartView?
- How to use HitTest to detect datapoints in RadBarSeries?
- How to handle MouseClick events for RadChartView in WinForms?

## Solution

To achieve this, handle the `MouseClick` event of RadChartView and use the `HitTest` method to detect the datapoint associated with the clicked bar. Follow these steps:

1. Attach the `MouseClick` event to the RadChartView instance.
2. Inside the event handler, loop through the series in RadChartView.
3. Use `HitTest` to check if the click location corresponds to a datapoint in the RadBarSeries.
4. Retrieve and use the datapoint details as needed.

Here is the code example:

```csharp
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
```

### Key Points:
- Replace `dp.Label` with other properties as needed to extract specific datapoint information.
- Ensure that the `MouseClick` event is appropriately attached to the RadChartView instance.

## See Also

- [RadChartView Documentation](https://docs.telerik.com/devtools/winforms/controls/chartview/overview)
- [HitTest Method Reference](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.barseries#hittest)
- [MouseClick Event Documentation](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.mouseclick)
