---
title: How to Deal with Empty RadMap using BingRestMapProvider 
description: Learn how to handle empty RadMap that uses the BingRestMapProvider. 
type: how-to
page_title: How to Deal with Empty RadMap using BingRestMapProvider 
slug: bing-map-not-loading
position: 5
tags: map, bing, empty, load, tls, security, protocol
ticketid: 1591400
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.1109|RadMap for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

When using RadMap with the [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%}), the map may remain empty. 
This article shows how to handle this unexpected behavior and load the map tiles. 

## Solution

**BingRestMapProvider** internally loads tile data from the [Bing Maps](https://www.bingmapsportal.com/) REST service which requires **TLS 1.2** coming automatically with .NET Framework 4.7. It is necessary to ensure the version explicitly by setting the System.Net.ServicePointManager.**SecurityProtocol** property to SecurityProtocolType.**Tls12**. More information is available here: [Transport Layer Security (TLS) best practices with the .NET Framework](https://learn.microsoft.com/en-us/dotnet/framework/network-programming/tls).


````C#

 // How to specify Tls 1.2 for .NET Framework 4.0
 //System.Net.ServicePointManager.SecurityProtocol =(System.Net.SecurityProtocolType)3072;

 System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;

 string cacheFolder = @"..\..\cache";

 BingRestMapProvider bingProvider = new Telerik.WinControls.UI.BingRestMapProvider();
 bingProvider.UseSession = true;
 bingProvider.BingKey = bingKey;

 LocalFileCacheProvider cache = new LocalFileCacheProvider(cacheFolder);
 bingProvider.CacheProvider = cache;

 this.radMap1.Providers.Add(bingProvider);     

````
````VB.NET

'How to specify Tls 1.2 for .NET Framework 4.0
'System.Net.ServicePointManager.SecurityProtocol = CType(3072, System.Net.SecurityProtocolType)

System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12

Dim cacheFolder As String = "..\..\cache"

Dim bingProvider As BingRestMapProvider = New Telerik.WinControls.UI.BingRestMapProvider()
bingProvider.UseSession = True
bingProvider.BingKey = bingKey

Dim cache As New LocalFileCacheProvider(cacheFolder)
bingProvider.CacheProvider = cache

Me.radMap1.Providers.Add(bingProvider)    

````

# See Also

* [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%}) 



 
