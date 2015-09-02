---
title: Changes and Backwards Compatibility
page_title: Changes and Backwards Compatibility | UI for WinForms Documentation
description: Changes and Backwards Compatibility
slug: winforms/chart/changes-and-backward-compatibility/changes-and-backwards-compatibility
tags: changes,and,backwards,compatibility
published: True
position: 0
---

# Changes and Backwards Compatibility



## Changes for RadChart v4.0


|  __Member__  |  __Change__  |  __Details__  |
| ------ | ------ | ------ |
|GetChartSeries(index)|replaced|GetSeries(index)|
|GetChartSeries(string SeriesName)|replaced|GetSeries(string SeriesName)|
|XAxis|replaced|RadChart.PlotArea.XAxis|
|YAxis|replaced|RadChart.PlotArea.YAxis|
|YAxis2|replaced|RadChart.PlotArea.YAxis2|
|ChartTitle.Text|replaced|ChartTitle.TextBlock.Text|
|XAxis.DefaultItemFont|replaced|XAxis.Appearance.TextAppearance.TextProperties.Font|
|XAxis.DefaultItemColor|replaced|XAxis.Appearance.TextAppearance.TextProperties.Color|
|ChartSeries.Appearance.BorderColor|replaced|ChartSeries.Appearance.Border.Color|
|ChartSeries.ShowLabels|replaced|ChartSeries.Appearance.ShowLabels|
|ChartSeries.Appearance.FillStyle|replaced|ChartSeries.Appearance.FillStyle.FillType|
|ChartSeries.LabelAppearance.TextFont|replaced|ChartSeries.Appearance.TextAppearance.TextProperties.Font|
|ChartSeries.LabelAppearance.TextColor|replaced|ChartSeries.Appearance.TextAppearance.TextProperties.Color|
|ChartSeries.LabelAppearance.Background.BorderColor|replaced|ChartSeries.Appearance.LabelAppearance.Border.Color|
|ChartSeries.LabelAppearance.Background.BorderColor|replaced|ChartSeries.Appearance.LabelAppearance.FillStyle.FillType|
|ChartSeries.LabelAppearance.Background.MainColor|replaced|ChartSeries.Appearance.LabelAppearance.FillStyle.MainColor|
|ChartSeries.DefaultLabel|replaced|ChartSeries.DefaultLabelValue|
|ChartSeries.PointSize|replaced|ChartSeries.Appearance.PointMark.Dimensions.SetDimensions(4,4)|
|SeriesItem: ImageMap|replaced|ActiveRegion|
|SeriesItem: Appearance->BorderColor|replaced|Appearance->Border->Color|
|SeriesItem: Appearance->FillStyle|replaced|Appearance->FillStyle->FillType|
|SeriesItem: Exploded|replaced|Appearance->Exploded|
|Background.MainColor|replaced|Appearance.FillStyle.MainColor|
|Background.BorderColor|replaced|Appearance.Border.Color|
|BarOverlapPercent|replaced|Appearance.BarOverlapPercent|
|BarWidthPercent|replaced|Appearance.BarWidthPercent|
|Margins|replaced|PlotArea.Appearance.Dimensions.Margins|
|Appearance.FillStyle|replaced|Appearance.FillStyle.FillType|
|LabelAppearance|replaced|Appearance.TextAppearance|
|ShowLabels|replaced|Appearance.LabelAppearance|
