---
title: Scrolling
page_title: Scrolling
description: Scrolling
slug: panorama-scrolling
tags: scrolling
published: True
position: 5
---

# Scrolling



## Scrolling

The scroll bar alignment is controlled by the __ScrollBarAlignment__ property:

#### __[C#] Set scroll bar alignment__

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=ScrollBarAlignment}}
	            this.radPanorama1.ScrollBarAlignment = HorizontalScrollAlignment.Bottom;
	{{endregion}}



#### __[VB.NET] Set scroll bar alignment__

{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=ScrollBarAlignment}}
	        Me.RadPanorama1.ScrollBarAlignment = HorizontalScrollAlignment.Bottom
	{{endregion}}



The thickness of the scroll bar can be changed by modifying the __ScrollBarThickness__ property of the control:

#### __[C#] Modify scroll bar thickness__

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=ScrollThickness}}
	            this.radPanorama1.ScrollBarThickness = 16;
	{{endregion}}



#### __[VB.NET] Modify scroll bar thickness__

{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=ScrollThickness}}
	        Me.RadPanorama1.ScrollBarThickness = 16
	{{endregion}}



To change the background image of the view, set the __PanelImage__ property with the desired image. To enable 
			scrolling the background image along with the view, set the __ScrollingBackground__ property to *true*. 
			You will also need to set the __PanelImageSize__ property. Usually, to achieve smooth background scrolling, the width 
			of the panel image should be larger than the client width of the control and smaller than the total width of the tile layout.
			To edit more properties of the image, you can access its element via the __PanoramaElement.BackgroundImagePrimitive__ property. 
			The following code demonstrates how to setup a tiling background image and a background scrolling:
		

#### __[C#] Set tiling backgroung image__

{{source=..\SamplesCS\Panorama\PanoramaGettingStarted.cs region=SetTilingBackground}}
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
	{{endregion}}



#### __[VB.NET] Set tiling backgroung image__

{{source=..\SamplesVB\Panorama\PanoramaGettingStarted.vb region=SetTilingBackground}}
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
	{{endregion}}


