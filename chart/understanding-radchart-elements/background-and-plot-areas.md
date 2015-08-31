---
title: Background and Plot Areas
page_title: Background and Plot Areas | UI for WinForms Documentation
description: Background and Plot Areas
slug: winforms/chart/understanding-radchart-elements/background-and-plot-areas
tags: background,and,plot,areas
published: True
position: 1
---

# Background and Plot Areas



## Chart Background

The background of the chart is the outermost rectangle that encloses all other elements of the chart. It stretches for the whole width and length of the output image of the chart. Using the __Appearance__ property of the chart you can fully customize the chart background look and feel including: 

* __Border__
             visibility, color, pen style and width. 

* The __Corners__ property lets you square or round each corner individually. The degree of rounding can be tailored. 


* __FillStyle__ controls the fill color and type (solid, hatched, image, gradient). 


* __ImageQuality__ and __TextQuality__ properties can also be fine tuned.

## Plot Area

The plot area is the working rectangular area between X and Y axes where data is displayed. The size of the plot depends on the chart background size and the chart __margins__, which define the distance between the border of the plot area and the border of the chart background. This area is represented by the RadChart __PlotArea__ property. Some unique __PlotArea__ properties are:

* __SeriesOrientation__ is an enumeration that orients the entire __PlotArea__ either Vertical or Horizontal. 


* __XAxis__, __YAxis__, and __YAxis2__ properties.  These axis properties control the scale and appearance of both axes. See the [Axes]({%slug winforms/chart/understanding-radchart-elements/axes%}) topic for more information. 


* EmptySeriesMessage: The predefined message that displays in the __PlotArea__ when there is no series data defined for the chart. 

>caption 

![chart-undestanding-radchart-elements-background-and-plot-areas 001](images/chart-undestanding-radchart-elements-background-and-plot-areas001.png)

Like the __RadChart__ as a whole, __PlotArea__ has an __Appearance__ property allowing customization:

* __Border__ 
            visibility,color, pen style and width. 

* The __Corners__ property lets you square or round each corner individually. The degree of rounding can be tailored. 


* __FillStyle__ controls the fill color and type (solid, hatched, image, gradient). 


* The __Dimensions__ property provides control of __Width__, __Height__, __Margins__, __Paddings__ and if you want the dimensions to __Autosize__.

* __SeriesPalette__ is a property of the chart that lets you to choose a predefined skin color palette for each series.  This can help provide a distinct look to differentiate each series. 


* The __Shadow__ property lets you control shadow __Blur__, shadow __Color__, shadow __Distance__ and __Position__ relative to the plot area.
