---
title: CacheProvider
page_title: CacheProvider - RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/providers/cacheprovider
tags: map, providers
published: True
position: 6
---

# CacheProvider

The __IMapCacheProvider__ is a provider which doesn't connect to any real imagery services. It is used by an __IMapTileProvider__ to allow data caching and improve performance. 

## MemoryCacheProvider

By default, a __MemoryCacheProvider__ is assigned to the __IMapTileProvider__ to cache data into memory.

## LocalFileCacheProvider

The LocalFileCacheProvider.__CacheDirectoryPath__ property gets or sets the cache directory path. 

You should set the IMapTileProvider.__EnableCaching__ property to *true* to allow data caching. Then, set the IMapTileProvider.__CacheProvider__ property to a new __LocalFileCacheProvider__ associated with a folder name.

#### Using LocalFileCacheProvider with BingRestMapProvider

<snippet id='map-mapgettingstarted-gettingstarted-cs' />
<snippet id='map-mapgettingstarted-gettingstarted-vb' />



