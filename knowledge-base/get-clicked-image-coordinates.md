---
title: How to Get Click Coordinates Relative to the Image 
description: This article demonstrates how to get the mouse coordinates relative to the image  
type: how-to
page_title: How to Get Click Coordinates Relative to the Image  
slug: get-clicked-image-coordinates
position: 5
tags: imageeditor, coordinates, mouse, click
ticketid: 1502640
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.1.223|RadImageEditor for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

When the user clicks over the image in **RadImageEditor**, we want to get the related image (x,y) coordinates. Now, we get the coordinates relative to the control. But if the user scrolls the image, or if the image zoom value is not 100%, then the mouse click position (x,y) and the related image(x,y) coordinates are different. 

This tutorial demonstrates how to get the clicked location relative to the image considering the zoom factor and scroll position:

![](images/get-clicked-image-coordinates001.gif)

## Solution

It is necessary to subscribe to the **ImageEditorElement.CanvasElement.MouseDown** event and transform the point in the **MouseEventArgs** according to the image canvas:

 
````C#
public Form1()
{
    InitializeComponent(); 
    this.radImageEditor1.ImageEditorElement.CanvasElement.MouseDown += CanvasElement_MouseDown; 
}

private void CanvasElement_MouseDown(object sender, MouseEventArgs e)
{
    var m = new RadMatrix(this.radImageEditor1.ImageEditorElement.CanvasElement.TotalTransform);
    m.Invert();
    Point p = Point.Ceiling(m.TransformPoint(e.Location));

    Size drawSize = TelerikDpiHelper.ScaleSize(this.radImageEditor1.ImageEditorElement.CurrentBitmap.Size,
        this.radImageEditor1.ImageEditorElement.ZoomFactor);
    Point offset = new Point(
        (this.radImageEditor1.ImageEditorElement.CanvasElement.Size.Width > drawSize.Width) ?
           -(this.radImageEditor1.ImageEditorElement.CanvasElement.Size.Width - drawSize.Width) / 2 : 0,
        (this.radImageEditor1.ImageEditorElement.CanvasElement.Size.Height > drawSize.Height) ?
            -(this.radImageEditor1.ImageEditorElement.CanvasElement.Size.Height - drawSize.Height) / 2 : 0);

    p.Offset(offset);
    this.Text = p.ToString();
}
  

````
````VB.NET
Sub New()

    InitializeComponent()

    AddHandler Me.RadImageEditor1.ImageEditorElement.CanvasElement.MouseDown, AddressOf CanvasElement_MouseDown 
End Sub

Private Sub CanvasElement_MouseDown(sender As Object, e As MouseEventArgs)
    Dim m = New RadMatrix(Me.RadImageEditor1.ImageEditorElement.CanvasElement.TotalTransform)
    m.Invert()
    Dim p As Point = Point.Ceiling(m.TransformPoint(e.Location))
    Dim drawSize As Size = TelerikDpiHelper.ScaleSize(Me.RadImageEditor1.ImageEditorElement.CurrentBitmap.Size, _
                                                      Me.RadImageEditor1.ImageEditorElement.ZoomFactor)
    Dim offset As Point = New Point(If((Me.RadImageEditor1.ImageEditorElement.CanvasElement.Size.Width > drawSize.Width), _
                                       -(Me.RadImageEditor1.ImageEditorElement.CanvasElement.Size.Width - drawSize.Width) / 2, 0), _
                                   If((Me.RadImageEditor1.ImageEditorElement.CanvasElement.Size.Height > drawSize.Height), _
                                      -(Me.RadImageEditor1.ImageEditorElement.CanvasElement.Size.Height - drawSize.Height) / 2, 0))
    p.Offset(offset)
    Me.Text = p.ToString()
End Sub


````

# See Also

* [Getting Started with RadImageEditor]({%slug radimageeditor-getting-started%})  

