---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | RadPanorama
description: RadPanorama is a control that displays elements of type RadTileElement in a mosaic manner.
slug: winforms/panorama/accessing-and-customizing-elements
tags: panorama
published: True
position: 0
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/panorama/structure%}) of **RadPanorama**.
      

## Design time

You can access and modify the style for different elements in **RadPanorama** by using the *Element hierarchy editor*.

>caption Figure 1: RadPanorama's Element hierarchy editor

![panorama-accessing-and-customizing-elements 001](images/panorama-accessing-and-customizing-elements001.png)

If you select a **RadTileElement** and open the tile's smart tag, this allows you to invoke the *Element hierarchy editor* and customize its appearance:

![panorama-accessing-and-customizing-elements 002](images/panorama-accessing-and-customizing-elements002.png)

![panorama-accessing-and-customizing-elements 003](images/panorama-accessing-and-customizing-elements003.png)

## Programmatically

You can customize the nested elements at run time as well:

![panorama-accessing-and-customizing-elements 004](images/panorama-accessing-and-customizing-elements004.png)

>caption Fig.2 Customize elements

#### Customize elements 

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=CustomizeElements}} 
{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=CustomizeElements}} 

````C#
this.radPanorama1.BackColor=Color.Gray;
this.radTileElement1.BackColor= Color.DarkRed;
this.radTileElement1.BorderColor = Color.Yellow;
this.radTileElement1.TextWrap = true;
this.radTileElement1.ForeColor = Color.Aqua;

````
````VB.NET
````

{{endregion}}  

# See Also

* [Themes]({%slug winforms/panorama/themes%})	