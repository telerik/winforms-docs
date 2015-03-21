---
title: Custom shapes
page_title: Custom shapes
description: Custom shapes
slug: diagram-custom-shapes
tags: custom,shapes
published: True
position: 7
---

# Custom shapes



This tutorial will guide you through the task of creating a custom shape.

## 

In order to create a custom shape control, you need to define a custom shape deriving from the __ElementShape__
        class. Overriding its __CreatePath__ method you can define
          the desired shape. Afterwards, you need to apply your shape implementation to the RadDiagramShape.__ElementShape__
          property:
        

#### __[C#] __

{{region MyShape}}
	            
	        public class MyShape : ElementShape
	        {
	            public override GraphicsPath CreatePath(System.Drawing.Rectangle bounds)
	            {
	                GraphicsPath path = new GraphicsPath();
	                path.AddString("Custom", new System.Drawing.FontFamily("Arial"), 0, bounds.Width, Point.Empty, StringFormat.GenericTypographic);
	                return path;
	            }
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{region MyShape}}
	
	    Public Class MyShape
	    Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As System.Drawing.Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddString("Custom", New System.Drawing.FontFamily("Arial"), 0, bounds.Width, Point.Empty, StringFormat.GenericTypographic)
	            Return path
	        End Function
	    End Class
	
	    '#End Region
	End Class



#### __[C#] __

{{region ApplyCustomShape}}
	            
	            RadDiagramShape shape1 = new RadDiagramShape()
	            {
	                ShapeText = "",
	                ElementShape = new MyShape(),
	                InternalElementColor = System.Drawing.Color.LightBlue
	            };
	            shape1.Position = new Telerik.Windows.Diagrams.Core.Point(100, 80);
	            radDiagram1.AddShape(shape1);
	        
	{{endregion}}



#### __[VB.NET] __

{{region ApplyCustomShape}}
	
	        Dim shape1 As New RadDiagramShape() With { _
	            .ShapeText = "", _
	            .ElementShape = New MyShape(), _
	            .InternalElementColor = System.Drawing.Color.LightBlue _
	        }
	        shape1.Position = New Telerik.Windows.Diagrams.Core.Point(100, 80)
	
	        '#Region ""
	
	        RadDiagram1.AddShape(shape1)
	    End Sub
	
	    '#Region "MyShape"
	
	    Public Class MyShape
	    Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As System.Drawing.Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddString("Custom", New System.Drawing.FontFamily("Arial"), 0, bounds.Width, Point.Empty, StringFormat.GenericTypographic)
	            Return path
	        End Function
	    End Class
	
	    '#End Region
	End Class

![diagram-custom-shapes 001](images/diagram-custom-shapes001.png)
