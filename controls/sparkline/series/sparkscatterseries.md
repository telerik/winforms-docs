---
title: SparkScatterSeries
page_title: RadSparkline SparkScatterSeries
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-sparkscatterseries
tags: sparkline
published: True
position: 1
---

# SparkScatterSeries

Unlike Categorical series, ScatterSeries plots its data upon two numerical axes. Scatter series identify the position of each ScatterDataPoint using two numerical values - XValue and YValue for the horizontal and vertical axes respectively, just like in the typical Cartesian coordinate system. Here is how to create two ScatterSeries and populate them manually:

#### Create SparkScatterSeries

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=ScatterSeries}} 
{{source=..\SamplesCS\Sparkline\SparklineCode.vb region=ScatterSeries}}
 

{{endregion}} 

>caption Figure 1: SparkScatterSeries

![](images/sparkscatterseries001.png)

### The essential properties of SparkScatterSeries are:

|__Property__|__Description__|
|---|---|
|__HighValue__|Gets the high value data point.|
|__LowValue__|Gets the low value data point.|


