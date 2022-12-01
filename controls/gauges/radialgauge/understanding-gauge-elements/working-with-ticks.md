---
title: Working with Ticks
page_title: Working with ticks - WinForms RadialGauge Control
description: RadialGaugeTicks are displayed next to the arc spanning the entire sweep angle.
slug: winforms/gauges/radialgauge/understanding-gauge-elements/working-with-ticks
tags: working,with,ticks
published: True
position: 3
previous_url: radialgauge-understanding-gauge-elements-working-with-ticks
---

# Working with Ticks

__RadialGaugeTicks__ are displayed next to the arc spanning the entire sweep angle.

>caption Figure 1: Radial Gauge Ticks
![WinForms RadGauges Radial Gauge Ticks](images/radialgauge-understanding-gauge-elements-working-with-ticks001.png)

The following properties allow you to modify the ticks' look:

* __TicksCount:__ Specifies how many ticks will be displayed. On the following picture the black ticks are 24, but the red ticks are 72.

>note  __RadRadialGauge__ always displays one additional tick to the __TicksCount__ in order to distribute the ticks correctly on the arc.

>caption Figure 2: Ticks Count
![WinForms RadGauges Ticks Count](images/radialgauge-understanding-gauge-elements-working-with-ticks002.png)

* __TickStartIndexVisibleRange:__ Specifies at which index the visible ticks range will start. On the following picture the red ticks start from index 45:

>caption Figure 3: Start Visible Range            
![WinForms RadGauges Start Visible Range](images/radialgauge-understanding-gauge-elements-working-with-ticks003.png)

* __TickEndIndexVisibleRange:__ Specifies at which index the visible ticks range will end. On the following picture the red ticks ends with index 50:

>caption Figure 4: End Visible Range
![WinForms RadGauges End Visible Range](images/radialgauge-understanding-gauge-elements-working-with-ticks004.png)

* __TicksRadiusPercentage:__  Controls how far according to the gauge's arc the ticks will be rendered. On the following picture, the red ticks have __TicksRadiusPercentage__ 80.

>caption Figure 5: Radius Percentage
![WinForms RadGauges Radius Percentage](images/radialgauge-understanding-gauge-elements-working-with-ticks005.png)

* __CircleTicks:__ Controls whether the specific ticks are circle or not.

>caption Figure 6: Circle Ticks            
![WinForms RadGauges Circle Ticks](images/radialgauge-understanding-gauge-elements-working-with-ticks006.png)

* __TickThickness:__ Specifies how thick the ticks will be rendered.

>caption Figure 7: Thickness
![WinForms RadGauges Thickness](images/radialgauge-understanding-gauge-elements-working-with-ticks007.png)

* __TickColor:__ Specifies the back color for the ticks

>caption Figure 8: Color
![WinForms RadGauges Color](images/radialgauge-understanding-gauge-elements-working-with-ticks008.png)

* __TicksOffset:__ Specifies the ticks back length towards the center point.

>caption Figure 9: Offset
![WinForms RadGauges Offset](images/radialgauge-understanding-gauge-elements-working-with-ticks009.png)

* __TicksLenghtPercentage:__ Controls the ticks length. On the picture below, the black ticks are with __TicksLenghtPercentage__ 10, but the red ones with 5.

>caption Figure 10: Length Percentage            
![WinForms RadGauges Length Percentage](images/radialgauge-understanding-gauge-elements-working-with-ticks010.png)

# See Also

* [Structure]({%slug winforms/gauges/radialgauge/structure%})
* [Design Time]({%slug winforms/gauges/radialgauge/design-time%})
* [Properties and Events]({%slug winforms/gauges/radialgauge/properties-and-events%})
