---
title: Circle Shape
page_title: Circle Shape- Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms-telerik-presentation-framework-circle-shape
tags: circle,shape
published: True
position: 1
---

# Circle Shape

The following image shows the __Circle__ shape applied to a RadPanel:

![circle-shape001](images/circle-shape001.png)

The following code shows how you can create and apply a __Circle__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=CircleShape}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=CircleShape}}
````C#
CircleShape circleShape = new CircleShape();          
radPanel1.BackColor = Color.ForestGreen;
this.radPanel1.RootElement.Shape = circleShape;
this.radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim circleShape As CircleShape = New CircleShape()
radPanel1.BackColor = Color.ForestGreen
Me.radPanel1.RootElement.Shape = circleShape
Me.radPanel1.RootElement.ApplyShapeToControl = True

````  
 
{{endregion}} 


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

