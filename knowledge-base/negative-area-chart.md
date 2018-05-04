---
title: Negative Area Chart
description: Custom implementation demonstrating how one can paint the negative values away from the zero point.
type: how-to
page_title: Negative Area Chart
slug: chartview-negetive-area
position: 0
tags: chart, area
ticketid: 0
res_type: kb
---


## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.1 220</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadChartView for WinForms</td>
    </tr>
</table>

## Description

By default the area series are pained from bottom to top (above the horizontal axis). This article shows how you can paint a chart where the area is started from zero. This means that the positive values will go up and the negative down.

>caption Figure 1: Sample Chart
![negative-area-chart001](images/negative-area-chart001.png)

## Solution

The solution is to create a [custom renderer]({%slug winforms/chartview-/customization/custom-rendering%}), and custom draw part which allows you to override the entire painting code. You will use most of the default logic. What you need to change is the Y position of the are rectangle to be on the zero value. 

#### The CustomAreaSeriesDrawPart 

{{source=..\SamplesCS\KnowledgeBase\NegativeAreaChart.cs region=CustomDrawPart}} 
{{source=..\SamplesVB\KnowledgeBase\NegativeAreaChart.vb region=CustomDrawPart}}



{{endregion}} 



Now you are need to change the default draw part within the custom renderer class.

#### The Custom Renderer

{{source=..\SamplesCS\KnowledgeBase\NegativeAreaChart.cs region=CustomRenderer}} 
{{source=..\SamplesVB\KnowledgeBase\NegativeAreaChart.vb region=CustomRenderer}}



{{endregion}} 

The final step is to setup the chart and change the defualt renderer.

#### Setup the ChartView

{{source=..\SamplesCS\KnowledgeBase\NegativeAreaChart.cs region=SetChart}} 
{{source=..\SamplesVB\KnowledgeBase\NegativeAreaChart.vb region=SetChart}}



{{endregion}} 


A complete solution is available in our [SDK repository](https://github.com/telerik/winforms-sdk/tree/master/ChartView/NegativeAreaChart).

