---
title: Heart Shape
page_title: Heart Shape| Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/heart-shape
tags: heart-shape
published: True
position: 1
---

# Heart Shape

The following image shows the heart shape applied to a RadPanel:

![heart-shape001](images/heart-shape001.png)

The following code shows how you can create and apply a __HeartShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=Heart}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=Heart}}
````C#
HeartShape heartShape = new HeartShape();
radPanel1.PanelElement.Shape = heartShape;

````
````VB.NET
Dim heartShape As New HeartShape()
radPanel1.PanelElement.Shape = heartShape

````  
 
{{endregion}} 

