---
title: Custom Appearance Properties
page_title: Custom Appearance Properties | UI for WinForms Documentation
description: Custom Appearance Properties
slug: winforms/chart-(obsolete)/styling-radcharts/custom-appearance-properties
tags: custom,appearance,properties
published: True
position: 2
---

# Custom Appearance Properties



Apart from the common properties, every chart element may have unique appearance properties, e.g. “Figure”, “Rotation Angle”, “Text Properties”, etc. Here is a quick reference of the unique appearance properties of the chart and its elements.

## Chart





| __Set dimensions__ |
||
Layout -> Width
Layout -> Height
| __Set the chart type__ |
|

* Appearance -> DefaultType|
| __Set series orientation__ |
|

* Appearance -> Series Orientation|
| __Set a series palette__ |
|

* Appearance -> SeriesPalette

* Appearance -> CustomPalettes|
| __Set a predefined chart skin__ |
|

* Appearance -> Skin|
| __Set a bar overlap ratio__ How much two adjacent bars overlap each other|
|

* Appearance -> Appearance -> BarOverlapPercent|
| __Set bar width__ Define how much space will occupy all bars located on the same spot on the X Axis. The value represents percent of the total available space for that X Axis value.|
|

* Appearance -> Appearance -> BarWidthPercent|
| __Set text quality__ |
|

* Appearance -> Appearance -> TextQuality|
| __Set alternative text (accessibility feature)__ |
|

* Appearance -> AlternativeText|
| __Set the image MIME type (file type)__ |
|

* Settings -> ChartImageFormat|

## Chart title







| __Set the form__ |
|

* Elements -> ChartTitle -> Appearance -> Figure|
| __Set a rotation angle__ |
|

* Elements -> ChartTitle -> Appearance -> RotationAngle|
| __Style the chart title marker__ |
|

* Elements -> ChartTitle -> Marker -> Appearance|



## Legend







| __Style the legend title__ |
|

* Elements -> Legend -> TextBlock|
| __Style the legend marker__ |
|

* Elements -> Legend -> Marker -> Appearance|
| __Style the legend items’ appearance__ |
|

* Elements -> Legend -> Appearance -> ItemAppearance

* Elements -> Legend -> Appearance -> ItemMarkerAppearance

* Elements -> Legend -> Appearance -> ItemTextAppearance|
| __Set legend items’ orientation__ |
|

* Elements -> Legend -> Appearance -> Overflow|
| __Set a rotation angle__ |
|

* Elements -> Legend -> Appearance -> RotationAngle|

## PlotArea and Axes







| __Style the empty series (no data) message__ |
|

* Elements -> PlotArea -> EmptySeriesMessage|
| __Set intelligent series’ label positioning__ |
|

* Elements -> PlotArea -> IntelligentLabelsEnabled|
| __Set the axis’ layout mode__ Determine whether the axis values’ positions match the gridlines or the values are places between the gridlines|
|

* Elements -> PlotArea -> [axis] -> LayoutMode|
| __Style the axis’ maximum value end__ |
|

* Elements -> PlotArea -> axis [axis] -> Appearance -> Cap|
