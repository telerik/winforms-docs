---
title: Changes and Backwards Compatibility
page_title: Changes and Backwards Compatibility
description: Changes and Backwards Compatibility
slug: chart-changes-and-backward-compatibility
tags: changes,and,backwards,compatibility
published: True
position: 0
---

# Changes and Backwards Compatibility



## Changes for RadChart v4.0
<table><th><tr><td>

<b>Member</b></td><td>

<b>Change</b></td><td>

<b>Details</b></td></tr></th><tr><td>

GetChartSeries(index)  </td><td>

replaced  </td><td>

GetSeries(index)  </td></tr><tr><td>

GetChartSeries(string SeriesName)  </td><td>

replaced  </td><td>

GetSeries(string SeriesName)  </td></tr><tr><td>

XAxis  </td><td>

replaced  </td><td>

RadChart.PlotArea.XAxis  </td></tr><tr><td>

YAxis  </td><td>

replaced  </td><td>

RadChart.PlotArea.YAxis  </td></tr><tr><td>

YAxis2  </td><td>

replaced  </td><td>

RadChart.PlotArea.YAxis2  </td></tr><tr><td>

ChartTitle.Text  </td><td>

replaced  </td><td>

ChartTitle.TextBlock.Text  </td></tr><tr><td>

XAxis.DefaultItemFont  </td><td>

replaced  </td><td>

XAxis.Appearance.TextAppearance.TextProperties.Font  </td></tr><tr><td>

XAxis.DefaultItemColor  </td><td>

replaced  </td><td>

XAxis.Appearance.TextAppearance.TextProperties.Color  </td></tr><tr><td>

ChartSeries.Appearance.BorderColor  </td><td>

replaced  </td><td>

ChartSeries.Appearance.Border.Color  </td></tr><tr><td>

ChartSeries.ShowLabels  </td><td>

replaced  </td><td>

ChartSeries.Appearance.ShowLabels  </td></tr><tr><td>

ChartSeries.Appearance.FillStyle  </td><td>

replaced  </td><td>

ChartSeries.Appearance.FillStyle.FillType  </td></tr><tr><td>

ChartSeries.LabelAppearance.TextFont  </td><td>

replaced  </td><td>

ChartSeries.Appearance.TextAppearance.TextProperties.Font  </td></tr><tr><td>

ChartSeries.LabelAppearance.TextColor  </td><td>

replaced  </td><td>

ChartSeries.Appearance.TextAppearance.TextProperties.Color  </td></tr><tr><td>

ChartSeries.LabelAppearance.Background.BorderColor  </td><td>

replaced  </td><td>

ChartSeries.Appearance.LabelAppearance.Border.Color  </td></tr><tr><td>

ChartSeries.LabelAppearance.Background.BorderColor  </td><td>

replaced  </td><td>

ChartSeries.Appearance.LabelAppearance.FillStyle.FillType  </td></tr><tr><td>

ChartSeries.LabelAppearance.Background.MainColor  </td><td>

replaced  </td><td>

ChartSeries.Appearance.LabelAppearance.FillStyle.MainColor  </td></tr><tr><td>

ChartSeries.DefaultLabel  </td><td>

replaced  </td><td>

ChartSeries.DefaultLabelValue  </td></tr><tr><td>

ChartSeries.PointSize  </td><td>

replaced  </td><td>

ChartSeries.Appearance.PointMark.Dimensions.SetDimensions(4,4)  </td></tr><tr><td>

SeriesItem: ImageMap</td><td>

replaced</td><td>

ActiveRegion</td></tr><tr><td>

SeriesItem: Appearance->BorderColor</td><td>

replaced</td><td>

Appearance->Border->Color</td></tr><tr><td>

SeriesItem: Appearance->FillStyle</td><td>

replaced</td><td>

Appearance->FillStyle->FillType</td></tr><tr><td>

SeriesItem: Exploded</td><td>

replaced</td><td>

Appearance->Exploded</td></tr><tr><td>

Background.MainColor</td><td>

replaced</td><td>

Appearance.FillStyle.MainColor</td></tr><tr><td>

Background.BorderColor</td><td>

replaced</td><td>

Appearance.Border.Color</td></tr><tr><td>

BarOverlapPercent</td><td>

replaced</td><td>

Appearance.BarOverlapPercent</td></tr><tr><td>

BarWidthPercent</td><td>

replaced</td><td>

Appearance.BarWidthPercent</td></tr><tr><td>

Margins</td><td>

replaced</td><td>

PlotArea.Appearance.Dimensions.Margins</td></tr><tr><td>

Appearance.FillStyle</td><td>

replaced</td><td>

Appearance.FillStyle.FillType</td></tr><tr><td>

LabelAppearance</td><td>

replaced</td><td>

Appearance.TextAppearance</td></tr><tr><td>

ShowLabels</td><td>

replaced</td><td>

Appearance.LabelAppearance</td></tr></table>
