---
title: Custom Shapes
page_title: Custom Shapes | Telerik Presentation Framework
description: This article shows how you can create and use the supported shapes.
slug: winforms/telerik-presentation-framework/diamond-shape
tags: diamond-shape
published: True
position: 100
---

# Custom Shapes

To create a custom shape you need to inherit the `ElementShape` class and override the __CreatePath__ method. In it you should create and return the shape path. For example the following code creates a cross shape.

{{source=..\SamplesCS\TPF\Shapes\ShapesCode.cs region=CustomShape}}  
{{source=..\SamplesVB\TPF\Shapes\ShapesCode.vb region=CustomShape}}
````C#
public class CrossShape : ElementShape
{
    public CrossShape()
    {
        this.Width = 20;
    }
    public override GraphicsPath CreatePath(Rectangle bounds)
    {
        GraphicsPath path = new GraphicsPath();
        path.AddRectangle(new RectangleF(bounds.X, (bounds.Y + bounds.Height / 2) - Width / 2, bounds.Width, Width));
        path.AddRectangle(new RectangleF((bounds.X + bounds.Width / 2) - Width / 2, bounds.Y, Width, bounds.Height));
        path.CloseFigure();
        return path;
    }
    public int Width { get; set; }
}

````
````VB.NET
Public Class CrossShape
    Inherits ElementShape
    Public Sub New()
        Me.Width = 20
    End Sub
    Public Overrides Function CreatePath(ByVal bounds As Rectangle) As GraphicsPath
        Dim path As New GraphicsPath()
        path.AddRectangle(New RectangleF(bounds.X, (bounds.Y + bounds.Height \ 2) - Width \ 2, bounds.Width, Width))
        path.AddRectangle(New RectangleF((bounds.X + bounds.Width \ 2) - Width \ 2, bounds.Y, Width, bounds.Height))
        path.CloseFigure()
        Return path
    End Function
    Public Property Width() As Integer
End Class

````  
 
{{endregion}} 

Figure 1 shows the result from the above code. the shape is applied to a RadPanel.

>caption Figure 1: The cross shape.

![custom-shape001](images/custom-shape001.png)



