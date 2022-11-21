---
title: QA Shape
page_title: QA Shape- Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms-telerik-presentation-framework-qa-shape
tags: qa,shape
published: True
position: 1
---

# QA Shape

The following image shows the __QAShape__ applied to a RadPanel:

![qa-shape001](images/qa-shape001.png)

The following code shows how you can create and apply a __QAShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=QaShape}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=QaShape}}
````C#
QAShape qaShape = new QAShape();
radPanel1.BackColor = Color.ForestGreen;
this.radPanel1.RootElement.Shape = qaShape;
this.radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim qaShape As QAShape = New QAShape()
radPanel1.BackColor = Color.ForestGreen
Me.radPanel1.RootElement.Shape = qaShape
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

