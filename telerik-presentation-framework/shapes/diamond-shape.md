---
title: Diamond Shape
page_title: Diamond Shape| Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/diamond-shape
tags: diamond-shape
published: True
position: 1
---

# Diamond Shape

The following image shows the diamond shape applied to a RadPanel:

![diamond-shape001](images/diamond-shape001.png)

The following code shows how you can create and apply a __DiamondShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=Diamond}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=Diamond}}
````C#
DiamondShape diamondShape = new DiamondShape();
radPanel1.PanelElement.Shape = diamondShape;

````
````VB.NET
Dim diamondShape As New DiamondShape()
radPanel1.PanelElement.Shape = diamondShape

````  
 
{{endregion}} 


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Media Shape]({%slug winforms/telerik-presentation-framework/media-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

* [Star Shape]({%slug winforms/telerik-presentation-framework/star-shape%})

