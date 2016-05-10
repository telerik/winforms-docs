---
title: Media Shape
page_title: Media Shape| UI for WinForms Documentation
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
radPanel1.PanelElement.Shape = mediaShape;

````
````VB.NET
Dim mediaShape As New MediaShape()
radPanel1.PanelElement.Shape = mediaShape

````  
 
{{endregion}} 

