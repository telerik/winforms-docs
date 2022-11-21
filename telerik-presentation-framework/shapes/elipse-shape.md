---
title: Ellipse Shape
page_title: Ellipse Shape- Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/ellipse-shape
tags: ellipse-shape
published: True
position: 1
---

# Ellipse Shape

The following image shows the ellipse shape applied to a RadPanel:

![ellipse-shape001](images/ellipse-shape001.png)

The following code shows how you can create and apply a __EllipseShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=Ellipse}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=Ellipse}}
````C#
EllipseShape ellipseShape = new EllipseShape();
radPanel1.RootElement.Shape = ellipseShape;
radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim ellipseShape As New EllipseShape()
radPanel1.RootElement.Shape = ellipseShape
radPanel1.RootElement.ApplyShapeToControl = True

````  
 
{{endregion}} 


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

* [Star Shape]({%slug winforms/telerik-presentation-framework/star-shape%})

