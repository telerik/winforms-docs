---
title: How to create sine wave using RadChartView spline AreaSeries
description: Create sine wave using RadChartView spline AreaSeries
type: how-to
page_title: How to create sine wave using RadChartView spline AreaSeries
slug: chartview-sine-wave
position: 0
tags:  chartview, sine, area, sinus
ticketid: 1556729
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.511|RadChartView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

To create sine wave using __AreaSeries__ we can use a custom renderer. The __CartesianRenderer__ is responsible for painting the area for each of your data points.

![ ](images/chartview-sine-wave.png)

## Solution

The starting point of the article is to create a __CustomCartesianRenderer__ class that inherits CartesianRenderer and overrides the __Initialize__ method. This method creates and arranges draw parts responsible for the rendering of each RadChartView segment. After calling the base method, the DrawParts collection contains objects that know how to draw axes, labels, series etc. The particular draw part you would like to replace is of type __AreaSeriesDrawPart__. Your code should be like the following:

````C#

public class CustomCartesianRenderer : CartesianRenderer
{
    public CustomCartesianRenderer(CartesianArea area)
        : base(area)
    { }

    protected override void Initialize()
    {
        base.Initialize();
        for (int i = 0; i < this.DrawParts.Count; i++)
        {
            AreaSeriesDrawPart areaPart = this.DrawParts[i] as AreaSeriesDrawPart;
            if (areaPart != null)
            {
                this.DrawParts[i] = new CustomAreaSeriesDrawPart((AreaSeries)areaPart.Element, this);
            }
        }
    }
}


````
````VB.NET

Public Class CustomCartesianRenderer
    Inherits CartesianRenderer

    Public Sub New(ByVal area As CartesianArea)
        MyBase.New(area)
    End Sub

    Protected Overrides Sub Initialize()
        MyBase.Initialize()

        For i As Integer = 0 To Me.DrawParts.Count - 1
            Dim areaPart As AreaSeriesDrawPart = TryCast(Me.DrawParts(i), AreaSeriesDrawPart)

            If areaPart IsNot Nothing Then
                Me.DrawParts(i) = New CustomAreaSeriesDrawPart(CType(areaPart.Element, AreaSeries), Me)
            End If
        Next
    End Sub
End Class


````

Now we need to create our custom __AreaSeriesDrawPart__ class. In the custom class we can override the __DrawArea()__ in which we can create custom logic to calculate the area of each segment.


````C#

public class CustomAreaSeriesDrawPart : AreaSeriesDrawPart
{
	public CustomAreaSeriesDrawPart(AreaSeries series, IChartRenderer renderer)
		: base(series, renderer)
	{ }

