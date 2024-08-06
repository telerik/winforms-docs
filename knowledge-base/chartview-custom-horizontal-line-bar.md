---
title: Adding a Custom Horizontal Line at the Bottom of a Bar in RadChartView
description: Learn how to add a custom horizontal line at the bottom of a bar in RadChartView for WinForms by custom rendering.
type: how-to
page_title: How to Add a Custom Horizontal Line in RadChartView Bars
slug: chartview-custom-horizontal-line-bar
tags: chartview, winforms, custom rendering, bar series, customization, line
res_type: kb
ticketid: 1652661
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.514|RadChartView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In the following example, we will add a horizontal line at the bottom of a bar series of rectangle points. This customization will visually enhance the bar chart by marking specific data points or thresholds.

## Solution

To achieve the desired effect of adding a custom horizontal line at the bottom of a bar in RadChartView, follow these steps:

1. **Create a Custom BarSeriesDrawPart Class**: Derive from `BarSeriesDrawPart` and override the `DrawSeriesParts()` method to include the logic for drawing an additional line on the bars.

```vb
Public Class CustomBarSeriesDrawPart
    Inherits BarSeriesDrawPart

    Public Sub New(ByVal series As BarSeries, ByVal renderer As IChartRenderer)
        MyBase.New(series, renderer)
    End Sub

    Public Overrides Sub DrawSeriesParts()
        MyBase.DrawSeriesParts()
        Dim renderer As ChartRenderer = TryCast(Me.Renderer, ChartRenderer)
        Dim graphics As Graphics = CType(renderer.Surface, Graphics)
        Dim radGraphics As RadGdiGraphics = New RadGdiGraphics(graphics)

        For index = 0 To Me.Element.DataPoints.Count - 1
            Dim dataPoint As CategoricalDataPoint = TryCast(Me.Element.DataPoints(index), CategoricalDataPoint)
            Dim slot As RadRect = Me.Element.DataPoints(index).LayoutSlot
            Dim barBounds As RectangleF = New RectangleF(System.Convert.ToSingle((Me.OffsetX + slot.X)), System.Convert.ToSingle((slot.Height + slot.Y + 18)), System.Convert.ToSingle(slot.Width), System.Convert.ToSingle(slot.Height))

            graphics.DrawLine(Pens.Red, New Point(CInt(barBounds.X), CInt(barBounds.Y) + 20), New Point(CInt(barBounds.X) + barBounds.Width, CInt(barBounds.Y) + 20))
        Next
    End Sub
End Class
```

2. **Create a Custom Cartesian Renderer Class**: Derive from `CartesianRenderer` and override the `Initialize()` method to replace the default `BarSeriesDrawPart` with the custom one.

```vb
Public Class CustomCartesianRenderer
    Inherits CartesianRenderer

    Public Sub New(ByVal area As CartesianArea)
        MyBase.New(area)
    End Sub

    Protected Overrides Sub Initialize()
        MyBase.Initialize()

        For i As Integer = 0 To Me.DrawParts.Count - 1
            Dim linePart As BarSeriesDrawPart = TryCast(Me.DrawParts(i), BarSeriesDrawPart)

            If linePart IsNot Nothing Then
                Me.DrawParts(i) = New CustomBarSeriesDrawPart(CType(linePart.Element, BarSeries), Me)
            End If
        Next
    End Sub
End Class
```

3. **Apply the Custom Renderer**: Handle the `CreateRenderer` event of the RadChartView control and assign the custom renderer.

```vb
Private Sub radChartView1_CreateRenderer(ByVal sender As Object, ByVal e As ChartViewCreateRendererEventArgs)
    e.Renderer = New CustomCartesianRenderer(TryCast(e.Area, CartesianArea))
End Sub
```

By following these steps, you can customize the appearance of the bars in RadChartView by adding a horizontal line at their bottoms. This approach leverages the custom rendering feature of RadChartView to enhance data visualization.

## See Also

- [Custom Rendering in RadChartView](https://docs.telerik.com/devtools/winforms/controls/chartview/customization/custom-rendering)
