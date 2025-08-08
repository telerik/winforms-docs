---
title: Search
page_title: Search - WinForms Map Control
description: WinForms Map allows you to implement search functionality, that will let the user search for a specific location on the map.
slug: map-providers-azure-search
tags: map, providers, search
published: True
position: 2 
---

# Search

__RadMap - AzureMapProvider__ allows you to implement search functionality, that will let the user search for a specific location on the map. The search is performed through an __IMapBaseSearchProvider__, which communicates with the respective map provider's services. __AzureMapProvider__ implements the __IAzureMapSearchProvider__ interface that inherits the __IMapBaseSearchProvider__.

>caption Figure 1: Azure search

![WinForms RadMap Azure Search](images/map-providers-azure-search001.gif)

In order to use the built-in search bar that __RadMap__ offers set the __ShowSearchBar__ property to *true*. Depending on the amount of control you want to have over the search you can do one of three things. 

* First, you can subscribe to the __MapSearchBarElement__'s __SearchCriteriaChanged__ event. In the event handler you will receive the search criteria and you are responsible for the rest of the search handling. That is __RadMap__ will not perform any further actions related to the search.

* Second, if you have not subscribed to the __SearchCriteriaChanged__ event you can set the SearchBarElement.__SearchProvider__ property to an __IMapBaseSearchProvider__ instance. When you do this __RadMap__ will initiate a new search through that provider. You should still handle the search result through the provider's __SearchCompleted__ and __SearchError__ events. 

* Third, if you have not subscribed to the event and you have not set the SearchBarElement.__SearchProvider__ property __RadMap__ will go through its __Providers__ collection and will initiate a search through the first provider that implements the __IMapBaseSearchProvider__. Results will be displayed in a layer named *Search*. If the layer does not exist it will be added by __RadMap__. You should note that all overlays will be removed from the *Search* layer when a new search is initiated.

In this example we will use the second approach by setting the  MapElement.SearchBarElement.__SearchProvider__ property to the __AzureMapProvider__ that the map is currently using. Then, subscribe to the __SearchProvider__'s __SearchCompleted__ and __SearchError__ events. The __SearchCompletedEventArgs__ gives you the __Locations__ result which can be used to place a __MapPin__ to the  added *pins* __MapLayer__ for each search result. The __SearchError__ event is the place for handling any kind of errors that occur during the search operation.

#### Azure search

````C#
        
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);

    this.radMap1.ShowSearchBar = true;
    AzureMapProvider azureProvider = this.radMap1.Providers[0] as AzureMapProvider;
    Telerik.WinControls.UI.MapLayer pinsLayer = new MapLayer("Pins");
    this.radMap1.Layers.Add(pinsLayer);
    this.radMap1.MapElement.SearchBarElement.SearchProvider = azureProvider;

    azureProvider.SearchCompleted += AzureProvider_SearchCompleted;
    azureProvider.SearchError += AzureProvider_SearchError;
}

private void AzureProvider_SearchError(object sender, SearchErrorEventArgs e)
{
    RadMessageBox.Show(e.Error.Message);
}

