---
title: Working with Ticks
page_title: Working with ticks | RadRadialGauge
description: RadialGaugeTicksare displayed next to the arc spanning the entire sweep angle.
slug: winforms/gauges/radialgauge/understanding-gauge-elements/working-with-ticks
tags: working,with,ticks
published: True
position: 3
previous_url: radialgauge-understanding-gauge-elements-working-with-ticks
---

# Working with Ticks

__RadialGaugeTicks__ are displayed next to the arc spanning the entire sweep angle.

>caption Figure 1: Radial Gauge Ticks
![radialgauge-understanding-gauge-elements-working-with-ticks 001](images/radialgauge-understanding-gauge-elements-working-with-ticks001.png)

The following properties allow you to modify the ticks' look:

* __TicksCount:__ Specifies how many ticks will be displayed. On the following picture the black ticks are 24, but the red ticks are 72.

>note  __RadRadialGauge__ always displays one additional tick to the __TicksCount__ in order to distribute the ticks correctly on the arc.

>caption Figure 2: Ticks Count
![radialgauge-understanding-gauge-elements-working-with-ticks 002](images/radialgauge-understanding-gauge-elements-working-with-ticks002.png)

* __TickStartIndexVisibleRange:__ Specifies at which index the visible ticks range will start. On the following picture the red ticks start from index 45:

>caption Figure 3: Start Visible Range            
![radialgauge-understanding-gauge-elements-working-with-ticks 003](images/radialgauge-understanding-gauge-elements-working-with-ticks003.png)

* __TickEndIndexVisibleRange:__ Specifies at which index the visible ticks range will end. On the following picture the red ticks ends with index 50:

>caption Figure 4: End Visible Range
![radialgauge-understanding-gauge-elements-working-with-ticks 004](images/radialgauge-understanding-gauge-elements-working-with-ticks004.png)

* __TicksRadiusPercentage:__  Controls how far according to the gauge's arc the ticks will be rendered. On the following picture, the red ticks have __TicksRadiusPercentage__ 80.

>caption Figure 5: Radius Percentage
![radialgauge-understanding-gauge-elements-working-with-ticks 005](images/radialgauge-understanding-gauge-elements-working-with-ticks005.png)

* __CircleTicks:__ Controls whether the specific ticks are circle or not.

>caption Figure 6: Circle Ticks            
![radialgauge-understanding-gauge-elements-working-with-ticks 006](images/radialgauge-understanding-gauge-elements-working-with-ticks006.png)

* __TickThickness:__ Specifies how thick the ticks will be rendered.

>caption Figure 7: Thickness
![radialgauge-understanding-gauge-elements-working-with-ticks 007](images/radialgauge-understanding-gauge-elements-working-with-ticks007.png)

* __TickColor:__ Specifies the back color for the ticks

>caption Figure 8: Color
![radialgauge-understanding-gauge-elements-working-with-ticks 008](images/radialgauge-understanding-gauge-elements-working-with-ticks008.png)

* __TicksOffset:__ Specifies the ticks back length towards the center point.

>caption Figure 9: Offset
![radialgauge-understanding-gauge-elements-working-with-ticks 009](images/radialgauge-understanding-gauge-elements-working-with-ticks009.png)

* __TicksLenghtPercentage:__ Controls the ticks length. On the picture below, the black ticks are with __TicksLenghtPercentage__ 10, but the red ones with 5.

>caption Figure 10: Length Percentage            
![radialgauge-understanding-gauge-elements-working-with-ticks 010](images/radialgauge-understanding-gauge-elements-working-with-ticks010.png)

# See Also

* [Structure]({%slug winforms/gauges/radialgauge/structure%})
* [Design Time]({%slug winforms/gauges/radialgauge/design-time%})
* [Properties and Events]({%slug winforms/gauges/radialgauge/properties-and-events%})