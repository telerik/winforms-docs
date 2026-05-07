---
title: Colorizers
page_title: Colorizers - WinForms TreeMap Control
description: Check our Layout Strategies documentation article for the RadTreeMap WinForms control.
slug: treemap-colorizers
tags: treemap, colorizers
published: True
position: 7
---

# Colorizers

This topic aims to get you familiar with all types of colorizers you may use to change the visualization of RadTreeMap. 

Let's get started with creating a sample RadTreeMap, bound to the Northwind.Products table. You can read more on this topic in the [Data Binding]({%slug treemap-data-binding%}) article. The result is shown bellow: 

![WinForms RadTreeMap Colorizers](images/treemap-colorizers001.png)

By default, RadTreeMap uses a **PaletteColorizer** with a default palette.

### PaletteColorizer

Colorizes RadTreeMap per predefined collection of 8 palette colors. Each item in different groups is colored the same way.

>caption Grouped RadTreeMap with PaletteColorizer

![WinForms RadTreeMap Grouped RadTreeMap with PaletteColorizer](images/treemap-colorizers004.png)

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

<snippet id='treemap-treemapgettingstarted-palettecolorizer-cs' />
<snippet id='treemap-treemapgettingstarted-palettecolorizer-vb' />



>caption TreeMapPalette.Arctic

![WinForms RadTreeMap TreeMapPaletteArctic](images/treemap-colorizers005.png)

### RangeColorizer

This RangeColorizer contains a set of ranges defined by the **Stops** collection of values. It chooses the color to be applied according to the TreeMapDataItem's value and the stops that define the range.

>note If no values are added to the **Stops** collection, the RangeColorizer gets the minimum/maximum values among the items and calculates default ranges.

![WinForms RadTreeMap RangeColorizer](images/treemap-colorizers002.png)

<snippet id='treemap-treemapgettingstarted-rangecolorizer-cs' />
<snippet id='treemap-treemapgettingstarted-rangecolorizer-vb' />



>Each Stop value can be absolute or relative (between 0 and 1) depending on the IsAbsolute property value. This may be useful for cases when half of the items need to be colored in one color, and the rest of them in another. Just add Stops 0, 0.5, 1 and thus two ranges will be defined: 0-0.5 and 0.5-1. Two palette colorw will be used in this case.

### GradientColorizer

A colorizer, which contains a set of gradient stops. It chooses the color to be applied according to the TreeMapDataItem's value and colorizer's gradient stops. Values with higher values than the maximum will be colored as the **StartColor** and values with lower values than the minimum will be colored as the **EndColor**.  

![WinForms RadTreeMap GradientColorizer](images/treemap-colorizers003.png)

<snippet id='treemap-treemapgettingstarted-gradientcolorizer-cs' />
<snippet id='treemap-treemapgettingstarted-gradientcolorizer-vb' />



In case of grouping, the GradientColorizer offers:

* **StartPalette** - Defines the start colors for each group.

* **EndPalette** - Defines the end colors for each group.

>note The **StartColor** and **EndColor** properties have default values coming from the first color defined in the two palettes respectively.

<snippet id='treemap-treemapgettingstarted-groupedgradient-cs' />
<snippet id='treemap-treemapgettingstarted-groupedgradient-vb' />



![WinForms RadTreeMap Start/End Palette](images/treemap-colorizers006.png)
 
 
# See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

* [Data Binding]({%slug treemap-data-binding%})

