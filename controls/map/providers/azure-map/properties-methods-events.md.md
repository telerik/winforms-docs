---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - AzureMapProvider
description: Telerik RadMap AzureMapProvider
slug: map-providers-azure-properties
tags: azuremapprovider, methods, properties, events
published: True
position: 1
---

# Properties, Methods and Events

This article provides reference tables with the [Properties](#properties), [Methods](#methods) and [Events](#events) in RadMap - AzureMapProvider.

## Properties

|Property|Description|
|----|----|
|__AzureAPIKey__|Gets or sets the Azure key.|
|__AzureAPIVersion__|Gets or sets the Azure API version.|
|__LanguageCulture__|Gets or sets the language and culture used for Azure Maps requests.|
|__Initializing__|Gets or sets a value indicating whether this __AzureMapProvider__ is currently in the initialization process.|
|__TileSetID__|Gets or sets the imagery set. The possible values are: *DarkGrey*, *HybridDarkGrey*, *HybridRoad*, *LabelsDarkGrey*, *LabelsRoad*, *Road*, *TrafficAbsoluteMain*, *TrafficDelayMain*, *TrafficReducedMain*, *TrafficRelativeDark*, *TrafficRelativeMain*, *WeatherInfraredMain*, *WeatherRadarMain*
|__Initialized__|Gets or sets a value indicating whether this __AzureRestMapProvider__ is initialized.|
|__MaxZoomLevel__|Gets or sets the maximum zoom level.|
|__MinZoomLevel__|Gets or sets the minimum zoom level.|
|__TileSize__|Gets the tile size.|
|__CacheProvider__|Gets or sets the provider used for data caching.|
|__EnableCaching__|Gets or set a value whether the caching is enabled.|
|__TileDownloader__|Gets or sets the tile downloader.|

## Methods 

|Method|Description|
|----|----|
|__Initialize__|Initializes this provider.|
|__GetTile__|Gets the tile uri.|
|__GetTileImage__|Gets the tile image.|
|__SearchAsync__|Performs search request asynchronously.|
|__CalculateElevationAsync__|Calculates the elevation asynchronously.|
|__GetSupportedViews__|Gets the supported views.|
|__SetView__|Sets the view in the AzureMapProvider.|

## Events

|Event|Description|
|----|----|
|__InitializationComplete__|Fires when the initialization is completed.|
|__InitializationError__|Fires when an error during the initialization occurs.|
|__ProviderUpdated__|Fires when the provider has been updated, e.g. when a tile is downloaded.|
|__SearchCompleted__|Fires when the search request has completed.|
|__SearchError__|Fires when an error|
