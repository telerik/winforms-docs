---
title: Overview
page_title: Overview - RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/providers
tags: map, providers
published: True
position: 0 
---

# Providers Overview

The __RadMap__ control needs a provider of imagery data in order to display a map. Currently, __RadMap__ supports the following providers:

* [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%})
* [OpenStreetMapProvider]({%slug winforms/map/providers/openstreetmapprovider%})
* [LocalMapProvider]({%slug winforms/map/providers/localmapprovider%})
* [EmptyMapProvider]({%slug winforms/map/providers/emptymapprovider%})

>note If your application targets .Net Framework version below 4.7, some providers will require explicitly to choose __TLS 1.2 SecurityProtocol__. This protocol can be set through the System.Net.ServicePointManager.**SecurityProtocol** property. More information is available here: [Transport Layer Security (TLS) best practices with the .NET Framework](https://learn.microsoft.com/en-us/dotnet/framework/network-programming/tls).

## See Also

* [How to Create Map Image Silently]({%slug create-map-image-silently%})
