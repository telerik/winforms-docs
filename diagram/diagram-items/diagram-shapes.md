---
title: Shapes
page_title: Shapes
description: Shapes
slug: diagram-diagram-items-shapes
tags: shapes
published: True
position: 0
---

# Shapes



This tutorial will walk you through the functionality and the main features of __RadDiagramShape__.

## RadDiagramShape

__RadDiagramShape__ is an object that describes the nodes of the diagram.
          You can configure its form using the __ElementShape__ property as it allows you to define a custom shape:
        ![diagram-diagram-items-shapes 001](images/diagram-diagram-items-shapes001.png)

#### __[C#] __

{{source=..\SamplesCS\Diagram\DiagramItems.cs region=SetAShape}}
	            
	            RadDiagramShape shape1 = new RadDiagramShape()
	            {
	                ShapeText = "",
	                ElementShape = new AShape(),
	                InternalElementColor = Color.LimeGreen
	            };
	            shape1.Position = new Telerik.Windows.Diagrams.Core.Point(100, 100);
	            radDiagram1.Items.Add(shape1);
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Diagram\DiagramItems.vb region=SetAShape}}
	
	        Dim shape1 As New RadDiagramShape() With { _
	            .ShapeText = "", _
	            .ElementShape = New AShape(), _
	            .InternalElementColor = Color.LimeGreen _
	        }
	        shape1.Position = New Telerik.Windows.Diagrams.Core.Point(100, 100)
	        RadDiagram1.Items.Add(shape1)
	        '#End Region
	
	        '#Region "StarShape"
	
	        Dim starShape As New RadDiagramShape() With { _
	            .ShapeText = "", _
	            .ElementShape = New StarShape(), _
	            .InternalElementColor = Color.LimeGreen _
	        }
	        starShape.Position = New Telerik.Windows.Diagrams.Core.Point(100, 100)
	        RadDiagram1.Items.Add(starShape)
	
	        '#End Region
	
	        '#Region "AddConnection"
	        Dim connection1 As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        connection1.Source = shape1
	        connection1.Target = starShape
	        connection1.ConnectionPoints.Add(New Point(200, 30))
	
	        RadDiagram1.Items.Add(connection1)
	        '#End Region
	
	        '#Region "PolylineConnection"
	
	        Dim sourceShape As New RadDiagramShape() With { _
	            .ShapeText = "source", _
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = Color.Red _
	        }
	
	        sourceShape.Position = New Telerik.Windows.Diagrams.Core.Point(150, 100)
	        RadDiagram1.Items.Add(sourceShape)
	
	        Dim targetShape As New RadDiagramShape() With { _
	            .ShapeText = "target", _
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = Color.Red _
	        }
	
	        targetShape.Position = New Telerik.Windows.Diagrams.Core.Point(400, 300)
	        RadDiagram1.Items.Add(targetShape)
	
	        Dim polylineConnection As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        polylineConnection.Source = sourceShape
	        polylineConnection.Target = targetShape
	        polylineConnection.ConnectionType = Telerik.Windows.Diagrams.Core.ConnectionType.Polyline
	        RadDiagram1.Items.Add(polylineConnection)
	
	        '#End Region
	
	        '#Region "ConnectionPolylineWithPoints"
	
	        polylineConnection.ConnectionPoints.Add(New Point(300, 140))
	        polylineConnection.ConnectionPoints.Add(New Point(330, 280))
	
	        '#End Region
	
	        '#Region "BezierConnection"
	
	
	        Dim bezierConnection As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        bezierConnection.Source = sourceShape
	        bezierConnection.Target = targetShape
	        bezierConnection.BezierTension = 16
	        bezierConnection.ConnectionType = Telerik.Windows.Diagrams.Core.ConnectionType.Bezier
	        RadDiagram1.Items.Add(bezierConnection)
	
	        '#End Region
	
	        '#Region "SplineConnection"
	
	        Dim splineConnection As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        splineConnection.Source = sourceShape
	        splineConnection.Target = targetShape
	        splineConnection.ConnectionType = Telerik.Windows.Diagrams.Core.ConnectionType.Spline
	        splineConnection.ConnectionPoints.Add(New Point(140, 20))
	        splineConnection.ConnectionPoints.Add(New Point(250, 150))
	        splineConnection.ConnectionPoints.Add(New Point(350, 50))
	        RadDiagram1.Items.Add(splineConnection)
	
	        '#End Region
	
	    End Sub
	
	    '#Region "AShape"
	
	    Public Class AShape
	    Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddString("A", New FontFamily("Arial"), 0, 122, Point.Empty, StringFormat.GenericTypographic)
	            Return path
	        End Function
	    End Class
	    '#End Region
	
	End Class



#### __[C#] __

