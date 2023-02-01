---
title: Scrolling
page_title: Scrolling - RadPanorama
description: RadPanorama is a control that displays elements of type RadTileElement in a mosaic manner.
slug: winforms/panorama/scrolling
tags: scrolling
published: True
position: 6
previous_url: panorama-scrolling
---

# Scrolling

**RadPanorama** provides scrolling behavior. The scroll bar alignment is controlled by the __ScrollBarAlignment__ property:

#### Set scroll bar alignment

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=ScrollBarAlignment}} 
{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=ScrollBarAlignment}} 

````C#
            
this.radPanorama1.ScrollBarAlignment = HorizontalScrollAlignment.Bottom;

````
````VB.NET
Me.RadPanorama1.ScrollBarAlignment = HorizontalScrollAlignment.Bottom

````

{{endregion}}

The thickness of the scroll bar can be changed by modifying the __ScrollBarThickness__ property of the control:

#### Modify scroll bar thickness

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=ScrollThickness}} 
{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=ScrollThickness}} 

````C#
this.radPanorama1.ScrollBarThickness = 16;

````
````VB.NET
Me.RadPanorama1.ScrollBarThickness = 16

````

{{endregion}} 

To change the background image of the view, set the __PanelImage__ property with the desired image. To enable scrolling the background image along with the view, set the __ScrollingBackground__ property to *true*. You will also need to set the __PanelImageSize__ property. Usually, to achieve smooth background scrolling, the width of the panel image should be larger than the client width of the control and smaller than the total width of the tile layout. To edit more properties of the image, you can access its element via the PanoramaElement.__BackgroundImagePrimitive__ property. The following code demonstrates how to setup a tiling background image and a background scrolling:

![WinForms RadPanorama Scrolling](images/panorama-scrolling001.gif)   

#### Set tiling backgroung image

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=SetTilingBackground}} 
{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=SetTilingBackground}} 

````C#
    
void PanoramaGettingStarted_Load(object sender, EventArgs e)
{
    radPanorama1.ScrollingBackground = true;
    
    this.radPanorama1.PanelImage = Resources.bg_pattern;
    this.radPanorama1.PanoramaElement.BackgroundImagePrimitive.ImageLayout = ImageLayout.Tile;
    this.radPanorama1.SizeChanged += new EventHandler(radPanorama1_SizeChanged);
    this.radPanorama1.PanoramaElement.ScrollBar.PropertyChanged += new PropertyChangedEventHandler(ScrollBar_PropertyChanged);
    UpdateImageSize();
}
    
void ScrollBar_PropertyChanged(object sender, PropertyChangedEventArgs e)
{
    if (e.PropertyName == "Maximum")
    {
        UpdateImageSize();
    }
}
    
void radPanorama1_SizeChanged(object sender, EventArgs e)
{
    UpdateImageSize();
}
    
private void UpdateImageSize()
{
    int width = (this.radPanorama1.Width + this.radPanorama1.PanoramaElement.ScrollBar.Maximum) / 2;
    if (width < radPanorama1.Width)
    {
        width = radPanorama1.Width;
    }
    this.radPanorama1.PanelImageSize = new Size(width, radPanorama1.Height);
    this.radPanorama1.PanoramaElement.UpdateViewOnScroll();
}

````
````VB.NET
Private Sub PanoramaGettingStarted_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
    RadPanorama1.ScrollingBackground = True
    Me.RadPanorama1.PanelImage = My.Resources.bg_pattern
    Me.RadPanorama1.PanoramaElement.BackgroundImagePrimitive.ImageLayout = ImageLayout.Tile
    AddHandler Me.RadPanorama1.SizeChanged, AddressOf radPanorama1_SizeChanged
    AddHandler Me.RadPanorama1.PanoramaElement.ScrollBar.PropertyChanged, AddressOf ScrollBar_PropertyChanged
    UpdateImageSize()
End Sub
Private Sub ScrollBar_PropertyChanged(sender As Object, e As PropertyChangedEventArgs)
    If e.PropertyName = "Maximum" Then
        UpdateImageSize()
    End If
End Sub
Private Sub radPanorama1_SizeChanged(sender As Object, e As EventArgs) Handles RadPanorama1.SizeChanged
    UpdateImageSize()
End Sub
Private Sub UpdateImageSize()
    Dim width As Integer = (Me.RadPanorama1.Width + Me.RadPanorama1.PanoramaElement.ScrollBar.Maximum) / 2
    If width < RadPanorama1.Width Then
        width = RadPanorama1.Width
    End If
    Me.RadPanorama1.PanelImageSize = New Drawing.Size(width, 768)
    Me.RadPanorama1.PanoramaElement.UpdateViewOnScroll()
End Sub

````

{{endregion}}

# See Also

* [Properties and Methods ]({%slug winforms/panorama/settings%})	
* [Tiles]({%slug winforms/panorama/tiles%})	
* [Custom Tiles]({%slug winforms/panorama/custom-tiles%})		