	protected override void DrawArea()
	{
		CartesianRenderer renderer = (CartesianRenderer)this.Renderer;
		AreaSeries area = this.Element as AreaSeries;
		Graphics graphics = renderer.Graphics;
		RadGdiGraphics radGraphics = new RadGdiGraphics(graphics);

		RectangleF rect = ChartRenderer.ToRectangleF(this.Element.Model.LayoutSlot);
		RectangleF clipRect = (RectangleF)renderer.Area
			.GetType()
			.GetMethod("GetCartesianClipRect", BindingFlags.Instance | BindingFlags.NonPublic)
			.Invoke(renderer.Area, new object[]{});

		PointF topLeft = new PointF(clipRect.X, clipRect.Y);
		PointF topRight = new PointF(clipRect.Right - 1, clipRect.Y);
		PointF lowerRight = new PointF(clipRect.Right - 1, clipRect.Bottom - 1);
		PointF lowerLeft = new PointF(clipRect.X, clipRect.Bottom - 1);

		List<PointF[]> allPoints = GetPointsPositionsArrays();

		foreach (PointF[] points in allPoints)
		{
			if (points.Length < 2)
			{
				continue;
			}

			GraphicsPath fillPath = this.GetLinePaths(points);

			if (fillPath == null)
			{
				continue;
			}

			if (this.Element.View.GetArea<CartesianArea>().Orientation == System.Windows.Forms.Orientation.Vertical)
			{
				if (area.VerticalAxis.IsInverse)
				{
					fillPath.AddLine(points[points.Length - 1], new PointF(points[points.Length - 1].X, topRight.Y));
					fillPath.AddLine(topRight, topLeft);
					fillPath.AddLine(new PointF(points[0].X, topLeft.Y), points[0]);
				}
				else
				{
					fillPath.AddLine(points[points.Length - 1], new PointF(points[points.Length - 1].X, points[0].Y));
				}
			}
			else
			{
				if (area.HorizontalAxis.IsInverse)
				{
					fillPath.AddLine(points[points.Length - 1], topRight);
					fillPath.AddLine(topRight, lowerRight);
					fillPath.AddLine(lowerRight, points[0]);
				}
				else
				{
					fillPath.AddLine(points[points.Length - 1], topLeft);
					fillPath.AddLine(topLeft, lowerLeft);
					fillPath.AddLine(lowerLeft, points[0]);
				}
			}

			FillPrimitiveImpl fill = new FillPrimitiveImpl(this.Element, null);
			fill.PaintFill(radGraphics, fillPath, clipRect);

			GraphicsPath borderPath = new GraphicsPath();
			AreaSeries series = (AreaSeries)this.Element;

			borderPath = new GraphicsPath();

			if (series.StrokeMode == AreaSeriesStrokeMode.All ||
				series.StrokeMode == AreaSeriesStrokeMode.AllButPlotLine ||
				series.StrokeMode == AreaSeriesStrokeMode.LeftAndPoints ||
				series.StrokeMode == AreaSeriesStrokeMode.LeftLine)
			{
				if (this.Element.View.GetArea<CartesianArea>().Orientation == System.Windows.Forms.Orientation.Vertical)
				{
					if (area.VerticalAxis.IsInverse)
					{
						borderPath.AddLine(topLeft, points[0]);
					}
					else
					{
						borderPath.AddLine(lowerLeft, points[0]);
					}
				}
				else
				{
					if (area.HorizontalAxis.IsInverse)
					{
						borderPath.AddLine(lowerRight, points[0]);
					}
					else
					{
						borderPath.AddLine(lowerLeft, points[0]);
					}
				}
			}

			if (series.StrokeMode == AreaSeriesStrokeMode.All ||
				series.StrokeMode == AreaSeriesStrokeMode.AllButPlotLine ||
				series.StrokeMode == AreaSeriesStrokeMode.LeftAndPoints ||
				series.StrokeMode == AreaSeriesStrokeMode.Points ||
				series.StrokeMode == AreaSeriesStrokeMode.RightAndPoints)
			{
				GraphicsPath path = GetLinePaths(points);

				if (path != null)
				{
					borderPath.AddPath(path, true);
				}
			}

			if (series.StrokeMode == AreaSeriesStrokeMode.All ||
				series.StrokeMode == AreaSeriesStrokeMode.AllButPlotLine ||
				series.StrokeMode == AreaSeriesStrokeMode.RightAndPoints ||
				series.StrokeMode == AreaSeriesStrokeMode.RightLine)
			{
				if (this.Element.View.GetArea<CartesianArea>().Orientation == System.Windows.Forms.Orientation.Vertical)
				{
					if (area.VerticalAxis.IsInverse)
					{
						borderPath.AddLine(points[points.Length - 1], topRight);
					}
					else
					{
						borderPath.AddLine(points[points.Length - 1], lowerRight);
					}
				}
				else
				{
					if (area.HorizontalAxis.IsInverse)
					{
						borderPath.AddLine(points[points.Length - 1], topRight);
					}
					else
					{
						borderPath.AddLine(points[points.Length - 1], topLeft);
					}
				}
			}

			if (series.StrokeMode == AreaSeriesStrokeMode.All ||
				series.StrokeMode == AreaSeriesStrokeMode.PlotLine)
			{
				if (this.Element.View.GetArea<CartesianArea>().Orientation == System.Windows.Forms.Orientation.Vertical)
				{
					if (area.VerticalAxis.IsInverse)
					{
						borderPath.AddLine(topRight, topLeft);
					}
					else
					{
						borderPath.AddLine(lowerRight, lowerLeft);
					}
				}
				else
				{
					if (area.HorizontalAxis.IsInverse)
					{
						borderPath.AddLine(topRight, lowerRight);
					}
					else
					{
						borderPath.AddLine(lowerLeft, topLeft);
					}
				}
			}

			BorderPrimitiveImpl border = new BorderPrimitiveImpl(this.Element, null);
			border.PaintBorder(radGraphics, null, borderPath, rect);

			if (series.Image != null)
			{
				graphics.SetClip(fillPath);
				ImagePrimitiveImpl image = new ImagePrimitiveImpl(series);
				image.PaintImage(radGraphics, series.Image, clipRect, series.ImageLayout, series.ImageAlignment, series.ImageOpacity, false);
				graphics.ResetClip();
			}
		}
	}
}


