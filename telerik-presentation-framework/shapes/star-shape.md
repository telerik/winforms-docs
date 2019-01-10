---
title: Star Shape
page_title: Star Shape| Telerik Presentation Framework
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


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

