---
title: Working with needles
page_title: Working with needles - WinForms RadialGauge Control
description: RadialGaugeNeedle is a scale indicator that points to a value. 
slug: winforms/gauges/radialgauge/understanding-gauge-elements/working-with-needles
tags: working,with,needles
published: True
position: 1
previous_url: radialgauge-understanding-gauge-elements-working-with-needles
---

# Working with needles

__RadialGaugeNeedle__ is a scale indicator that points to a value. To add a needle to the gauge, you should add it via the RadradialGauge. __Items__ collection. 

>caption Figure 1: Needle
![WinForms RadialGaugeNeedle Needle](images/radialgauge-understanding-gauge-elements-working-with-needles001.png)

## Properties

* __Value__ - specifies the needle's value.

>caption Figure 2: Value            
![WinForms RadialGaugeNeedle Value](images/radialgauge-understanding-gauge-elements-working-with-needles002.png)

* __Thickness:__ Controls how thick the needle will be rendered.

* __PointRadiusPercentage:__ Specifies the outer radius of the needle's start point.

* __InnerPointRadiusPercentage:__ Specifies the inner radius of the needle's start point.

>caption Figure 3: Inner Radius            
![WinForms RadialGaugeNeedle Inner Radius](images/radialgauge-understanding-gauge-elements-working-with-needles003.png)

* __LenghtPercentage:__ Controls how long the needle will be rendered.

* __BackLenghtPercentage:__ The value with which the needle juts out from the center point.

>caption Figure 4: Back Length Percentage            
![WinForms RadialGaugeNeedle Back Length Percentage](images/radialgauge-understanding-gauge-elements-working-with-needles004.png)

* __BindValue:__ Indicates whether the needle's value is bound to the gauge's __Value__.

>caption Figure 5: Bind Value            
![WinForms RadialGaugeNeedle Bind Value](images/radialgauge-understanding-gauge-elements-working-with-needles005.png)

* __BindOffset:__ Specifies the value offset of the needle according to the gauge's value.

>caption Figure 6: Offset
![WinForms RadialGaugeNeedle Offset](images/radialgauge-understanding-gauge-elements-working-with-needles006.png)

## Events

The __ValueChanged__ event fires when the needle's value is modified.

# See Also

* [Structure]({%slug winforms/gauges/radialgauge/structure%})
* [Design Time]({%slug winforms/gauges/radialgauge/design-time%})
* [Properties and Events]({%slug winforms/gauges/radialgauge/properties-and-events%})
      
