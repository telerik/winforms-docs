---
title: Funnel
page_title: Funnel | UI for WinForms Documentation
description: Funnel
slug: winforms/chartview-/series-types/funnel
tags: funnel
published: True
position: 16
---

# Funnel



A funnel chart displays a single series of data in progressively decreasing or increasing proportions,
        organized in segments, where each segment represents the value for the particular item from the series.
        The items' values can also influence the height and the shape of the corresponding segments.
      ![chartview-series-types-funnel 001](images/chartview-series-types-funnel001.png)

## 

The funnel series has several properties that control the way a chart's segments are rendered.

* __SegmentSpacing:__ Specifies the space between the different segments of the funnel chart in pixels.
            

* __DynamicHeight:__ A Boolean property that indicates whether all the segments will share the same size
              (when DynamicHeightEnabled=*false*) or the height of
              each segment is determined according to its value (when DynamicHeightEnabled=*true*). Default value is *true*.
            

* __DynamicSlope:__ A Boolean property that indicates whether the form of each segment will be
              based on the ratio between the value from the current and the next segment. Default value is *false*.
            

* __NeckRatio:__ The property specifies the ratio between the top and the bottom bases of the whole funnel series.
              The property can take effect only if the __DynamicSlope__ property is set to *false*.
            

The following example shows how you can add funnel series in code.
        #_[C#] _

	



{{source=..\SamplesCS\ChartView\Series\FunnelSeriesCode.cs region=funnel}} 
{{source=..\SamplesVB\ChartView\Series\FunnelSeriesCode.vb region=funnel}} 

````C#
            radChartView1.AreaType = Telerik.WinControls.UI.ChartAreaType.Funnel;
            FunnelSeries funnelSeries = new FunnelSeries();

            funnelSeries.DataPoints.Add(new FunnelDataPoint(5442, "Visited the website"));
            funnelSeries.DataPoints.Add(new FunnelDataPoint(1519, "Watched the demos"));
            funnelSeries.DataPoints.Add(new FunnelDataPoint(1131, "Downloaded a trial"));
            funnelSeries.DataPoints.Add(new FunnelDataPoint(811, "Purchased a license"));
            funnelSeries.DataPoints.Add(new FunnelDataPoint(704, "Renewed a license"));
            funnelSeries.ShowLabels = true;

            radChartView1.ShowLegend = true;
            radChartView1.Series.Add(funnelSeries);
````
````VB.NET
        radChartView1.AreaType = Telerik.WinControls.UI.ChartAreaType.Funnel
        Dim funnelSeries As New FunnelSeries()

        funnelSeries.DataPoints.Add(New FunnelDataPoint(5442, "Visited the website"))
        funnelSeries.DataPoints.Add(New FunnelDataPoint(1519, "Watched the demos"))
        funnelSeries.DataPoints.Add(New FunnelDataPoint(1131, "Downloaded a trial"))
        funnelSeries.DataPoints.Add(New FunnelDataPoint(811, "Purchased a license"))
        funnelSeries.DataPoints.Add(New FunnelDataPoint(704, "Renewed a license"))
        funnelSeries.ShowLabels = True

        radChartView1.ShowLegend = True
        radChartView1.Series.Add(funnelSeries)
        '
````

{{endregion}} 