````
````VB.NET

Public Class CustomAreaSeriesDrawPart
    Inherits AreaSeriesDrawPart

    Public Sub New(ByVal series As AreaSeries, ByVal renderer As IChartRenderer)
        MyBase.New(series, renderer)
    End Sub

    Protected Overrides Sub DrawArea()
        Dim renderer As CartesianRenderer = CType(Me.Renderer, CartesianRenderer)
        Dim area As AreaSeries = TryCast(Me.Element, AreaSeries)
        Dim graphics As Graphics = renderer.Graphics
        Dim radGraphics As RadGdiGraphics = New RadGdiGraphics(graphics)
        Dim rect As RectangleF = ChartRenderer.ToRectangleF(Me.Element.Model.LayoutSlot)
        Dim clipRect As RectangleF = CType(renderer.Area.[GetType]().GetMethod("GetCartesianClipRect", BindingFlags.Instance Or BindingFlags.NonPublic).Invoke(renderer.Area, New Object() {}), RectangleF)
        Dim topLeft As PointF = New PointF(clipRect.X, clipRect.Y)
        Dim topRight As PointF = New PointF(clipRect.Right - 1, clipRect.Y)
        Dim lowerRight As PointF = New PointF(clipRect.Right - 1, clipRect.Bottom - 1)
        Dim lowerLeft As PointF = New PointF(clipRect.X, clipRect.Bottom - 1)
        Dim allPoints As List(Of PointF()) = GetPointsPositionsArrays()

        For Each points As PointF() In allPoints

            If points.Length < 2 Then
                Continue For
            End If

            Dim fillPath As GraphicsPath = Me.GetLinePaths(points)

            If fillPath Is Nothing Then
                Continue For
            End If

            If Me.Element.View.GetArea(Of CartesianArea)().Orientation = System.Windows.Forms.Orientation.Vertical Then

                If area.VerticalAxis.IsInverse Then
                    fillPath.AddLine(points(points.Length - 1), New PointF(points(points.Length - 1).X, topRight.Y))
                    fillPath.AddLine(topRight, topLeft)
                    fillPath.AddLine(New PointF(points(0).X, topLeft.Y), points(0))
                Else
                    fillPath.AddLine(points(points.Length - 1), New PointF(points(points.Length - 1).X, points(0).Y))
                End If
            Else

                If area.HorizontalAxis.IsInverse Then
                    fillPath.AddLine(points(points.Length - 1), topRight)
                    fillPath.AddLine(topRight, lowerRight)
                    fillPath.AddLine(lowerRight, points(0))
                Else
                    fillPath.AddLine(points(points.Length - 1), topLeft)
                    fillPath.AddLine(topLeft, lowerLeft)
                    fillPath.AddLine(lowerLeft, points(0))
                End If
            End If

            Dim fill As FillPrimitiveImpl = New FillPrimitiveImpl(Me.Element, Nothing)
            fill.PaintFill(radGraphics, fillPath, clipRect)
            Dim borderPath As GraphicsPath = New GraphicsPath()
            Dim series As AreaSeries = CType(Me.Element, AreaSeries)
            borderPath = New GraphicsPath()

            If series.StrokeMode = AreaSeriesStrokeMode.All OrElse series.StrokeMode = AreaSeriesStrokeMode.AllButPlotLine OrElse series.StrokeMode = AreaSeriesStrokeMode.LeftAndPoints OrElse series.StrokeMode = AreaSeriesStrokeMode.LeftLine Then

                If Me.Element.View.GetArea(Of CartesianArea)().Orientation = System.Windows.Forms.Orientation.Vertical Then

                    If area.VerticalAxis.IsInverse Then
                        borderPath.AddLine(topLeft, points(0))
                    Else
                        borderPath.AddLine(lowerLeft, points(0))
                    End If
                Else

                    If area.HorizontalAxis.IsInverse Then
                        borderPath.AddLine(lowerRight, points(0))
                    Else
                        borderPath.AddLine(lowerLeft, points(0))
                    End If
                End If
            End If

            If series.StrokeMode = AreaSeriesStrokeMode.All OrElse series.StrokeMode = AreaSeriesStrokeMode.AllButPlotLine OrElse series.StrokeMode = AreaSeriesStrokeMode.LeftAndPoints OrElse series.StrokeMode = AreaSeriesStrokeMode.Points OrElse series.StrokeMode = AreaSeriesStrokeMode.RightAndPoints Then
                Dim path As GraphicsPath = GetLinePaths(points)

                If path IsNot Nothing Then
                    borderPath.AddPath(path, True)
                End If
            End If

            If series.StrokeMode = AreaSeriesStrokeMode.All OrElse series.StrokeMode = AreaSeriesStrokeMode.AllButPlotLine OrElse series.StrokeMode = AreaSeriesStrokeMode.RightAndPoints OrElse series.StrokeMode = AreaSeriesStrokeMode.RightLine Then

                If Me.Element.View.GetArea(Of CartesianArea)().Orientation = System.Windows.Forms.Orientation.Vertical Then

                    If area.VerticalAxis.IsInverse Then
                        borderPath.AddLine(points(points.Length - 1), topRight)
                    Else
                        borderPath.AddLine(points(points.Length - 1), lowerRight)
                    End If
                Else

                    If area.HorizontalAxis.IsInverse Then
                        borderPath.AddLine(points(points.Length - 1), topRight)
                    Else
                        borderPath.AddLine(points(points.Length - 1), topLeft)
                    End If
                End If
            End If

            If series.StrokeMode = AreaSeriesStrokeMode.All OrElse series.StrokeMode = AreaSeriesStrokeMode.PlotLine Then

                If Me.Element.View.GetArea(Of CartesianArea)().Orientation = System.Windows.Forms.Orientation.Vertical Then

                    If area.VerticalAxis.IsInverse Then
                        borderPath.AddLine(topRight, topLeft)
                    Else
                        borderPath.AddLine(lowerRight, lowerLeft)
                    End If
                Else

                    If area.HorizontalAxis.IsInverse Then
                        borderPath.AddLine(topRight, lowerRight)
                    Else
                        borderPath.AddLine(lowerLeft, topLeft)
                    End If
                End If
            End If

            Dim border As BorderPrimitiveImpl = New BorderPrimitiveImpl(Me.Element, Nothing)
            border.PaintBorder(radGraphics, Nothing, borderPath, rect)

            If series.Image IsNot Nothing Then
                graphics.SetClip(fillPath)
                Dim image As ImagePrimitiveImpl = New ImagePrimitiveImpl(series)
                image.PaintImage(radGraphics, series.Image, clipRect, series.ImageLayout, series.ImageAlignment, series.ImageOpacity, False)
                graphics.ResetClip()
            End If
        Next
    End Sub
