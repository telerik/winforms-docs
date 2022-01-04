---
title: Colorizers
page_title: Colorizers - WinForms TreeMap Control
description: Check our Layout Strategies documentation article for the RadTreeMap WinForms control.
slug: treemap-colorizers
tags: treemap, colorizers
published: True
position: 5
---

# Colorizers

This topic aims to get you familiar with all types of colorizers you may use to change the visualization of RadTreeMap. 

Let's get started with creating a sample RadTreeMap, bound to the Northwind.Products table. You can read more on this topic in the [Data Binding]({%slug treemap-data-binding%}) article. The result is shown bellow: 

![treemap-colorizers 001](images/treemap-colorizers001.png)

By default, RadTreeMap uses a **PaletteColorizer** with a default palette.

### PaletteColorizer

Colorizes RadTreeMap per predefined collection of 8 palette colors. Each item in different groups is colored the same way.

>caption Grouped RadTreeMap with PaletteColorizer

![treemap-colorizers 004](images/treemap-colorizers004.png)

The available palettes for the PaletteColorizer are:

* Arctic
* Autumn
* Cold
* Flower
* Forest
* Grayscale
* Ground
* Lilac
* Metro
* Natural
* Pastel
* Rainbow
* Spring
* Summer
* Warm
* Windows8
* Sun
* Office2013
* VisualStudio2013
* Green
* Office2016
* Material
* Fluent
* Crystal
* VisualStudio2019

#### Apply PaletteColorizer

{{source=..\SamplesCS\TreeMap\TreeMapGettingStarted.cs region=PaletteColorizer}} 
{{source=..\SamplesVB\TreeMap\TreeMapGettingStarted.vb region=PaletteColorizer}} 

````C#

PaletteColorizer paletteColorizer = new PaletteColorizer();
paletteColorizer.Palette = TreeMapPalette.Arctic;
this.radTreeMap1.Colorizer = paletteColorizer;        

````
````VB.NET

Dim paletteColorizer As PaletteColorizer = New PaletteColorizer()
paletteColorizer.Palette = TreeMapPalette.Arctic
Me.radTreeMap1.Colorizer = paletteColorizer

````

{{endregion}}

>caption TreeMapPalette.Arctic

![treemap-colorizers 005](images/treemap-colorizers005.png)

### RangeColorizer

This RangeColorizer contains a set of ranges defined by the **Stops** collection of values. It chooses the color to be applied according to the TreeMapDataItem's value and the From and To values of each range.

>note If no values are added to the **Stops** collection, the RangeColorizer gets the minimum/maximum values among the items and calculates default ranges.

![treemap-colorizers 002](images/treemap-colorizers002.png)

{{source=..\SamplesCS\TreeMap\TreeMapGettingStarted.cs region=RangeColorizer}} 
{{source=..\SamplesVB\TreeMap\TreeMapGettingStarted.vb region=RangeColorizer}} 

````C#
            
RangeColorizer rangeColorizer = new RangeColorizer();
rangeColorizer.Palette = TreeMapPalette.Cold;
rangeColorizer.Stops.AddRange(new List<double>() { 5, 10, 20, 25, 60 });
this.radTreeMap1.Colorizer = rangeColorizer; 

````
````VB.NET
Dim rangeColorizer As RangeColorizer = New RangeColorizer()
rangeColorizer.Palette = TreeMapPalette.Cold
rangeColorizer.Stops.AddRange(New List(Of Double)() From {
    5,
    10,
    20,
    25,
    60
})
Me.radTreeMap1.Colorizer = rangeColorizer

````

{{endregion}}

### GradientColorizer

A colorizer, which contains a set of gradient stops. It chooses the color to be applied according to the TreeMapDataItem's value and colorizer's gradient stops. Values with higher values than the maximum will be colored as the **StartColor** and values with lower values than the minimum will be colored as the **EndColor**.  

![treemap-colorizers 003](images/treemap-colorizers003.png)

{{source=..\SamplesCS\TreeMap\TreeMapGettingStarted.cs region=GradientColorizer}} 
{{source=..\SamplesVB\TreeMap\TreeMapGettingStarted.vb region=GradientColorizer}} 

````C#

GradientColorizer gradientColorizer = new GradientColorizer();
gradientColorizer.StartColor = Color.Red;
gradientColorizer.EndColor = Color.Yellow;
this.radTreeMap1.Colorizer = gradientColorizer;         
 
````
````VB.NET

Dim gradientColorizer As GradientColorizer = New GradientColorizer()
gradientColorizer.StartColor = System.Drawing.Color.Red
gradientColorizer.EndColor = System.Drawing.Color.Yellow
Me.radTreeMap1.Colorizer = gradientColorizer

````

{{endregion}} 

In case of grouping,


 
 
# See Also

* [Structure]({%slug winforms-treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

* [Data Binding]({%slug treemap-data-binding%})

