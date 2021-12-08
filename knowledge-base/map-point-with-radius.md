---
title: Specifying a Radius for a MapPoint
description: An example demonstrating how the MapPoint element can be customized to paint a circle with a predefined radius.  
type: how-to
page_title: How to paint a circle specifying its radius in meters
slug: map-point-with-radius
position: 34
tags: map, point, circle
ticketid: 1344573 
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2021.3.1123</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadMap for WinForms</td>
	</tr>
</table>


## Description

An example demonstrating how the **MapPoint** element can be customized to paint a circle with a predefined radius.  

## Solution

The **MapPoint** class accepts a System.Drawing.Size object in its constructor and depending on the specified size the control will paint a circular element. A common requirement is to specify a radius for the map point and have its size adjusted according the radius and the current zoom level of the view port. The solution in this article demonstrates a possible custom implementation introducing a new **RadiusInMeters** property.

>caption Figure 1: Custom Map Point
![map-point-with-radius 001](images/map-point-with-radius001.gif)

#### Updating Header Implementation

````C#

public class CustomMapPoint : MapPoint
{
    private int radiusInMeters;
    private int maxZoom;

    public CustomMapPoint(PointG location) : base(location)
    {
    }

    public CustomMapPoint(PointG location, Size size) : base(location, size)
    {
    }

    public int MaxZoom
    {
        get
        {
            return this.maxZoom;
        }
        set
        {
            this.maxZoom = value;
        }
    }

    public int RadiusInMeters
    {
        get
        {
            return this.radiusInMeters;
        }
        set
        {
            this.radiusInMeters = value;
        }
    }

    public override void ViewportChanged(IMapViewport viewport, ViewportChangeAction action)
    {
        double onePixelInMeters = MapTileSystemHelper.GroundResolution(this.Location.Latitude, this.MaxZoom - viewport.ZoomLevel);
        Console.WriteLine(onePixelInMeters + " " + viewport.ZoomLevel);
        int scale = -1;
        scale = (int)(onePixelInMeters / this.RadiusInMeters * 2);
        
        Size newSize = Size.Empty;
        if (scale > 1)
            newSize = new Size(scale, scale);
        this.Size = newSize;
        base.ViewportChanged(viewport, action);
    }
}


````
````VB.NET
Public Class CustomMapPoint
    Inherits MapPoint

    Private _radiusInMeters As Integer
    Private _maxZoom As Integer

    Public Sub New(ByVal location As PointG)
        MyBase.New(location)
    End Sub

    Public Sub New(ByVal location As PointG, ByVal size As Size)
        MyBase.New(location, size)
    End Sub

    Public Property MaxZoom As Integer
        Get
            Return Me._maxZoom
        End Get
        Set(ByVal value As Integer)
            Me._maxZoom = value
        End Set
    End Property

    Public Property RadiusInMeters As Integer
        Get
            Return Me._radiusInMeters
        End Get
        Set(ByVal value As Integer)
            Me._radiusInMeters = value
        End Set
    End Property

    Public Overrides Sub ViewportChanged(ByVal viewport As IMapViewport, ByVal action As ViewportChangeAction)
        Dim onePixelInMeters As Double = MapTileSystemHelper.GroundResolution(Me.Location.Latitude, Me._maxZoom - viewport.ZoomLevel)
        Console.WriteLine(onePixelInMeters & " " & viewport.ZoomLevel)
        Dim scale As Integer = -1
        scale = CInt((onePixelInMeters / Me._radiusInMeters * 2))
        Dim newSize As Size = Size.Empty
        If scale > 1 Then newSize = New Size(scale, scale)
        Me.Size = newSize
        MyBase.ViewportChanged(viewport, action)
    End Sub
End Class


````

#### Initial Setup

````C#

public RadForm1()
{
    InitializeComponent();

    string cacheFolder = @"..\..\cache";
    OpenStreetMapProvider osmProvider = new OpenStreetMapProvider();
    osmProvider.MaxZoomLevel = 10;
    MapTileDownloader tileDownloader = osmProvider.TileDownloader as MapTileDownloader;
    tileDownloader.WebHeaders.Add(System.Net.HttpRequestHeader.UserAgent, "your application name");
    LocalFileCacheProvider cache = new LocalFileCacheProvider(cacheFolder);
    osmProvider.CacheProvider = cache;
    this.radMap1.MapElement.Providers.Add(osmProvider);

    MapLayer pointLayer = new MapLayer("PointG");
    this.radMap1.Layers.Add(pointLayer);

    CustomMapPoint element = new CustomMapPoint(new PointG(34.04302, -118.26725));
    element.RadiusInMeters = 100;
    element.MaxZoom = osmProvider.MaxZoomLevel;
    element.BackColor = Color.FromArgb(125, Color.LightBlue);
    element.BorderColor = Color.Red;
    this.radMap1.Layers["PointG"].Add(element);
}


````
````VB.NET

Public Sub New()
    InitializeComponent()
    Dim cacheFolder As String = "..\..\cache"
    Dim osmProvider As OpenStreetMapProvider = New OpenStreetMapProvider()
    osmProvider.MaxZoomLevel = 10
    Dim tileDownloader As MapTileDownloader = TryCast(osmProvider.TileDownloader, MapTileDownloader)
    tileDownloader.WebHeaders.Add(System.Net.HttpRequestHeader.UserAgent, "your application name")
    Dim cache As LocalFileCacheProvider = New LocalFileCacheProvider(cacheFolder)
    osmProvider.CacheProvider = cache
    Me.radMap1.MapElement.Providers.Add(osmProvider)
    Dim pointLayer As MapLayer = New MapLayer("PointG")
    Me.radMap1.Layers.Add(pointLayer)
    Dim element As CustomMapPoint = New CustomMapPoint(New PointG(34.04302, -118.26725))
    element.RadiusInMeters = 100
    element.MaxZoom = osmProvider.MaxZoomLevel
    element.BackColor = Color.FromArgb(125, Color.LightBlue)
    element.BorderColor = Color.Red
    Me.radMap1.Layers("PointG").Add(element)
End Sub
 

````

# See Also
* [Exporting RadMap to an Image]({%slug radmap-export-image%})
* [Adding an Image to a Map Pin]({%slug radmap-custom-pins%})