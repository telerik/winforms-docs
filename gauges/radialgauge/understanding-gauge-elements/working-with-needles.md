---
title: Working with needles
page_title: Working with needles | UI for WinForms Documentation
description: Working with needles
slug: winforms/gauges/radialgauge/understanding-gauge-elements/working-with-needles
tags: working,with,needles
published: True
position: 1
previous_url: radialgauge-understanding-gauge-elements-working-with-needles
---

# Working with needles



__RadialGaugeNeedle__ is a scale indicator that points to a value. To add a needle to the gauge, you should add it via the RadradialGauge. __Items__ collection. 

![radialgauge-understanding-gauge-elements-working-with-needles 001](images/radialgauge-understanding-gauge-elements-working-with-needles001.png)

## Properties

* __Value__ - specifies the needle's value.
            
![radialgauge-understanding-gauge-elements-working-with-needles 002](images/radialgauge-understanding-gauge-elements-working-with-needles002.png)

* __Thickness__ - controls how thick the needle will be rendered.
            

* __PointRadiusPercentage__ - specifies the outer radius of the needle's start point.
            

* __InnerPointRadiusPercentage__ - specifies the inner radius of the needle's start point.
            
![radialgauge-understanding-gauge-elements-working-with-needles 003](images/radialgauge-understanding-gauge-elements-working-with-needles003.png)

* __LenghtPercentage__ - controls how long the needle will be rendered.
            

* __BackLenghtPercentage__ - the value with which the needle juts out from the center point.
            
![radialgauge-understanding-gauge-elements-working-with-needles 004](images/radialgauge-understanding-gauge-elements-working-with-needles004.png)

* __BindValue__ - indicates whether the needle's value is bound to the gauge's __Value__.
            
![radialgauge-understanding-gauge-elements-working-with-needles 005](images/radialgauge-understanding-gauge-elements-working-with-needles005.png)

* __BindOffset__ - specifies the value offset of the needle according to the gauge's value.
            
![radialgauge-understanding-gauge-elements-working-with-needles 006](images/radialgauge-understanding-gauge-elements-working-with-needles006.png)

## Events

The __ValueChanged__ event fires when the needle's value is modified.
      
