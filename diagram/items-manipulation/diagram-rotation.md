---
title: Rotation
page_title: Rotation
description: Rotation
slug: diagram-items-manipulation-rotation
tags: rotation
published: True
position: 0
---

# Rotation



__RadDiagram__ gives you the ability to rotate shapes by dragging their Rotation Thumb
        or by changing their __RotationAngle__ property.

## Enable/Disable rotation

By default, the __RadDiagram__ is enabled for rotation manipulation.
        In order to disable this functionality, you can set the __IsRotationEnabled__ property to *false*.![diagram-items-manipulation-rotation 001](images/diagram-items-manipulation-rotation001.png)

#### __[C#] __

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=EnableRotation}}
	            
	            this.radDiagram1.IsRotationEnabled = false;
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=EnableRotation}}
	
	        Me.RadDiagram1.IsRotationEnabled = False
	
	{{endregion}}



## Rotation Angle

You can rotate shapes by using their __RotationAngle__ property: ![diagram-items-manipulation-rotation 002](images/diagram-items-manipulation-rotation002.png)

#### __[C#] __

{{source=..\SamplesCS\Diagram\DiagramItemsManipulation.cs region=RotationAngle}}
	            
	            RadDiagramShape sourceShape = new RadDiagramShape()
	            {
	                ShapeText = "Text",
	                InternalElementColor = System.Drawing.Color.LightBlue,
	                ElementShape = new TabVsShape(),
	            };
	            sourceShape.RotationAngle = 45;
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Diagram\DiagramItemsManipulation.vb region=RotationAngle}}
	
	        Dim sourceShape As New RadDiagramShape() With { _
	            .ShapeText = "Text", _
	            .InternalElementColor = System.Drawing.Color.LightBlue, _
	            .ElementShape = New TabVsShape() _
	        }
	        sourceShape.RotationAngle = 45
	{{endregion}}


