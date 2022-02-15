---
title: Office Shape
page_title: Office Shape| Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms-telerik-presentation-framework-office-shape
tags: office,shape
published: True
position: 1
---

# Office Shape

The following image shows the __Office__ shape applied to a RadPanel:

![office-shape001](images/office-shape001.png)

The following code shows how you can create and apply a __Office__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=OfficeShape}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=OfficeShape}}
````C#
OfficeShape officeShape = new OfficeShape();          
radPanel1.BackColor = Color.ForestGreen;
this.radPanel1.RootElement.Shape = officeShape;
this.radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim officeShape As OfficeShape = New OfficeShape()
radPanel1.BackColor = Color.ForestGreen
Me.radPanel1.RootElement.Shape = officeShape
Me.radPanel1.RootElement.ApplyShapeToControl = True

````  
 
{{endregion}} 

### Properties

* __RoundedBottom__: A property of type __bool__ that gets or sets whether the bottom right and left corner of the shape will be rounded.


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

