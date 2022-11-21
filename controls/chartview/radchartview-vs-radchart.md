---
title: RadChartView vs RadChart
page_title: RadChartView vs RadChart - ChartView
description: RadChartView vs RadChart
slug: winforms/chartview-/radchartview-vs-radchart
tags: radchartview,vs,radchart
published: True
position: 1
previous_url: chartview-radchartview-vs.-radchart
---

# RadChartView vs RadChart

With Q2 2012 we expanded our data visualization controls with one new member - __RadChartView__ for WinForms. Developed to address the limitations and deficiencies identified in its predecessor (__RadChart__), the new control allows you to create interactive, rich, animated charts and enables the end users to analyze complex data. The fact that __RadChartView__ and __RadChart__ rely on different chart engines implies that the two controls differ in their series types, functionalities and features. This also suggests that there is not a straightforward migration path from one to the other. You may wonder what benefits the new __RadChartView__ will bring you over the old __RadChart__ for WinForms. This help topic aims to compare the two controls, so that you can choose the one that fits your scenario better.    

>note Generally, we would encourage you to use the new ChartView control for any new project development that you are starting now. As for your existing applications - the migration is possible but there is no straightforward migration path between RadChart and RadChartView due to the different approach taken in the development of __RadChartView__.
>


## Comparison sheets

Below you can find a tabular version that highlights some of the main features each control boasts:

| Features and functionalities | RadChartView | RadChart |
| ------ | ------ | ------ |
|DateTime axes|yes|yes|
|Categorical axes|yes|yes|
|Polar axes|yes|no|
|Predefined color palettes (skins)|yes|yes|
|Tooltip|yes*|yes|
|User experience (styled tooltips)|no*|no|
|Distinct series configuration for each series type|yes|no|
|Chart Legend|yes|yes|
|Negative values support|yes|yes|
|Empty (missing) values support|yes|yes|
|Automatic layout adjustment|yes|yes|
|Multiple y axes|yes|yes***|
|Logarithmic axis|yes|yes, y-axis|
|Annotations|yes|yes, marked zone|
|Scale breaks|yes|yes|
|Zooming and Scrolling|yes|yes|
|Additional fine-tuning of the appearance|yes|yes|
|Selection|yes|yes|
|Visual designer|yes|yes|
|Export|yes|yes|
|Sampling|yes|no|
|Drilldown|yes|yes|
|Smart labels|yes|yes|

Notes:

* __RadChartView__ currently supports only standard Tooltips that cannot be modified. The functionality will be available in a future release.

Below you may find the full list of series types available at present (R3 2012):


| Chart type | RadChartView | RadChart |
| ------ | ------ | ------ |
|Bar|yes|yes|
|Stacked Bar|yes|yes|
|Stacked Bar 100%|yes|yes|
|Pie|yes|yes|
|Point (Scatter)|yes|yes|
|Scatter Line|yes|no|
|Scatter Point|yes|no|
|Scatter Area|yes|no|
|Line|yes|yes|
|Area|yes|yes|
|Stacked Area|yes|yes|
|Stacked Area 100%|yes|yes|
|Spline Area|yes|yes|
|Stacked Spline Area 100%|yes|yes|
|Bubble|yes|yes|
|Candlestick|yes|yes|
|OHLC stick series|yes|yes|
|Gantt|no*|yes|
|Bezier|yes|yes|
|Spline|yes|yes|
|Polar Line|yes|no|
|Polar Point|yes|no|
|Polar Area|yes|no|
|Radar Line|yes|no|
|Radar Point|yes|no|
|Radar Area|yes|no|
|Waterfall|yes|no|
|Funnel|yes|no|
|Range|yes|no|
|Range Bar|yes|no|


>note You can use __RangeBarSeries__ instead of Gantt series or you can use [RadGanttView]({%slug winforms/ganttview%})

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Design Time]({%slug winforms/chartview/design-time/smart-tag%})
* [Property Builder]({%slug winforms/chartview/design-time/property-builder%})
* [Getting Started]({%slug winforms/chartview/getting-started%})
