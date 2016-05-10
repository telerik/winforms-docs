---
title: Star Shape
page_title: Star Shape| UI for WinForms Documentation
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/star-shape
tags: star-shape
published: True
position: 1
---

# Star Shape

The following image shows the Star shape applied to a RadPanel:

![star-shape001](images/star-shape001.png)

The following code shows how you can create and apply a __StarShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=Star}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=Star}}
````C#
StarShape starShape = new StarShape();
starShape.Arms = 12;
starShape.InnerRadiusRatio = .5f;
radPanel1.PanelElement.Shape = starShape;

````
````VB.NET
Dim starShape As New StarShape()
starShape.Arms = 12
starShape.InnerRadiusRatio = 0.5F
radPanel1.PanelElement.Shape = starShape

````  
 
{{endregion}} 

### Properties

