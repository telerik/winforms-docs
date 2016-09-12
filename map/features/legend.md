---
title: Legend
page_title: Legend | RadMap
description: The RadMap control introduces the MapLegendElement object. It allows you to display a legend for a particular layer inside the control.
slug: winforms/map/features/legend
tags: map, features, legend
published: True
position: 4
---

# Legend

The __RadMap__ control introduces the __MapLegendElement__ object. It allows displaying a legend for a particular layer inside the control.

>caption Figure 1: Map Legend

![map features legend 001](images/map-features-legend001.png)

# Setup Legends

Legend items can be added by accessing the __Children__ collection of the legend stack element. The code fragment below extends the [Layers Overview]({%slug winforms/map/features/layers/overview%}) example by adding two legends.

>caption Figure 2: Setup Legends

![map features legend 002](images/map-features-legend002.png)

#### Customizing Appearance

{{source=..\SamplesCS\Map\MapLayers.cs region=SetLegends}} 
{{source=..\SamplesVB\Map\MapLayers.vb region=SetLegends}}
````C#
this.radMap1.MapElement.LegendElement.TitleElement.Text = "NBA";
this.radMap1.MapElement.LegendElement.SubtitleElement.Text = "Conferences";
this.radMap1.MapElement.LegendElement.Orientation = Orientation.Horizontal;
this.radMap1.MapElement.LegendElement.ItemStackElement.Children.Add(new MapLegendItemElement("Western", Color.Red));
this.radMap1.MapElement.LegendElement.ItemStackElement.Children.Add(new MapLegendItemElement("Eastern", Color.Blue));

````
````VB.NET
Me.RadMap1.MapElement.LegendElement.TitleElement.Text = "NBA"
Me.RadMap1.MapElement.LegendElement.SubtitleElement.Text = "Conferences"
Me.RadMap1.MapElement.LegendElement.Orientation = Orientation.Horizontal
Me.RadMap1.MapElement.LegendElement.ItemStackElement.Children.Add(New MapLegendItemElement("Western", Color.Red))
Me.RadMap1.MapElement.LegendElement.ItemStackElement.Children.Add(New MapLegendItemElement("Eastern", Color.Blue))

````



{{endregion}}

# See Also

* [Layers Overview]({%slug winforms/map/features/layers/overview%})
* [Mini Map]({%slug winforms/map/features/minimap%})
* [Navigation Controls]({%slug winforms/map/features/navigation-controls%})
* [Scale Indicators]({%slug winforms/map/features/scale-indicators%})
* [Pan and Zoom]({%slug winforms/map/features/pan-and-zoom%})