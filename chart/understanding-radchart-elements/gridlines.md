---
title: Gridlines
page_title: Gridlines | UI for WinForms Documentation
description: Gridlines
slug: winforms/chart/understanding-radchart-elements/gridlines
tags: gridlines
published: True
position: 4
previous_url: chart-undestanding-radchart-elements-gridlines
---

# Gridlines



Gridlines are auxiliary lines that form a grid for easier reading of the chart. Gridlines can be vertical or horizontal. Vertical gridlines are controlled by the __XAxis__ and horizontal gridlines are controlled by __YAxis__ and __YAxis2__. Gridlines can be "major", e.g. falling on the labeled axis __Step__ values.  "Minor" gridlines appear for __YAxis__ and __YAxis2__ that fall between __Step__ values. See the figure below where major gridlines fall on 20 and 40 of the YAxis and minor gridlines fall between the major gridlines. 

To control the visibility and general appearance of gridlines use the the PlotArea.<axis>.Appearance property to reach __MajorGridLines__ and __MinorGridlines__ properties.  __XAxis__ has only __MajorGridLines__ while __YAxis__ and __YAxis2__ have both __MajorGridLines__ and __MinorGridlines__ properties.  Both major and minor gridline objects include the following properties: 

* __Visible__ 

* __Color__

* __PenStyle__ (Solid, Dash, Dot, DashDot, DashDotDot and Custom) 

* __Width__

In the example below both X axis and Y axis are visible.  __XAxis__ __MajorGridLines__ are red solid lines 3 pixels wide. __YAxis__ __MinorGridlines__ are shown as blue dotted lines 2 pixels wide and __YAxis__ __MajorGridLines__ are shown as blue solid lines 3 pixels wide.
