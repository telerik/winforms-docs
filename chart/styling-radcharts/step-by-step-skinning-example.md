---
title: Step-By-Step Skinning Example
page_title: Step-By-Step Skinning Example | UI for WinForms Documentation
description: Step-By-Step Skinning Example
slug: winforms/chart/styling-radcharts/step-by-step-skinning-example
tags: step-by-step,skinning,example
published: True
position: 4
previous_url: /help/winforms/chart-styling-radcharts-step-by-step-skinning-example.html
---

# Step-By-Step Skinning Example



## 

Here is a list of the steps one has to make in order to style RadChart to look like the image we used when describing the [Chart elements]({%slug winforms/chart/styling-radcharts/styling-chart-elements%}). We start with a plain chart with no visual properties defined.



1. Styling the chart’s borders and background 
	1. Appearance -> Appearance -> Border -> Color : __0; 66; 110__
	1. Appearance -> Appearance -> Border -> Width : __5__
	1. Appearance -> Appearance -> FillStyle -> FillType : __Gradient__
	1. Appearance -> Appearance -> FillStyle -> FillSettings -> GradientMode : __Center__
	1. Appearance -> Appearance -> FillStyle -> MainColor : __35; 189; 254__
	1. Appearance -> Appearance -> FillStyle -> SecondColor : __26; 120; 179__
	1.   

1. Styling the title 
	1. Elements -> ChartTitle -> Appearance -> Border -> Visible : __False__
	1. Elements -> ChartTitle -> Appearance -> FillStyle -> MainColor : __None / Transparent__
	1. Elements -> ChartTitle -> TextBlock -> Appearance -> TextProperties -> Color : __White__
	1. Elements -> ChartTitle -> TextBlock -> Appearance -> TextProperties -> Font : __Verdana; 14pt__
	1. Elements -> ChartTitle -> Appearance ->Position -> AlignedPosition : __TopLeft__
	1. Elements -> ChartTitle -> Appearance -> Dimensions -> Margins : __4%; 10px; 14px; 8%__

1. Styling the legend 
	1. Elements -> Legend -> Appearance -> FillStyle -> MainColor : __None / Transparent__
	1. Elements -> Legend -> Appearance -> Border -> Visible : __False__
	1. Elements -> Legend -> Appearance -> ItemTextAppearance -> TextProperties -> Color : __White__
	1. Elements -> Legend -> TextBlock -> Text : __Legend__
	1. Elements -> Legend -> TextBlock -> Visible : __True__
	1. Elements -> Legend -> TextBlock -> Appearance -> TextProperties -> Color : __LightSkyBlue__
	1. Elements -> Legend -> TextBlock -> Appearance -> Position -> AlignedPosition : __Top__
	1. Elements -> Legend -> Appearance -> Position -> AlignedPosition -> __BottomRight__
	1. Elements -> Legend -> Appearance -> Dimensions -> Margins : __1px; 3%; 12%; 1px__

1. Styling the plot area 
	1. Elements -> PlotArea -> Appearance -> Border -> Color : __97; 180; 223__
	1. Elements -> PlotArea -> Appearance -> FillStyle -> MainColor : __50; 255; 255; 255__
	1. Elements -> PlotArea -> Appearance -> Dimensions -> Margins : __18%; 90px; 15%; 10%__

1. Styling the X Axis 
	1. Elements -> PlotArea -> XAxis -> Appearance -> Color : __96; 164; 205__
	1. Elements -> PlotArea -> XAxis -> Appearance -> MajorGridLines -> Color : __120; 209; 248__
	1. Elements -> PlotArea -> XAxis -> Appearance -> MajorTick -> Color : __96; 164; 205__
	1. Elements -> PlotArea -> XAxis -> Appearance -> TextAppearance -> TextProperties -> Color : __White__
	1. Elements -> PlotArea -> XAxis -> AxisLabel -> TextBlock -> Text -> __X Axis__
	1. Elements -> PlotArea -> XAxis -> AxisLabel -> TextBlock -> Appearance -> TextProperties -> Color : __LightSkyBlue__
	1. Elements -> PlotArea -> XAxis -> AxisLabel -> Appearance -> Dimensions -> Paddings : __1px; 1px; 10%; 1px__

1. Styling the Y Axis 
	1. Elements -> PlotArea -> YAxis -> Appearance -> Color : __95; 165; 208__
	1. Elements -> PlotArea -> YAxis -> Appearance -> MajorGridLines -> Color : __120; 209; 248__
	1. Elements -> PlotArea -> YAxis -> Appearance -> MajorTick -> Color : __95; 165; 208__
	1. Elements -> PlotArea -> YAxis -> Appearance -> MajorGridLines -> Color : __120; 209; 248__
	1. Elements -> PlotArea -> YAxis -> Appearance -> MinorTick -> Color : __95; 165; 208__
	1. Elements -> PlotArea -> YAxis -> Appearance -> TextAppearance -> TextProperties -> Color : __White__
	1. Elements -> PlotArea -> YAxis -> AxisLabel -> TextBlock -> Text -> __Y Axis__
	1. Elements -> PlotArea -> YAxis -> AxisLabel -> TextBlock -> Appearance -> TextProperties -> Color : __LightSkyBlue__

1. Styling the data series 
	1. Data -> Series -> Series 1 -> Appearance -> Appearance -> Border -> Color : __153; 209; 248__
	1. Data -> Series -> Series 1 -> Appearance -> Appearance -> FillStyle -> MainColor : __213; 247; 255__
	1. Data -> Series -> Series 1 -> Appearance -> Appearance -> FillStyle -> SecondColor : __157; 217; 238__
	1. Data -> Series -> Series 1 -> Appearance -> Appearance -> TextAppearance -> TextProperties -> Color : __White__
	1. Data -> Series -> Series 2 -> Appearance -> Appearance -> Border -> Color : __67; 181; 229__
	1. Data -> Series -> Series 2 -> Appearance -> Appearance -> FillStyle -> MainColor : __136; 221; 246__
	1. Data -> Series -> Series 2 -> Appearance -> Appearance -> FillStyle -> SecondColor : __59; 161; 197__
	1. Data -> Series -> Series 2 -> Appearance -> Appearance -> TextAppearance -> TextProperties -> Color : __White__

![chart-styling-radcharts-step-by-step-skinning-example 001](images/chart-styling-radcharts-step-by-step-skinning-example001.png)
