---
title: Chamfered Rect Shape
page_title: Chamfered Rect Shape- Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms-telerik-presentation-framework-chamfered-rect-shape
tags: chamfered, shape, rect
published: True
position: 1
---

# Chamfered Rect Shape

The following image shows the Chamfered Rect shape applied to a RadPanel:

![star-shape001](images/chamfered-rect-shape001.png)

The following code shows how you can create and apply a __StarShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=ChamferedRectShape}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=ChamferedRectShape}}
````C#
ChamferedRectShape chamferedRectShape = new ChamferedRectShape();
chamferedRectShape.Width = 50;
chamferedRectShape.Angle = 45;
radPanel1.BackColor = Color.ForestGreen;
this.radPanel1.RootElement.Shape = chamferedRectShape;
this.radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim chamferedRectShape As ChamferedRectShape = New ChamferedRectShape()
chamferedRectShape.Width = 50
chamferedRectShape.Angle = 45
radPanel1.BackColor = Color.ForestGreen
Me.radPanel1.RootElement.Shape = chamferedRectShape
Me.radPanel1.RootElement.ApplyShapeToControl = True

````  
 
{{endregion}} 

### Properties

* __Width__: A property of type __int__ that gets or sets the __width__ of the chamfer.
* __Angle__: A property of type __int__ that gets or sets the __angle__ of the chamfer.
* __TopLeftChamfered__: A property of type __bool__ that gets or sets whether the top left corner of the shape will be chamfered.
* __TopRightChamfered__: A property of type __bool__ that gets or sets whether the top right corner of the shape will be chamfered.
* __BottomRightChamfered__: A property of type __bool__ that gets or sets whether the bottom right corner of the shape will be chamfered.
* __BottomLeftChamfered__: A property of type __bool__ that gets or sets whether the bottom left corner of the shape will be chamfered.


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

