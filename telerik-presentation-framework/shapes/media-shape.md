---
title: Media Shape
page_title: Media Shape- Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/media-shape
tags: media-shape
published: True
position: 1
---

# Media Shape

The following image shows the media shape applied to a RadPanel:

![media-shape001](images/media-shape001.png)

The following code shows how you can create and apply a __MediaShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=Media}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=Media}}
````C#
MediaShape mediaShape = new MediaShape();
radPanel1.RootElement.Shape = mediaShape;
radPanel1.RootElement.ApplyShapeToControl = true;

````
````VB.NET
Dim mediaShape As New MediaShape()
radPanel1.RootElement.Shape = mediaShape
radPanel1.RootElement.ApplyShapeToControl = True

````  
 
{{endregion}} 


# See Also
* [Custom Shapes]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Diamond Shape]({%slug winforms/telerik-presentation-framework/diamond-shape%})

* [Donut Shape]({%slug winforms/telerik-presentation-framework/donut-shape%})

* [Ellipse Shape]({%slug winforms/telerik-presentation-framework/ellipse-shape%})

* [Heart Shape]({%slug winforms/telerik-presentation-framework/heart-shape%})

* [Overview]({%slug winforms/telerik-presentation-framework/shapes%})

* [RoundRect Shape]({%slug winforms/telerik-presentation-framework/roundrect-shape%})

* [Star Shape]({%slug winforms/telerik-presentation-framework/star-shape%})

