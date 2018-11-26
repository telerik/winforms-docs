---
title: Structure
page_title: Structure | RadBulletGraph
description: This article describes the inner structure and organization of the elements which build the RadBulletGraph control
slug: winforms/gauges/bulletgraph/structure
tags: structure
published: True
position: 1
previous_url: bulletgraph-structure
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadBulletGraph__ control.

There are two main types of bullet graphs - __horizontal__ and __vertical__, depending on the direction in which the control is drawn.

>caption Figure 1: RadBulletGraph`s Element Hierarchy
![radbulletgraph-structure 001](images/radbulletgraph-structure001.png)

>caption Figure 2: RadBulletGraph`s Structure
![radbulletgraph structure 002](images/radbulletgraph-structure002.png)

1. __RadLinearGaugeElement:__ Represents the main element of __RadBulletGraph__.
1. __BulletGraphQualitiveBar:__ Each of the bars building __RadBulletGraph__.
1. __BulletGraphFeaturedMeasureBar:__ Bar representing the measure.
1. __LinearGaugeNeedleIndicator:__ Needle indicator.
1. __LinearGaugeLabels:__ Labels along the bullet graph.
        
## See Also

* [Smart Tag]({%slug winforms/gauges/bulletgraph/smart-tag%})
* [Getting Started]({%slug winforms/gauges/bulletgraph/getting-started%})