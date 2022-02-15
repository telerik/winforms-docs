---
title: Tab Vs Shape
page_title: TabVsShape| Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms-telerik-presentation-framework-tab-vs-shape
tags: tab-shape
published: True
position: 1
---

# TabVsShape

The following image shows the __TabVsShape__ applied to a RadPanel:

![tab-vs-shape001](images/tab-vs-shape001.png)

The following code shows how you can create and apply a __TabVsShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=TabVsShape}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=TabVsShape}}
````C#
TabVsShape tabVsShape = new TabVsShape();
radPanel1.BackColor = Color.ForestGreen;
this.radPanel1.RootElement.Shape = tabVsShape;
this.radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim tabVsShape As TabVsShape = New TabVsShape()
radPanel1.BackColor = Color.ForestGreen
Me.radPanel1.RootElement.Shape = tabVsShape
Me.radPanel1.RootElement.ApplyShapeToControl = True

````  
 
{{endregion}} 

### Properties

* __RightToLeft__: A property of type __bool__ that gets or sets the orientation of this shape.
* __CloseFigure__: A property of type __bool__ that apply the close figure.


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

