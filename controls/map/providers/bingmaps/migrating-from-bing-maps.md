---
title: Migrating from Bing Maps
description: Migrate a WinForms RadMap application from the retiring Bing Maps provider to Azure Maps or a custom provider, with capability and caching guidance.
page_title: Migrating from Bing Maps - WinForms Map Control
slug: winforms/map/providers/migrating-from-bing-maps
tags: map, providers, bing maps, azure maps, migration
published: True
position: 1
---

# Migrating from Bing Maps

This article explains how to move a Telerik UI for WinForms `RadMap` application from `BingRestMapProvider` to `AzureMapProvider` or another map provider.

>important The `BingRestMapProvider` is obsolete and is scheduled for removal in 2028 Q3. Treat Bing-backed imagery and service calls as a migration priority.

## Migration options

Choose a provider based on the capabilities that your application needs:

* **Azure Maps:** Use `AzureMapProvider` for Azure Maps raster tile sets, Azure Maps search, localization, and RadMap tile caching.
* **OpenStreetMap:** Use `OpenStreetMapProvider` when your application needs OpenStreetMap tiles. Review the OpenStreetMap usage policy and configure an appropriate tile service before deployment.
* **Local or cached tiles:** Use a local provider or an `IMapCacheProvider` when your application supplies or stores its own tile data.
* **Custom provider:** Implement the RadMap provider contracts when you need a tile URL scheme, vector rendering, a different search or routing service, or provider-specific authentication that the built-in providers do not expose.

RadMap does not grant the right to use any map provider. Review the provider's terms, attribution requirements, authentication rules, rate limits, and caching restrictions before deployment.

## Capability comparison

The following table describes the capabilities exposed by the Telerik providers. It does not replace the service provider's documentation or licensing terms.

| Capability | BingRestMapProvider | AzureMapProvider | Migration guidance |
|---|---|---|---|
| Imagery and base map tiles | Bing imagery sets such as aerial, road, and canvas views | Azure raster tile sets such as `Road`, `HybridRoad`, `DarkGrey`, and traffic or weather sets | Select the closest Azure `AzureTileSet`; visual styles and coverage are not one-to-one. |
| Tile format | Bing tile imagery | The current `AzureMapProvider` implementation downloads image tiles and creates RadMap tile elements | Treat the direct migration as a raster-tile migration. Vector tile styling requires a custom provider or another integration. |
| Search | `SearchAsync` through the Bing search contract | `SearchAsync(AzureSearchRequest)` through the Azure search contract | Rewrite request construction and result handling. Azure supports fuzzy and structured modes through `AzureSearchOptions`. |
| Routes | `CalculateRouteAsync` | No route contract is implemented by `AzureMapProvider` | Keep routing in an application service, use a provider that exposes routing, or implement a custom RadMap route/provider integration. |
| Truck routes | `IMapTruckRouteProvider` support in Bing | No corresponding Azure implementation is exposed by `AzureMapProvider` | Plan a separate replacement service or custom integration. |
| Elevation | `CalculateElevationAsync` | No elevation contract is implemented by `AzureMapProvider` | Plan a separate replacement service or custom integration. |
| Tile authentication | `BingKey` and optional Bing session initialization | `AzureAPIKey` added to Azure Maps tile and search requests | Create and protect an Azure Maps subscription key. Do not commit a production key to source control. |
| Tile caching | `EnableCaching` and `CacheProvider` | `EnableCaching` and `CacheProvider` | Reuse `LocalFileCacheProvider` or another `IMapCacheProvider`, subject to the provider's caching terms. |
| Localization | `Culture` | `LanguageCulture`, defaulting to `en-US` when not set | Set the Azure culture explicitly when the application requires a specific language. |
| Service initialization | Bing session and imagery metadata initialization | Azure tile request initialization | Handle initialization and provider update events, and test invalid keys, unavailable services, and network failures. |

## Before and after: replace the tile provider

The direct tile migration keeps the `RadMap.Providers` collection and cache pattern, but replaces the provider type, key property, and imagery selection.

### Before: Bing Maps

```csharp
using Telerik.WinControls.UI;
using Telerik.WinControls.UI.Map.Bing;

var bingProvider = new BingRestMapProvider
{
    BingKey = bingMapsKey,
    ImagerySet = ImagerySet.Road,
    EnableCaching = true,
    CacheProvider = new LocalFileCacheProvider(@"..\\..\\cache")
};

radMap1.Providers.Add(bingProvider);
```

### After: Azure Maps

```csharp
using Telerik.WinControls.UI;
using Telerik.WinControls.UI.Map.Azure;

var azureProvider = new AzureMapProvider
{
    AzureAPIKey = azureMapsKey,
    TileSetID = AzureTileSet.Road,
    EnableCaching = true,
    CacheProvider = new LocalFileCacheProvider(@"..\\..\\cache")
};

radMap1.Providers.Add(azureProvider);
```

The Azure provider is introduced with the Q3 2025 official version of Telerik UI for WinForms. Select the assembly or package family that matches your application target.

## Configure Azure Maps authentication

