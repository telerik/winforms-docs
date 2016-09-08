---
title: Search
page_title: Search | RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/providers/search
tags: map, providers
published: True
position: 2 
---

# Search

__RadMap__ allows you to implement search functionality, that will let the user to search for a specific location on the map. The search is performed by using an __IMapSearchProvider__, which communicates with the respective map provider's services. __BingRestMapProvider__ implements the __IMapSearchProvider__ interface.

>caption Figure 1: Bing search

![map-providers-bingmaps-search 001](images/map-providers-bingmaps-search001.gif)

In order to use the search functionality that __RadMap__ supports set the __ShowSearchBar__ property to *true*. It is necessary to set the  MapElement.SearchBarElement.__SearchProvider__ property to the __BingRestMapProvider__ that your map is currently using. Then, subscribe to the __SearchProvider__'s __SearchCompleted__ and __SearchError__ events. The __SearchCompletedEventArgs__ gives you the __Locations__ result which can be used to place a __MapPin__ to the  added *pins* __MapLayer__ for each search result. The __SearchError__ event is appropriate for handling any kind of errors that occur during the search operation.

#### Bing search

{{source=..\SamplesCS\Map\BingProvider.cs region=GettingStarted}} 
{{source=..\SamplesVB\Map\BingProvider.vb region=GettingStarted}}

````C#
private void BingProvider_Load(object sender, EventArgs e)
{
	this.radMap1.ShowSearchBar = true;
    BingRestMapProvider bingProvider = this.radMap1.Providers[0] as BingRestMapProvider;
    Telerik.WinControls.UI.MapLayer pinsLayer = new MapLayer("Pins");
    this.radMap1.Layers.Add(pinsLayer);
    this.radMap1.MapElement.SearchBarElement.SearchProvider = bingProvider;

    this.radMap1.MapElement.SearchBarElement.SearchProvider.SearchCompleted += BingProvider_SearchCompleted;
    this.radMap1.MapElement.SearchBarElement.SearchProvider.SearchError += BingProvider_SearchError;
}

private void BingProvider_SearchError(object sender, SearchErrorEventArgs e)
{
    RadMessageBox.Show(e.Error.Message);
}

private void BingProvider_SearchCompleted(object sender, SearchCompletedEventArgs e)
{
    Telerik.WinControls.UI.Map.RectangleG allPoints = new Telerik.WinControls.UI.Map.RectangleG(double.MinValue, double.MaxValue, double.MaxValue, double.MinValue);
    this.radMap1.Layers["Pins"].Clear();
    foreach (Telerik.WinControls.UI.Map.Bing.Location location in e.Locations)
    {
        Telerik.WinControls.UI.Map.PointG point = new Telerik.WinControls.UI.Map.PointG(location.Point.Coordinates[0], location.Point.Coordinates[1]);
        MapPin pin = new MapPin(point);
        pin.Size = new System.Drawing.Size(20, 40);
        pin.BackColor = Color.Red;
        pin.ToolTipText = location.Address.FormattedAddress;
        this.radMap1.MapElement.Layers["Pins"].Add(pin);
        allPoints.North = Math.Max(allPoints.North, point.Latitude);
        allPoints.South = Math.Min(allPoints.South, point.Latitude);
        allPoints.West = Math.Min(allPoints.West, point.Longitude);
        allPoints.East = Math.Max(allPoints.East, point.Longitude);
    }
    if (e.Locations.Length > 0)
    {
        if (e.Locations.Length == 1)
        {
            this.radMap1.BringIntoView(new Telerik.WinControls.UI.Map.PointG(e.Locations[0].Point.Coordinates[0], e.Locations[0].Point.Coordinates[1]));
        }
        else
        {
            this.radMap1.MapElement.BringIntoView(allPoints);
            this.radMap1.Zoom(this.radMap1.MapElement.ZoomLevel - 1);
        }
    }
    else { RadMessageBox.Show("No result found for the provided search query!"); }
}

