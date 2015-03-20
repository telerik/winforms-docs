---
title: Custom Appearance Properties
page_title: Custom Appearance Properties
description: Custom Appearance Properties
slug: chart-styling-radcharts-custom-appearance-properties
tags: custom,appearance,properties
published: True
position: 2
---

# Custom Appearance Properties



Apart from the common properties, every chart element may have unique appearance properties, e.g. “Figure”, “Rotation Angle”, “Text Properties”, etc. Here is a quick reference of the unique appearance properties of the chart and its elements.

## Chart


<table><tr><td><b>Set dimensions</b></td></tr><tr><td></td></tr>
Layout -> Width
Layout -> Height<tr><td><b>Set the chart type</b></td></tr><tr><td>

* 
Appearance -> DefaultType</td></tr><tr><td><b>Set series orientation</b></td></tr><tr><td>

* 
Appearance -> Series Orientation</td></tr><tr><td><b>Set a series palette</b></td></tr><tr><td>

* 
Appearance -> SeriesPalette

* 
Appearance -> CustomPalettes</td></tr><tr><td><b>Set a predefined chart skin</b></td></tr><tr><td>

* 
Appearance -> Skin</td></tr><tr><td><b>Set a bar overlap ratio 
		</b>How much two adjacent bars overlap each other</td></tr><tr><td>

* 
Appearance -> Appearance -> BarOverlapPercent</td></tr><tr><td><b>Set bar width
		</b>Define how much space will occupy all bars located on the same spot on the X Axis. The value represents percent of the total available space for that X Axis value.</td></tr><tr><td>

* Appearance -> Appearance -> BarWidthPercent</td></tr><tr><td><b>Set text quality</b></td></tr><tr><td>

* Appearance -> Appearance -> TextQuality</td></tr><tr><td><b>Set alternative text (accessibility feature)</b></td></tr><tr><td>

* Appearance -> AlternativeText</td></tr><tr><td><b>Set the image MIME type (file type)</b></td></tr><tr><td>

* Settings -> ChartImageFormat</td></tr></table>

## Chart title




<table><tr><td><b>Set the form</b></td></tr><tr><td>

* 
Elements -> ChartTitle -> Appearance -> Figure</td></tr><tr><td><b>Set a rotation angle</b></td></tr><tr><td>

* Elements -> ChartTitle -> Appearance -> RotationAngle</td></tr><tr><td><b>Style the chart title marker</b></td></tr><tr><td>

* Elements -> ChartTitle -> Marker -> Appearance</td></tr></table>



## Legend




<table><tr><td><b>Style the legend title</b></td></tr><tr><td>

* 
Elements -> Legend -> TextBlock</td></tr><tr><td><b>Style the legend marker</b></td></tr><tr><td>

* 
Elements -> Legend -> Marker -> Appearance</td></tr><tr><td><b>Style the legend items’ appearance</b></td></tr><tr><td>

* 
Elements -> Legend -> Appearance -> ItemAppearance

* 
Elements -> Legend -> Appearance -> ItemMarkerAppearance

* 
Elements -> Legend -> Appearance -> ItemTextAppearance</td></tr><tr><td><b>Set legend items’ orientation</b></td></tr><tr><td>

* 
Elements -> Legend -> Appearance -> Overflow</td></tr><tr><td><b>Set a rotation angle</b></td></tr><tr><td>

* 
Elements -> Legend -> Appearance -> RotationAngle</td></tr></table>

## PlotArea and Axes




<table><tr><td><b>Style the empty series (no data) message</b></td></tr><tr><td>

* Elements -> PlotArea -> EmptySeriesMessage</td></tr><tr><td><b>Set intelligent series’ label positioning</b></td></tr><tr><td>

* Elements -> PlotArea -> IntelligentLabelsEnabled</td></tr><tr><td><b>Set the axis’ layout mode </b>
		Determine whether the axis values’ positions match the gridlines or the values are places between the gridlines</td></tr><tr><td>

* Elements -> PlotArea -> [axis] -> LayoutMode</td></tr><tr><td><b>Style the axis’ maximum value end</b></td></tr><tr><td>

* Elements -> PlotArea -> axis [axis] -> Appearance -> Cap</td></tr></table>
