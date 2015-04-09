---
title: RadChartView vs RadChart
page_title: RadChartView vs RadChart
description: RadChartView vs RadChart
slug: chartview-radchartview-vs.-radchart
tags: radchartview,vs,radchart
published: True
position: 0
---

# RadChartView vs RadChart



With Q2 2012 we expanded our data visualization controls with one new member - RadChartView for WinForms. Developed to address the limitations and deficiencies identified in its predecessor (RadChart), the new control allows you to create interactive, rich, animated charts and enables the end users to analyze complex data. The fact that RadChartView and RadChart rely on different chart engines implies that the two controls differ in their series types, functionalities and features. This also suggests that there is not a straightforward migration path from one to the other.
        You may wonder what benefits th new RadChartView will bring you over the old RadChart for WinForms. This help topic aims to compare the two controls, so that you can choose the one that fits your scenario better.
      

>Generally, we would encourage you to use the new ChartView control for any new project development that you are starting now.
          As for your existing applications - the migration is possible but there is no straightforward migration path between RadChart
          and RadChartView due to the different approach taken in the development of RadChartView.
        

## Comparison sheets

Below you can find a tabular version that highlights some of the main features each control boasts:
        
<table><th><tr><td>

Features and functionalities</td><td>

RadChartView</td><td>

RadChart</td></tr></th><tr><td>

DateTime axes</td><td>

yes</td><td>

yes</td></tr><tr><td>

Categorical axes</td><td>

yes</td><td>

yes</td></tr><tr><td>

Polar axes</td><td>

yes</td><td>

no</td></tr><tr><td>

Predefined color palettes (skins)</td><td>

yes</td><td>

yes</td></tr><tr><td>

Tooltip</td><td>

yes*</td><td>

yes</td></tr><tr><td>

User experience (styled tooltips)</td><td>

no*</td><td>

no</td></tr><tr><td>

Distinct series configuration for each series type</td><td>

yes</td><td>

no</td></tr><tr><td>

Chart Legend</td><td>

yes</td><td>

yes</td></tr><tr><td>

Negative values support</td><td>

yes</td><td>

yes</td></tr><tr><td>

Empty (missing) values support</td><td>

yes</td><td>

yes</td></tr><tr><td>

Automatic layout adjustment</td><td>

yes</td><td>

yes</td></tr><tr><td>

Multiple y axes</td><td>

yes</td><td>

yes***</td></tr><tr><td>

Logarithmic axis</td><td>

yes</td><td>

yes, y-axis</td></tr><tr><td>

Annotations</td><td>

yes</td><td>

yes, marked zone</td></tr><tr><td>

Scale breaks</td><td>

yes</td><td>

yes</td></tr><tr><td>

Zooming and Scrolling</td><td>

yes</td><td>

yes</td></tr><tr><td>

Additional fine-tuning of the appearance</td><td>

yes</td><td>

yes</td></tr><tr><td>

Selection</td><td>

yes</td><td>

yes</td></tr><tr><td>

Visual designer</td><td>

yes</td><td>

yes</td></tr><tr><td>

Export</td><td>

yes</td><td>

yes</td></tr><tr><td>

Sampling</td><td>

yes</td><td>

no</td></tr><tr><td>

Drilldown</td><td>

yes</td><td>

yes</td></tr><tr><td>

Smart labels</td><td>

yes</td><td>

yes</td></tr></table>

Notes:

* RadChartView currently supports only standard Tooltips that cannot be modified. The functionality will be available in a future release.

Below you may find the full list of series types available at present (Q3 2012):
<table><th><tr><td>

Chart type</td><td>

RadChartView</td><td>

RadChart</td></tr></th><tr><td>

Bar</td><td>

yes</td><td>

yes</td></tr><tr><td>

Stacked Bar</td><td>

yes</td><td>

yes</td></tr><tr><td>

Stacked Bar 100%</td><td>

yes</td><td>

yes</td></tr><tr><td>

Pie</td><td>

yes</td><td>

yes</td></tr><tr><td>

Point (Scatter)</td><td>

yes</td><td>

yes</td></tr><tr><td>

Scatter Line</td><td>

yes</td><td>

no</td></tr><tr><td>

Scatter Point</td><td>

yes</td><td>

no</td></tr><tr><td>

Scatter Area</td><td>

yes</td><td>

no</td></tr><tr><td>

Line</td><td>

yes</td><td>

yes</td></tr><tr><td>

Area</td><td>

yes</td><td>

yes</td></tr><tr><td>

Stacked Area</td><td>

yes</td><td>

yes</td></tr><tr><td>

Stacked Area 100%</td><td>

yes</td><td>

yes</td></tr><tr><td>

Spline Area</td><td>

yes</td><td>

yes</td></tr><tr><td>

Stacked Spline Area 100%</td><td>

yes</td><td>

yes</td></tr><tr><td>

Bubble</td><td>

yes</td><td>

yes</td></tr><tr><td>

Candlestick</td><td>

yes</td><td>

yes</td></tr><tr><td>

OHLC stick series</td><td>

yes</td><td>

yes</td></tr><tr><td>

Gantt</td><td>

no*</td><td>

yes</td></tr><tr><td>

Bezier</td><td>

yes</td><td>

yes</td></tr><tr><td>

Spline</td><td>

yes</td><td>

yes</td></tr><tr><td>

Polar Line</td><td>

yes</td><td>

no</td></tr><tr><td>

Polar Point</td><td>

yes</td><td>

no</td></tr><tr><td>

Polar Area</td><td>

yes</td><td>

no</td></tr><tr><td>

Radar Line</td><td>

yes</td><td>

no</td></tr><tr><td>

Radar Point</td><td>

yes</td><td>

no</td></tr><tr><td>

Radar Area</td><td>

yes</td><td>

no</td></tr><tr><td>

Waterfall</td><td>

yes</td><td>

no</td></tr><tr><td>

Funnel</td><td>

yes</td><td>

no</td></tr><tr><td>

Range</td><td>

yes</td><td>

no</td></tr><tr><td>

Range Bar</td><td>

yes</td><td>

no</td></tr></table>

Notes:

* You can use RangeBar series instead of Gantt series or you can use [RadGanttView]({%slug ganttview-overview%})
