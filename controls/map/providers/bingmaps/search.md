---
title: Search
page_title: Search - WinForms Map Control
description: WinForms Map allows you to implement search functionality, that will let the user search for a specific location on the map.
slug: winforms/map/providers/search
tags: map, providers, search
published: True
position: 2 
---

# Search

>important Please note that [Bing Maps](https://www.bingmapsportal.com/) __will be deprecated effective June 30, 2025__. As an alternative, users can refer to the [SDK example available in our GitHub repository](https://github.com/telerik/winforms-sdk/tree/master/Map/Custom%20Azure%20Provider), which demonstrates how to create a __custom provider__ using the __Azure Maps API__. A __valid Azure Maps subscription key__ is required to use this functionality.

__RadMap__ allows you to implement search functionality, that will let the user search for a specific location on the map. The search is performed through an __IMapSearchProvider__, which communicates with the respective map provider's services. __BingRestMapProvider__ implements the __IMapSearchProvider__ interface.

>caption Figure 1: Bing search

![WinForms RadMap Bing search](images/map-providers-bingmaps-search001.gif)

In order to use the built-in search bar that __RadMap__ offers set the __ShowSearchBar__ property to *true*. Depending on the amount of control you want to have over the search you can do one of three things. First, you can subscribe to the __MapSearchBarElement__'s __SearchCriteriaChanged__ event. In the event handler you will receive the search criteria and you are responsible for the rest of the search handling. That is __RadMap__ will not perform any further actions related to the search. Second, if you have not subscribed to the __SearchCriteriaChanged__ event you can set the SearchBarElement.__SearchProvider__ property to an __IMapSearchProvider__ instance. When you do this __RadMap__ will initiate a new search through that provider. You should still handle the search result through the provider's __SearchCompleted__ and __SearchError__ events. Third, if you have not subscribed to the event and you have not set the SearchBarElement.__SearchProvider__ property __RadMap__ will go through its __Providers__ collection and will initiate a search through the first provider that implements the __IMapSearchProvider__. Results will be displayed in a layer named *Search*. If the layer does not exist it will be added by __RadMap__. You should note that all overlays will be removed from the *Search* layer when a new search is initiated.

In this example we will use the second approach by setting the  MapElement.SearchBarElement.__SearchProvider__ property to the __BingRestMapProvider__ that the map is currently using. Then, subscribe to the __SearchProvider__'s __SearchCompleted__ and __SearchError__ events. The __SearchCompletedEventArgs__ gives you the __Locations__ result which can be used to place a __MapPin__ to the  added *pins* __MapLayer__ for each search result. The __SearchError__ event is the place for handling any kind of errors that occur during the search operation.

#### Bing search

{{source=..\SamplesCS\Map\BingProvider.cs region=SearchCompleted}} 
{{source=..\SamplesVB\Map\BingProvider.vb region=SearchCompleted}}

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
    else
    {
        RadMessageBox.Show("No result found for the provided search query!");
    }
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

>note The **MapSearchBarElement** can be setup with no explicit search provider. In this case the search element will traverse the providers collection of **RadMapElement** for a **IMapSearchProvider** instance. The MapSearchBarElement.**ShowMessageBoxOnError** property determines whether a messagebox will be displayed upon error or not when the **SearchProvider** property of the element is not set. The default value of the property is set to *true*. 

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
