---
title: Navigation Controls
page_title: Navigation Controls | RadMap
description: RadMap provides incorporates a navigation tool allowing the end to user to easily zoom, pan and change the current view. 
slug: winforms/map/features/navigation-controls
tags: map, features, navigation controls
published: True
position: 2
---

# Navigation Controls

__RadMap__ incorporates a navigation tool allowing the end to user to easily zoom, pan and change the current view. 

>caption Figure 1: Navigation Bar

![map features navigation controls 001](images/map-features-navigation-controls001.png)

The __RadMap.ShowNavigationBar__ property is responsible for showing or hiding the navigation bar. By default this property is set to *true* and the location of the navigation bar is set to *BottomRight*.

#### Hide Navigation Bar

{{source=..\SamplesCS\Map\MapLayers.cs region=HideNavigationBar}} 
{{source=..\SamplesVB\Map\MapLayers.vb region=HideNavigationBar}}
````C#
this.radMap1.ShowNavigationBar = false;

````
````VB.NET
Me.RadMap1.ShowNavigationBar = False

````
 

{{endregion}}

# Navigation Bar Location

The location of the __MapNavigationBarElement__ is controlled by the RadMap.MapElement.__NavigationBarLocation__ property.

* __MapNavigationBarLocation__.*TopRight*: The location is set to the top right part of the view port.

>caption Figure 2: TopRight

![map features navigation controls 002](images//map-features-navigation-controls002.png)

* __MapNavigationBarLocation__.*TopLeft*: The location is set to the top left part of the view port.

>caption Figure 3: TopLeft

![map features navigation controls 003](images//map-features-navigation-controls003.png)

* __MapNavigationBarLocation__.*BottomLeft*: The location is set to the bottom left part of the view port.

>caption Figure 4: BottomLeft

![map features navigation controls 004](images//map-features-navigation-controls004.png)

* __MapNavigationBarLocation__.*BottomCenter*: The location is set to the bottom center part of the view port.

>caption Figure 5: BottomCenter

![map features navigation controls 005](images//map-features-navigation-controls005.png)

* __MapNavigationBarLocation__.*BottomRight*: The location is set to the bottom right part of the view port.

>caption Figure 6: BottomRight

![map features navigation controls 006](images//map-features-navigation-controls006.png)

# View Modes

The navigation control allows an easy selection of the currently displayed view.

>note The views which will be displayed in the drop-down will vary depending on the chosen map provider: [Providers Overview]({%slug winforms/map/providers%}).

>caption Figure 7: BingRestMapProvider Views

![map features navigation controls 007](images//map-features-navigation-controls007.gif)

# Zoom and Pan

The navigation control allows the end user to easily zoom and pan to a particular location on the map.

>caption Figure 8: Zoom and Pan

![map features navigation controls 008](images//map-features-navigation-controls008.gif)

The __MapNavigationBarElement__ can be accessed through the __RadMap.MapElement.NavigationBarElement__. The table below lists the exposed properties.

# Properties

|Property|Description|
|------|------|
|__MapElement__|Gets the map element.|
|__ZoomInButton__|Gets the zoom in button.|
|__ZoomOutButton__|Gets the zoom out button.|
|__ViewButton__|Gets the view button.|
|__MapNavigationElement__|Gets the map navigation element.|

# See Also

* [Layers Overview]({%slug winforms/map/features/layers/overview%})
* [Mini Map]({%slug winforms/map/features/minimap%})
* [Scale Indicators]({%slug winforms/map/features/scale-indicators%})
* [Legend]({%slug winforms/map/features/legend%})
* [Pan and Zoom]({%slug winforms/map/features/pan-and-zoom%})
