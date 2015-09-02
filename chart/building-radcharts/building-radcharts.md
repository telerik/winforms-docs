---
title: Building RadCharts
page_title: Building RadCharts | UI for WinForms Documentation
description: Building RadCharts
slug: winforms/chart/building-radcharts/building-radcharts
tags: building,radcharts
published: True
position: 0
---

# Building RadCharts



## 

To provide flexibility and best ease-of-use, Telerik provides multiple avenues to populate RadChart. There are four main techniques for building the chart: interactively at design-time, declaratively in the ASP.NET HTML markup, programmatically at runtime and by data binding.

In simple scenarios or to test out a design you can use the design-time interface to build the entire chart. Collection editors provide a consistent interface and easy navigation over all your chart series and series items. You can also use the RadChart Wizard to display a subset of the data.

If your design style leans towards working with the ASP.NET HTML code directly you can declaratively define your chart series and chart series items.

Most business applications display some sort of database data so RadChart fully supports binding data sources to labels and data elements. RadChart also supports data binding to the X-Axis. In addition to database data, RadChart can bind to XML. RadChart binds to ObjectDataSource to support enterprise multi-tier scenarios.  And of course you can bind your chart to arrays, collections, generic lists of simple types and lists of objects.

To create and populate the __RadChart__ [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) and [ChartSeriesItem]({%slug winforms/chart/understanding-radchart-elements/series-items%}) collections: 

* At design time by [using the editors for ChartSeries and ChartSeriesItem collections]({%slug winforms/chart/building-radcharts/populate-radchart-at-design-time%}) or [using the RadChart Wizard]({%slug winforms/chart/understanding-radchart-ui/the-radchart-user-interface%}). 


* [Declaratively in the ASP.NET HTML markup](30AD2813-E341-45AA-8E72-1070A6EA895B). 


* [Binding to a datasource]({%slug winforms/chart/building-radcharts/data-binding-radchart%}) at run time or design time. 


* Bind to a datasource programmatically to populate the ChartSeries and ChartSeriesItem collections. See this [minimal example of creating and populating a RadChart programmatically]({%slug winforms/chart/building-radcharts/creating-radchart-programmatically%}) or this [more complex example]({%slug winforms/chart/building-radcharts/creating-radchart-programmatically---more-complex-example%}).