{{source=..\SamplesCS\Diagram\DiagramItems.cs region=AShape}}
	        
	        public class AShape : ElementShape
	        { 
	            public override GraphicsPath CreatePath(Rectangle bounds)
	            {
	                GraphicsPath path = new GraphicsPath();
	                path.AddString("A", new FontFamily("Arial"), 0, 122, Point.Empty, StringFormat.GenericTypographic);
	                return path;
	            }
	        }
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Diagram\DiagramItems.vb region=AShape}}
	
	    Public Class AShape
	    Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddString("A", New FontFamily("Arial"), 0, 122, Point.Empty, StringFormat.GenericTypographic)
	            Return path
	        End Function
	    End Class
	    '#End Region
	
	End Class



or to use one of the predefined shapes:![diagram-diagram-items-shapes 002](images/diagram-diagram-items-shapes002.png)

#### __[C#] __

{{source=..\SamplesCS\Diagram\DiagramItems.cs region=StarShape}}
	            
	            RadDiagramShape starShape = new RadDiagramShape()
	            {
	                ShapeText = "",
	                ElementShape = new StarShape(),
	                InternalElementColor = Color.LimeGreen
	            };
	            starShape.Position = new Telerik.Windows.Diagrams.Core.Point(400, 100);
	            radDiagram1.Items.Add(starShape);
	        
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Diagram\DiagramItems.vb region=StarShape}}
	
	        Dim starShape As New RadDiagramShape() With { _
	            .ShapeText = "", _
	            .ElementShape = New StarShape(), _
	            .InternalElementColor = Color.LimeGreen _
	        }
	        starShape.Position = New Telerik.Windows.Diagrams.Core.Point(100, 100)
	        RadDiagram1.Items.Add(starShape)
	
	        '#End Region
	
	        '#Region "AddConnection"
	        Dim connection1 As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        connection1.Source = shape1
	        connection1.Target = starShape
	        connection1.ConnectionPoints.Add(New Point(200, 30))
	
	        RadDiagram1.Items.Add(connection1)
	        '#End Region
	
	        '#Region "PolylineConnection"
	
	        Dim sourceShape As New RadDiagramShape() With { _
	            .ShapeText = "source", _
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = Color.Red _
	        }
	
	        sourceShape.Position = New Telerik.Windows.Diagrams.Core.Point(150, 100)
	        RadDiagram1.Items.Add(sourceShape)
	
	        Dim targetShape As New RadDiagramShape() With { _
	            .ShapeText = "target", _
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = Color.Red _
	        }
	
	        targetShape.Position = New Telerik.Windows.Diagrams.Core.Point(400, 300)
	        RadDiagram1.Items.Add(targetShape)
	
	        Dim polylineConnection As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        polylineConnection.Source = sourceShape
	        polylineConnection.Target = targetShape
	        polylineConnection.ConnectionType = Telerik.Windows.Diagrams.Core.ConnectionType.Polyline
	        RadDiagram1.Items.Add(polylineConnection)
	
	        '#End Region
	
	        '#Region "ConnectionPolylineWithPoints"
	
	        polylineConnection.ConnectionPoints.Add(New Point(300, 140))
	        polylineConnection.ConnectionPoints.Add(New Point(330, 280))
	
	        '#End Region
	
	        '#Region "BezierConnection"
	
	
	        Dim bezierConnection As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        bezierConnection.Source = sourceShape
	        bezierConnection.Target = targetShape
	        bezierConnection.BezierTension = 16
	        bezierConnection.ConnectionType = Telerik.Windows.Diagrams.Core.ConnectionType.Bezier
	        RadDiagram1.Items.Add(bezierConnection)
	
	        '#End Region
	
	        '#Region "SplineConnection"
	
	        Dim splineConnection As New RadDiagramConnection() With { _
	            .Name = "connection1" _
	        }
	
	        splineConnection.Source = sourceShape
	        splineConnection.Target = targetShape
	        splineConnection.ConnectionType = Telerik.Windows.Diagrams.Core.ConnectionType.Spline
	        splineConnection.ConnectionPoints.Add(New Point(140, 20))
	        splineConnection.ConnectionPoints.Add(New Point(250, 150))
	        splineConnection.ConnectionPoints.Add(New Point(350, 50))
	        RadDiagram1.Items.Add(splineConnection)
	
	        '#End Region
	
	    End Sub
	
	    '#Region "AShape"
	
	    Public Class AShape
	    Inherits ElementShape
	        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
	            Dim path As New GraphicsPath()
	            path.AddString("A", New FontFamily("Arial"), 0, 122, Point.Empty, StringFormat.GenericTypographic)
	            Return path
	        End Function
	    End Class
	    '#End Region
	
	End Class


