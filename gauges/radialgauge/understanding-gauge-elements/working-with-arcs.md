---
title: Working with arcs
page_title: Working with arcs
description: Working with arcs
slug: radialgauge-understanding-gauge-elements-working-with-arcs
tags: working,with,arcs
published: True
position: 0
---

# Working with arcs



__RadialGaugeArc__ is rendered as a continuous band spanning the entire sweep angle. The arc is also used as a basis for the placement of child elements,
          such as the tick marks and labels.
        ![radialgauge-understanding-gauge-elements-working-with-arcs 001](images/radialgauge-understanding-gauge-elements-working-with-arcs001.png)

## 

* __Radius__ - controls the radius of the arc. In the image below, the green arc has a smaller radius than the dark gray one.
              This allows several arcs to be defined and positioned as desired.
            ![radialgauge-understanding-gauge-elements-working-with-arcs 002](images/radialgauge-understanding-gauge-elements-working-with-arcs002.png)

* 

* __RangeStart__ - specifies the start value of the arc and moves clock-wise to the __RangeEnd__ value. On the above picture the dark
              gray arc starts from 0, but the red one starts from 121.
            

* __RangeEnd__ - specifies the end value of the arc. On the above picture the dark gray arc ends with 120, but the red one ends with 180.
            

* __Width__ - controls how thick the arc will be rendered.
            ![radialgauge-understanding-gauge-elements-working-with-arcs 003](images/radialgauge-understanding-gauge-elements-working-with-arcs003.png)

* __BackColor__ and __BackColor2__ - specifies the fill colors for the arc.
            

* __BindStartRange__ - indicates whether the __RangeStart__ property is bound to the gauge's __Value__.
              Changing the gauge's value will change the start range of the arc respectively.
            

* __BindEndRange__ - indicates whether the __RangeEnd__ property is bound to the gauge's __Value__.
              Changing the gauge's value will change the end range of the arc respectively.
            

* __BindStartRangeOffset__ - specifies the start range offset of the arc according to the gauge's value.
            

* __BindEndRangeOffset__ - specifies the end range offset of the arc according to the gauge's value.
            ![radialgauge-understanding-gauge-elements-working-with-arcs 004](images/radialgauge-understanding-gauge-elements-working-with-arcs004.png)