private void AzureProvider_SearchCompleted(object sender, AzureSearchCompletedEventArgs e)
{
    Telerik.WinControls.UI.Map.RectangleG allPoints = new Telerik.WinControls.UI.Map.RectangleG(double.MinValue, double.MaxValue, double.MaxValue, double.MinValue);
    this.radMap1.Layers["Pins"].Clear();

    foreach (Result result in e.AzureResponse.Results)
    {
        var latitude = result.Position.Latitude;
        var longitude = result.Position.Longitude;
        Telerik.WinControls.UI.Map.PointG point = new Telerik.WinControls.UI.Map.PointG(latitude, longitude);
        MapPin pin = new MapPin(point);
        pin.Size = new System.Drawing.Size(20, 40);
        pin.BackColor = Color.Red;
        pin.ToolTipText = result.Address.FreeformAddress;

        this.radMap1.MapElement.Layers["Pins"].Add(pin);
        allPoints.North = Math.Max(allPoints.North, point.Latitude);
        allPoints.South = Math.Min(allPoints.South, point.Latitude);
        allPoints.West = Math.Min(allPoints.West, point.Longitude);
        allPoints.East = Math.Max(allPoints.East, point.Longitude);
    }
    if (e.AzureResponse.Results.Length > 0)
    {
        if (e.AzureResponse.Results.Length == 1)
        {
            var latitude = e.AzureResponse.Results[0].Position.Latitude;
            var longitude = e.AzureResponse.Results[0].Position.Longitude;
            this.radMap1.BringIntoView(new Telerik.WinControls.UI.Map.PointG(latitude, longitude));
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

Protected Overrides Sub OnLoad(e As EventArgs)
    MyBase.OnLoad(e)

    Me.radMap1.ShowSearchBar = True
    Dim azureProvider As AzureMapProvider = TryCast(Me.radMap1.Providers(0), AzureMapProvider)
    Dim pinsLayer As New Telerik.WinControls.UI.MapLayer("Pins")
    Me.radMap1.Layers.Add(pinsLayer)
    Me.radMap1.MapElement.SearchBarElement.SearchProvider = azureProvider

    AddHandler azureProvider.SearchCompleted, AddressOf AzureProvider_SearchCompleted
    AddHandler azureProvider.SearchError, AddressOf AzureProvider_SearchError
End Sub

Private Sub AzureProvider_SearchError(sender As Object, e As SearchErrorEventArgs)
    RadMessageBox.Show(e.Error.Message)
End Sub

Private Sub AzureProvider_SearchCompleted(sender As Object, e As AzureSearchCompletedEventArgs)
    Dim allPoints As New Telerik.WinControls.UI.Map.RectangleG(Double.MinValue, Double.MaxValue, Double.MaxValue, Double.MinValue)
    Me.radMap1.Layers("Pins").Clear()

    For Each result As Result In e.AzureResponse.Results
        Dim latitude = result.Position.Latitude
        Dim longitude = result.Position.Longitude
        Dim point As New Telerik.WinControls.UI.Map.PointG(latitude, longitude)
        Dim pin As New MapPin(point)
        pin.Size = New System.Drawing.Size(20, 40)
        pin.BackColor = Color.Red
        pin.ToolTipText = result.Address.FreeformAddress

        Me.radMap1.MapElement.Layers("Pins").Add(pin)
        allPoints.North = Math.Max(allPoints.North, point.Latitude)
        allPoints.South = Math.Min(allPoints.South, point.Latitude)
        allPoints.West = Math.Min(allPoints.West, point.Longitude)
        allPoints.East = Math.Max(allPoints.East, point.Longitude)
    Next

    If e.AzureResponse.Results.Length > 0 Then
        If e.AzureResponse.Results.Length = 1 Then
            Dim latitude = e.AzureResponse.Results(0).Position.Latitude
            Dim longitude = e.AzureResponse.Results(0).Position.Longitude
            Me.radMap1.BringIntoView(New Telerik.WinControls.UI.Map.PointG(latitude, longitude))
        Else
            Me.radMap1.MapElement.BringIntoView(allPoints)
            Me.radMap1.Zoom(Me.radMap1.MapElement.ZoomLevel - 1)
        End If
    Else
        RadMessageBox.Show("No result found for the provided search query!")
    End If
End Sub

```` 

>note Enter some text in the search box and press `Enter` to start searching.

>note The **MapSearchBarElement** can be setup with no explicit search provider. In this case the search element will traverse the providers collection of **RadMapElement** for a **IMapBaseSearchProvider** instance. The MapSearchBarElement.**ShowMessageBoxOnError** property determines whether a messagebox will be displayed upon error or not when the **SearchProvider** property of the element is not set. The default value of the property is set to *true*. 

## Azure Search Request

You can perform searching programmatically by using a __AzureSearchRequest__:


````C#
            
AzureSearchRequest request = new AzureSearchRequest();
request.Query = "San Marino";
request.SearchOptions.Count = 10;
AzureMapProvider azureMapProvider = this.radMap1.Providers[0] as AzureMapProvider;
azureMapProvider.SearchAsync(request);

````
````VB.NET
Dim request As New AzureSearchRequest()
request.Query = "San Marino"
request.SearchOptions.Count = 10
Dim azureMapProvider As AzureMapProvider = TryCast(Me.radMap1.Providers(0), AzureMapProvider)
azureMapProvider.SearchAsync(request)


````


>note It is necessary to handle the __AzureMapProvider__'s __SearchCompleted__ and __SearchError__ events as it is demonstrated above.

## See Also
* [AzureMapProvider]({%slug map-providers-azure-overview%})
