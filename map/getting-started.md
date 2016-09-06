---
title: Getting Started
page_title: Getting Started | RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/getting-started
tags: map
published: True
position: 3 
---

# Getting Started

This tutorial will help you to quickly get started using the control.

>note In order to use __RadMap__ in your project you have to add references to the following assemblies:
* Telerik.WinControls
* Telerik.WinControls.RadMap
* Telerik.WinControls.UI
* TelerikCommon

Follow the steps:

1\. Create a new __Windows Application__ project.
2\. Drop a __RadMap__ control on the form and set its __Dock__ property to *Fill*.
3\. The __RadMap__ control doesn't display a map on itself, it needs a map provider from which to consume the required data. This example will use [Bing Maps](https://www.bingmapsportal.com/) as its provider. In order to do that you have to add a new __BingRestMapProvider__ to the RadMap.__Providers__ property. 

>note If you use __RadMap__ in .Net Framework 2.0 and you don't have installation of the Telerik UI for WinForms suite on the current machine, it is necessary to add the Newtonsoft.Json assembly which can be found in the \Bin folder of the *Telerik_UI_For_WinForms_[version]_Dev_dlls.zip*.

In order to use data caching, it is necessary to set a new __LocalFileCacheProvider__ to the BingRestMapProvider.__CacheProvider__ property:

#### Using BingRestMapProvider

{{source=..\SamplesCS\Map\MapGettingStarted.cs region=GettingStarted}} 
{{source=..\SamplesVB\Map\MapGettingStarted.vb region=GettingStarted}}

````C#
string cacheFolder = @"..\..\cache";

BingRestMapProvider bingProvider = new Telerik.WinControls.UI.BingRestMapProvider();
bingProvider.Culture = System.Threading.Thread.CurrentThread.CurrentCulture;
bingProvider.UseSession = true;
bingProvider.BingKey = bingKey;

LocalFileCacheProvider cache = new LocalFileCacheProvider(cacheFolder);
bingProvider.CacheProvider = cache;

this.radMap1.Providers.Add(bingProvider);

````
````VB.NET
Dim cacheFolder As String = "..\..\cache"

Dim bingProvider As BingRestMapProvider = New Telerik.WinControls.UI.BingRestMapProvider()
bingProvider.Culture = System.Threading.Thread.CurrentThread.CurrentCulture
bingProvider.UseSession = True
bingProvider.BingKey = bingKey

Dim cache As New LocalFileCacheProvider(cacheFolder)
bingProvider.CacheProvider = cache

Me.radMap1.Providers.Add(bingProvider)

````

{{endregion}} 

>note To get your Bing Maps Key, please refer to the following link: [Getting a Bing Maps Key](https://msdn.microsoft.com/en-us/library/ff428642.aspx).

>caption Figure 1: RadMap 

![map-getting-started 001](images/map-getting-started001.png)