`AzureMapProvider.AzureAPIKey` authenticates the tile and search requests made by the provider. Create an Azure Maps account and subscription key by following Microsoft's [Manage authentication in Azure Maps](https://learn.microsoft.com/en-us/azure/azure-maps/how-to-manage-authentication) documentation.

Use a configuration source, environment variable, or protected secret store to supply the key at runtime. The provider places the key in service request URLs, so avoid logging those URLs and avoid embedding a production key in a checked-in source file.

The provider uses Azure Maps Render API version `2024-04-01` by default. You can set `AzureAPIVersion` when your Azure Maps service configuration requires another supported Render API version.

## Map imagery and tile differences

Bing imagery names do not map directly to Azure tile set names. For example, `ImagerySet.Road` becomes `AzureTileSet.Road`, but aerial, label, traffic, and weather presentation must be reviewed individually. Compare the rendered map at the zoom levels and geographic areas that matter to your application.

The current Azure provider requests 256-by-256 image tiles and exposes raster-oriented `AzureTileSet` values. The provider does not expose a vector styling pipeline. If your Bing application depends on vector layers, client-side style rules, or a tile endpoint that is not represented by `AzureTileSet`, use a custom provider or integrate the required service outside the built-in Azure provider.

## Migrate search

Azure search uses an `AzureSearchRequest` with a query and `AzureSearchOptions`. The options include a result count and either fuzzy or structured search mode.

```csharp
using Telerik.WinControls.UI.Map.Azure;
using Telerik.WinControls.UI.Providers.AzureMaps.Search;

var searchRequest = new AzureSearchRequest
{
    Query = "1600 Pennsylvania Avenue NW, Washington, DC",
    SearchOptions = new AzureSearchOptions
    {
        Count = 5,
        AzureSearchMode = AzureSearchMode.Fuzzy
    }
};

azureProvider.SearchAsync(searchRequest);
```

Search is not a drop-in replacement for Bing search. Review the Azure response model and update the code that converts search results into your application's map position, pin, or callout. Handle service errors and invalid authentication as part of the search workflow.

## Replace routes and elevation

`BingRestMapProvider` implements route, truck-route, search, and elevation provider contracts. `AzureMapProvider` implements tile and search functionality, but it does not implement the RadMap route or elevation contracts.

Before removing Bing, identify every call to `CalculateRouteAsync`, truck-route functionality, and `CalculateElevationAsync`. For each call, choose one of the following approaches:

1. Call a supported routing or elevation service from an application service and render the returned geometry or values in RadMap.
2. Select a different provider or custom provider that implements the required RadMap contract.
3. Remove the feature if it is no longer required.

Do not assume that changing the tile provider automatically preserves route or elevation behavior.

## Configure caching

Both Bing and Azure providers support `EnableCaching` and `CacheProvider`. The Azure provider first checks the configured cache and downloads a tile when the cache does not contain it. A downloaded tile is saved through the cache provider.

For a file cache, create a writable application data directory and assign a `LocalFileCacheProvider`:

```csharp
string cacheFolder = Path.Combine(
    Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData),
    "Contoso", "MapTiles");

azureProvider.CacheProvider = new LocalFileCacheProvider(cacheFolder);
azureProvider.EnableCaching = true;
```

The built-in `MemoryCacheProvider` stores tiles only for the current process. `LocalFileCacheProvider` stores tile files on disk and creates the configured directory when needed. Configure expiration and retention according to the selected map service's terms; cached tiles are not automatically portable between providers or tile sets.

## Use a custom provider when necessary

Use a custom provider when Azure Maps does not meet the application's tile, rendering, routing, elevation, authentication, or service requirements. A custom provider can keep the RadMap integration while calling a service that supports the required capabilities.

At minimum, a tile provider participates in the `IMapProvider` and `IMapTileProvider` contracts. The provider must supply map content for the viewport, tile retrieval, initialization behavior, supported views, zoom limits, and provider update notifications. Add the route, search, or elevation contract only when the custom implementation provides that service.

Keep provider-specific credentials and HTTP calls inside the provider or an application service. Do not expose secrets in tile URLs rendered into user-visible content unless the selected service explicitly requires that design and the key is restricted accordingly.

## Migration checklist

1. Inventory Bing imagery, search, route, truck-route, elevation, caching, and authentication usage.
2. Choose Azure Maps, OpenStreetMap, local tiles, or a custom provider for each capability.
3. Create and securely load the required provider credentials.
4. Replace `BingRestMapProvider` with the selected tile provider and map each imagery set to a tested tile set.
5. Rewrite search requests and result handling for the selected service.
6. Move route, truck-route, and elevation calls to a supported service or custom integration.
7. Reconfigure the cache directory and confirm that caching complies with provider terms.
8. Test initialization errors, invalid credentials, network interruptions, empty search results, map coverage, zoom limits, and provider rate limits.
9. Remove Bing-specific references and verify the application without a Bing key before the retirement deadline.

## See Also

* [Azure Map Provider]({%slug map-providers-azure-overview%})
* [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%})
* [CacheProvider]({%slug winforms/map/providers/cacheprovider%})
* [Map Getting Started]({%slug winforms/map/getting-started%})
* [Map Providers Overview]({%slug winforms/map%})
