---
title: Overview
page_title: Layers Overview - RadMap
description: Layers provide an easy way to present meaningful information to the end user.
slug: winforms/map/features/layers/overview
tags: map, features, layers, overview
published: True
position: 0
---

# Layers Overview

Layers provide an easy way to present meaningful information to the end user. A __RadMap__ control may have many layers each responsible for a different part of the presentation logic. The layer object represents a collection holding __MapVisualElements__. The __RadMap.Layers__ property is responsible for exposing the layers allowing easy access and manipulation.


>caption Figure 1: Map Layers 

![WinForms RadMap Map Layers](images/map-features-layers-overview001.png)

The example below  uses the [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%}) and adds pin and label elements to a couple of layers defined within the __RadMap__ control.

#### Setup Layers

<snippet id='map-maplayers-setuplayers-cs' />
<snippet id='map-maplayers-setuplayers-vb' />



#### Setup Data

<snippet id='map-maplayers-setupdata-cs' />
<snippet id='map-maplayers-setupdata-vb' />



# See Also

* [Colorization]({%slug winforms/map/features/layers/colorization%})
* [Clusterization]({%slug winforms/map/features/layers/clusterization%})
