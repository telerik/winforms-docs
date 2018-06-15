---
title: Map Factory
page_title: Map Factory | RadMap
description: MapVisualElementFactory allows creating tile elements.
slug: winforms/map/map-factory
tags: map
published: True
position: 2 
---

#  Map Factory

**RadMap** provides means for changing the default **MapPoint**, **MapPolyline**, **MapPolygon**, **MapPath**, **MapCluster** or **MapTile** elements. 

If you need to customize any of these elements you can use the **MapVisualElementFactory** class. It allows you to replace the default elements with custom ones. This can be achieved by creating a **MapVisualElementFactory** descendant class and overriding one of the following methods according to the element you want to replace. Then, set the static RadMapElement.**VisualElementFactory** property before starting the usage of **RadMap**.

{{source=..\SamplesCS\Map\CustomMapFactory.cs region=MyMapProvider}} 
{{source=..\SamplesVB\Map\CustomMapFactory.vb region=MyMapProvider}} 

````C#
````
````VB.NET
````

{{endregion}} 


# See Also
* [Providers]({%slug winforms/map/providers%})
* [File Readers]({%slug winforms/map/file-readers%})
* [Features]({%slug winforms/map/features/layers/overview%})