End Class


````

What's left is to apply the custom renderer to the RadChartView and add spline AreaSeries with our data.


````C#

public Form1()
{
    InitializeComponent();

    this.radChartView1.CreateRenderer += radChartView1_CreateRenderer;

    AreaSeries areaSeries = new AreaSeries();
    areaSeries.Spline = true;

    for (int x = 0; x < 60; x++) 
    {  
        areaSeries.DataPoints.Add(1 + 1 * Math.Sin(x / Math.PI), x); 
    }

    this.radChartView1.Series.Add(areaSeries);  
    CategoricalAxis horizontalAxis = areaSeries.HorizontalAxis as CategoricalAxis;
    horizontalAxis.StartPositionAxis = areaSeries.VerticalAxis;  
    horizontalAxis.StartPositionValue = 1;
}

private void radChartView1_CreateRenderer(object sender, ChartViewCreateRendererEventArgs e)
{
    e.Renderer = new CustomCartesianRenderer(e.Area as CartesianArea);
}


````
````VB.NET

Class SurroundingClass
    Public Sub New()
        InitializeComponent()
        AddHandler Me.radChartView1.CreateRenderer, AddressOf radChartView1_CreateRenderer
        Dim areaSeries As AreaSeries = New AreaSeries()
        areaSeries.Spline = True

        For x As Integer = 0 To 60 - 1
            areaSeries.DataPoints.Add(1 + 1 * Math.Sin(x / Math.PI), x)
        Next

        Me.radChartView1.Series.Add(areaSeries)
        Dim horizontalAxis As CategoricalAxis = TryCast(areaSeries.HorizontalAxis, CategoricalAxis)
        horizontalAxis.StartPositionAxis = areaSeries.VerticalAxis
        horizontalAxis.StartPositionValue = 1
    End Sub

    Private Sub radChartView1_CreateRenderer(ByVal sender As Object, ByVal e As ChartViewCreateRendererEventArgs)
        e.Renderer = New CustomCartesianRenderer(TryCast(e.Area, CartesianArea))
    End Sub
End Class

````