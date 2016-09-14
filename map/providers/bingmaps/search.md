---
title: Search
page_title: Search | RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/providers/search
tags: map, providers, search
published: True
position: 2 
---

# Search

__RadMap__ allows you to implement search functionality, that will let the user search for a specific location on the map. The search is performed through an __IMapSearchProvider__, which communicates with the respective map provider's services. __BingRestMapProvider__ implements the __IMapSearchProvider__ interface.

>caption Figure 1: Bing search

![map-providers-bingmaps-search 001](images/map-providers-bingmaps-search001.gif)

In order to use the built-in search bar that __RadMap__ offers set the __ShowSearchBar__ property to *true*. Depending on the amount of control you want to have over the search you can do one of three things. First, you can subscribe to the __MapSearchBarElement__'s __SearchCriteriaChanged__ event. In the event handler you will receive the search criteria and you are responsible for the rest of the search handling. That is __RadMap__ will not perform any further actions related to the search. Second, if you have not subscribed to the __SearchCriteriaChanged__ event you can set the SearchBarElement.__SearchProvider__ property to an __IMapSearchProvider__ instance. When you do this __RadMap__ will initiate a new search through that provider. You should still handle the search result through the provider's __SearchCompleted__ and __SearchError__ events. Third, if you have not subscribed to the event and you have not set the SearchBarElement.__SearchProvider__ property __RadMap__ will go through its __Providers__ collection and will initiate a search through the first provider that implements the __IMapSearchProvider__. Results will be displayed in a layer named *Search*. If the layer does not exist it will be added by __RadMap__. You should note that all overlays will be removed from the *Search* layer when a new search is initiated.

In this example we will use the second approach by setting the  MapElement.SearchBarElement.__SearchProvider__ property to the __BingRestMapProvider__ that the map is currently using. Then, subscribe to the __SearchProvider__'s __SearchCompleted__ and __SearchError__ events. The __SearchCompletedEventArgs__ gives you the __Locations__ result which can be used to place a __MapPin__ to the  added *pins* __MapLayer__ for each search result. The __SearchError__ event is the place for handling any kind of errors that occur during the search operation.

#### Bing search

{{source=..\SamplesCS\Map\BingProvider.cs region=GettingStarted}} 
{{source=..\SamplesVB\Map\BingProvider.vb region=GettingStarted}}

````C#
````
````VB.NET
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
