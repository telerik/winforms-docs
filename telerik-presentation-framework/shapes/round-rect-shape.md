---
title: RoundRect Shape
page_title: RoundRect Shape| Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/roundrect-shape
tags: roundrect-shape
published: True
position: 1
---

# RoundRect Shape

The following image shows the RoundRect shape applied to a RadPanel:

![RoundRect-shape001](images/RoundRect-shape001.png)

The following code shows how you can create and apply a __RoundRectShape__:

{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=RoundRect}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=RoundRect}}
````C#
RoundRectShape roundRectShape = new RoundRectShape();
roundRectShape.Radius = 30;
radPanel1.PanelElement.Shape = roundRectShape;

````
````VB.NET
Dim roundRectShape As New RoundRectShape()
roundRectShape.Radius = 30
radPanel1.PanelElement.Shape = roundRectShape

````  
 
{{endregion}} 


### Properties

* __Radius:__ Gets or set the radius of the rectangle corner.

* __TopLeftRounded:__ allows you to disable the rounding of the top left corner. 

* __TopRightRounded:__ allows you to disable the rounding of the top right corner. 

* __BottomLeftRounded:__ allows you to disable the rounding of the bottom left corner. 

* __BottomRightRounded:__ allows you to disable the rounding of the bottom right corner. 

# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [Star Shape]({%slug winforms/telerik-presentation-framework/star-shape%})

