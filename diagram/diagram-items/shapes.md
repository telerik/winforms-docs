---
title: Shapes
page_title: Shapes | UI for WinForms Documentation
description: Shapes
slug: winforms/diagram-(beta)/diagram-items/shapes
tags: shapes
published: True
position: 0
---

# Shapes



This tutorial will walk you through the functionality and the main features of __RadDiagramShape__.

>note Before proceeding with this topic, it is recommended to get familiar with the[visual structure]({%slug winforms/diagram-(beta)/structure%})of the __RadDiagram__ .
>


## RadDiagramShape

__RadDiagramShape__ is an object that describes the nodes of the diagram.
          You can configure its form using the __ElementShape__ property as it allows you to define a custom shape:
        ![diagram-diagram-items-shapes 001](images/diagram-diagram-items-shapes001.png)#_[C#] _

	



{{source=..\SamplesCS\Diagram\DiagramItems.cs region=SetAShape}} 
{{source=..\SamplesVB\Diagram\DiagramItems.vb region=SetAShape}} 

````C#
            
            RadDiagramShape shape1 = new RadDiagramShape()
            {
                ShapeText = "",
                ElementShape = new AShape(),
                InternalElementColor = Color.LimeGreen
            };
            shape1.Position = new Telerik.Windows.Diagrams.Core.Point(100, 100);
            radDiagram1.Items.Add(shape1);
````
````VB.NET

        Dim shape1 As New RadDiagramShape() With { _
            .ShapeText = "", _
            .ElementShape = New AShape(), _
            .InternalElementColor = Color.LimeGreen _
        }
        shape1.Position = New Telerik.Windows.Diagrams.Core.Point(100, 100)
        RadDiagram1.Items.Add(shape1)
        '
````

{{endregion}} 


#_[C#] _

	



{{source=..\SamplesCS\Diagram\DiagramItems.cs region=AShape}} 
{{source=..\SamplesVB\Diagram\DiagramItems.vb region=AShape}} 

````C#
        
        public class AShape : ElementShape
        { 
            public override GraphicsPath CreatePath(Rectangle bounds)
            {
                GraphicsPath path = new GraphicsPath();
                path.AddString("A", new FontFamily("Arial"), 0, 122, Point.Empty, StringFormat.GenericTypographic);
                return path;
            }
        }
````
````VB.NET

    Public Class AShape
    Inherits ElementShape
        Public Overrides Function CreatePath(bounds As Rectangle) As GraphicsPath
            Dim path As New GraphicsPath()
            path.AddString("A", New FontFamily("Arial"), 0, 122, Point.Empty, StringFormat.GenericTypographic)
            Return path
        End Function
    End Class
    '
````

{{endregion}} 




or to use one of the predefined shapes:![diagram-diagram-items-shapes 002](images/diagram-diagram-items-shapes002.png)#_[C#] _

	



{{source=..\SamplesCS\Diagram\DiagramItems.cs region=StarShape}} 
{{source=..\SamplesVB\Diagram\DiagramItems.vb region=StarShape}} 

````C#
            
            RadDiagramShape starShape = new RadDiagramShape()
            {
                ShapeText = "",
                ElementShape = new StarShape(),
                InternalElementColor = Color.LimeGreen
            };
            starShape.Position = new Telerik.Windows.Diagrams.Core.Point(400, 100);
            radDiagram1.Items.Add(starShape);
````
````VB.NET

        Dim starShape As New RadDiagramShape() With { _
            .ShapeText = "", _
            .ElementShape = New StarShape(), _
            .InternalElementColor = Color.LimeGreen _
        }
        starShape.Position = New Telerik.Windows.Diagrams.Core.Point(100, 100)
        RadDiagram1.Items.Add(starShape)

        '
````

{{endregion}} 



