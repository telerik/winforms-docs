---
title: Map Factory
page_title: Map Factory | RadMap
description: MapVisualElementFactory allows creating tile elements.
slug: winforms/map/map-factory
tags: map
published: True
position: 2 
---

#  Map Factory

**RadMap** provides means for changing the default **MapPoint**, **MapPolyline**, **MapPolygon**, **MapPath**, **MapCluster** or **MapTile** elements. 

If you need to customize any of these elements you can use the **MapVisualElementFactory** class. It allows you to replace the default elements with custom ones. This can be achieved by creating a **MapVisualElementFactory** descendant class and overriding one of the following methods according to the element you want to replace. Then, set the static RadMapElement.**VisualElementFactory** property before starting the usage of **RadMap**.

{{source=..\SamplesCS\Map\CustomMapFactory.cs region=MyMapProvider}} 
{{source=..\SamplesVB\Map\CustomMapFactory.vb region=MyMapProvider}} 

````C#
    
public partial class CustomMapFactory : Form
{
    public CustomMapFactory()
    {
        InitializeComponent();
        
        //Specify the map factory
        RadMapElement.VisualElementFactory = new MyMapVisualElementFactory();
        
        //Specify the map provider
        string cacheFolder = @"C:\cache";
        OpenStreetMapProvider osmProvider = new OpenStreetMapProvider();
        LocalFileCacheProvider cache = new LocalFileCacheProvider(cacheFolder);
        osmProvider.CacheProvider = cache;
        this.radMap1.MapElement.Providers.Add(osmProvider);
    }
}
    
public class MyMapVisualElementFactory : MapVisualElementFactory
{
    public override MapVisualElement CreatePoint(Telerik.WinControls.UI.Map.PointG location)
    {
        return base.CreatePoint(location);
    }
    
    public override MapVisualElement CreatePolyline(System.Collections.ObjectModel.Collection<Telerik.WinControls.UI.Map.PointG> points)
    {
        MapPolyline polyline = new MapPolyline(points);
        
        return polyline;
    }
    
    public override MapVisualElement CreatePolygon(System.Collections.ObjectModel.Collection<Telerik.WinControls.UI.Map.PointG> points)
    {
        MapPolygon polygon = new MapPolygon(points);
        
        return polygon;
    }
    
    public override MapVisualElement CreatePath(System.Collections.ObjectModel.Collection<System.Collections.ObjectModel.Collection<Telerik.WinControls.UI.Map.PointG>> points)
    {
        MapPath path = new MapPath(points);
        
        return path;
    }
    
    public override MapCluster CreateCluster()
    {
        MapCluster cluster = new MapCluster();
        
        return cluster;
    }
    
    public override MapTile CreateTile(Image image, Rectangle rectangle)
    {
        MapTile tile = new MapTile(image, rectangle);
        
        return tile;
    }
}

````
````VB.NET
Sub New()
    InitializeComponent()
    'Specify the map factory
    RadMapElement.VisualElementFactory = New MyMapVisualElementFactory()
    'Specify the map provider
    Dim cacheFolder As String = "C:\cache"
    Dim osmProvider As OpenStreetMapProvider = New OpenStreetMapProvider()
    Dim cache As LocalFileCacheProvider = New LocalFileCacheProvider(cacheFolder)
    osmProvider.CacheProvider = cache
    Me.RadMap1.MapElement.Providers.Add(osmProvider)
End Sub
Public Class MyMapVisualElementFactory
    Inherits MapVisualElementFactory
    Public Overrides Function CreatePoint(ByVal location As Telerik.WinControls.UI.Map.PointG) As MapVisualElement
        Return MyBase.CreatePoint(location)
    End Function
    Public Overrides Function CreatePolyline(ByVal points As System.Collections.ObjectModel.Collection(Of Telerik.WinControls.UI.Map.PointG)) As MapVisualElement
        Dim polyline As MapPolyline = New MapPolyline(points)
        Return polyline
    End Function
    Public Overrides Function CreatePolygon(ByVal points As System.Collections.ObjectModel.Collection(Of Telerik.WinControls.UI.Map.PointG)) As MapVisualElement
        Dim polygon As MapPolygon = New MapPolygon(points)
        Return polygon
    End Function
    Public Overrides Function CreatePath(ByVal points As System.Collections.ObjectModel.Collection(Of System.Collections.ObjectModel.Collection(Of Telerik.WinControls.UI.Map.PointG))) As MapVisualElement
        Dim path As MapPath = New MapPath(points)
        Return path
    End Function
    Public Overrides Function CreateCluster() As MapCluster
        Dim cluster As MapCluster = New MapCluster()
        Return cluster
    End Function
    Public Overrides Function CreateTile(ByVal image As Image, ByVal rectangle As Rectangle) As MapTile
        Dim tile As MapTile = New MapTile(image, rectangle)
        Return tile
    End Function
End Class

````

{{endregion}} 


# See Also
* [Providers]({%slug winforms/map/providers%})
* [File Readers]({%slug winforms/map/file-readers%})
* [Features]({%slug winforms/map/features/layers/overview%})

