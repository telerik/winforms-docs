---
title: Working with single label
page_title: Working with single label
description: Working with single label
slug: radialgauge-understanding-gauge-elements-working-with-single-label
tags: working,with,single,label
published: True
position: 4
---

# Working with single label



__RadialGaugeSingleLabel__ is suitable to present additional information for the __RadRadialGauge__, e.g. current value
        .To add a single label to the gauge, you should add it via the RadradialGauge.__Items__ collection.
      ![radialgauge-understanding-gauge-elements-working-with-single-label 001](images/radialgauge-understanding-gauge-elements-working-with-single-label001.png)

## 

You can customize the single label's look by using the following properties:

* __BindValue__ - indicates whether the single label's text is bound to the gauge's __Value__.            
            

* __LocationPercentage__ - controls the label's location (x, y) according to the center point.  __LocationPercentage__
              accepts values withing the range [(-1,-1), (1,1)]. On the picture below, the green single label has __LocationPercentage__ =
              *(0, 1)*.
          ![radialgauge-understanding-gauge-elements-working-with-single-label 002](images/radialgauge-understanding-gauge-elements-working-with-single-label002.png)

* __LabelFontSize__ - specifies the label size.
            ![radialgauge-understanding-gauge-elements-working-with-single-label 003](images/radialgauge-understanding-gauge-elements-working-with-single-label003.png)

* __LabelFormat__ - specifies the label format. By default, it is set to *#,##0.#*. On the following picture 
              the single label has format *N2*.
            ![radialgauge-understanding-gauge-elements-working-with-single-label 004](images/radialgauge-understanding-gauge-elements-working-with-single-label004.png)