````
````VB.NET
Private Sub BingProvider_Load(sender As Object, e As EventArgs) Handles Me.Load
	Me.radMap1.ShowSearchBar = True    
	Dim bingProvider As BingRestMapProvider = TryCast(Me.radMap1.Providers(0), BingRestMapProvider)
    Dim pinsLayer As Telerik.WinControls.UI.MapLayer = New MapLayer("Pins")
    Me.radMap1.Layers.Add(pinsLayer)
    Me.radMap1.MapElement.SearchBarElement.SearchProvider = bingProvider

    AddHandler Me.radMap1.MapElement.SearchBarElement.SearchProvider.SearchCompleted, AddressOf BingProvider_SearchCompleted
    AddHandler Me.radMap1.MapElement.SearchBarElement.SearchProvider.SearchError, AddressOf BingProvider_SearchError
End Sub

Private Sub BingProvider_SearchError(sender As Object, e As SearchErrorEventArgs)
    RadMessageBox.Show(e.[Error].Message)
End Sub

Private Sub BingProvider_SearchCompleted(sender As Object, e As SearchCompletedEventArgs)
    Dim allPoints As New Telerik.WinControls.UI.Map.RectangleG(Double.MinValue, Double.MaxValue, Double.MaxValue, Double.MinValue)
    Me.radMap1.Layers("Pins").Clear()
    For Each location As Telerik.WinControls.UI.Map.Bing.Location In e.Locations
        Dim point As New Telerik.WinControls.UI.Map.PointG(location.Point.Coordinates(0), location.Point.Coordinates(1))
        Dim pin As New MapPin(point)
        pin.Size = New System.Drawing.Size(20, 40)
        pin.BackColor = Color.Red
        pin.ToolTipText = location.Address.FormattedAddress
        Me.radMap1.MapElement.Layers("Pins").Add(pin)
        allPoints.North = Math.Max(allPoints.North, point.Latitude)
        allPoints.South = Math.Min(allPoints.South, point.Latitude)
        allPoints.West = Math.Min(allPoints.West, point.Longitude)
        allPoints.East = Math.Max(allPoints.East, point.Longitude)
    Next
    If e.Locations.Length > 0 Then
        If e.Locations.Length = 1 Then
            Me.radMap1.BringIntoView(New Telerik.WinControls.UI.Map.PointG(e.Locations(0).Point.Coordinates(0), e.Locations(0).Point.Coordinates(1)))
        Else
            Me.radMap1.MapElement.BringIntoView(allPoints)
            Me.radMap1.Zoom(Me.radMap1.MapElement.ZoomLevel - 1)
        End If
    Else
        RadMessageBox.Show("No result found for the provided search query!")
    End If
End Sub

````

{{endregion}} 

>note Enter some text in the search box and press `Enter` to start searching.

## SearchRequest

You can perform searching programmatically by using a __SearchRequest__:

#### Bing search

{{source=..\SamplesCS\Map\BingProvider.cs region=BingSearchRequest}} 
{{source=..\SamplesVB\Map\BingProvider.vb region=BingSearchRequest}}

````C#
Telerik.WinControls.UI.Map.Bing.SearchRequest request = new SearchRequest();
request.Query = "San Marino";
request.SearchOptions.Count = 10;
request.SearchOptions.QueryParse = true;
BingRestMapProvider bingProvider = this.radMap1.Providers[0] as BingRestMapProvider;
bingProvider.SearchAsync(request);

````
````VB.NET
Dim request As Telerik.WinControls.UI.Map.Bing.SearchRequest = New SearchRequest()
request.Query = "San Marino"
request.SearchOptions.Count = 10
request.SearchOptions.QueryParse = True
Dim bingProvider As BingRestMapProvider = TryCast(Me.radMap1.Providers(0), BingRestMapProvider)
bingProvider.SearchAsync(request)

````

{{endregion}} 

>note It is necessary to handle the __SearchProvider__'s __SearchCompleted__ and __SearchError__ events as it is demonstrated above.

# See Also
* [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%})