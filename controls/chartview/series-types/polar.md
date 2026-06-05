---
title: Polar
page_title: Polar - ChartView
description: Polar series consists of a group of classes that plot data in radial plot area in polar coordinates
slug: winforms/chartview-/series-types/polar
tags: polar
published: True
position: 12
previous_url: chartview-series-types-polar
---

# Polar

__Polar series__ consists of a group of classes that plot data in radial plot area in polar coordinates. Valid only in the context of Polar AreaType, __Polar series__ have three implementations – __PolarLineSeries__, __PolarAreaSeries__ and __PolarPointSeries__. When working in unbound mode, the polar series are filled with PolarDataPoint objects which define __Angle__ and __Value__ properties which unambiguously determine a point's location in the polar coordinate system defined by the polar and numeric radial axes. Below is an example of RadPolarChart with different Polar series: 

#### Initial Setup

<snippet id='chartview-polar-polarpointseries-cs'/>
<snippet id='chartview-polar-polarpointseries-vb'/>



>caption Figure 1: Initial Setup
![WinForms RadChartView Polar Initial Setup](images/chartview-series-types-polar001.png)

#### PolarLineSeries

<snippet id='chartview-polar-polarlineseries-cs'/>
<snippet id='chartview-polar-polarlineseries-vb'/>



>caption Figure 2: PolarLineSeries
![WinForms RadChartView Polar Line Series](images/chartview-series-types-polar002.png) 
 
#### PolarAreaSeries

<snippet id='chartview-polar-polarareaseries-cs'/>
<snippet id='chartview-polar-polarareaseries-vb'/>



>caption Figure 3: PolarAreaSeries
![WinForms RadChartView Polar Area Series](images/chartview-series-types-polar003.png)

Here are some of the important properties all __PolarSeries__ share:

* __AngleMember:__ The property indicates the name of the property in the datasource that holds data about the angular coordinate.

* __ValueMember:__ The property determines the name of the property in the datasource that contains information about radial coordinate (the radius).

* __PointSize:__ The property determines the size of the drawn points in all three polar series.

* __BorderWidth:__  The property indicates the width of the lines in PolarLineSeries and PolarAreaSeries.

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
