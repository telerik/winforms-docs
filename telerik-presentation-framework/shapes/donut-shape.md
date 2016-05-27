---
title: Donut Shape
page_title: Donut Shape| UI for WinForms Documentation
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/donut-shape
tags: donut-shape
published: True
position: 1
---

# Donut Shape

The following image shows the donut shape applied to a RadPanel:

![donut-shape001](images/donut-shape001.png)

The following code shows how you can create and apply a __DonutShape__:


{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=Donut}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=Donut}}
````C#
DonutShape donutShape = new DonutShape();
donutShape.Thickness = 50;
radPanel1.PanelElement.Shape = donutShape;

````
````VB.NET
Dim donutShape As New DonutShape()
donutShape.Thickness = 50
radPanel1.PanelElement.Shape = donutShape

````  
 
{{endregion}} 

You can use the __Thickness__ property to adjust the donut width.