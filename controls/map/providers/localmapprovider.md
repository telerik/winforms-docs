---
title: LocalMapProvider
page_title: LocalMapProvider - WinForms Map Control
description: WinForms Map can visualize data from local image files by using a LocalMapProvider.
slug: winforms/map/providers/localmapprovider
tags: map, providers
published: True
position: 4
---

# LocalMapProvider

__RadMap__ can visualize data from local image files by using a __LocalMapProvider__.

>caption Figure 1: LocalMapProvider 

![WinForms RadMap LocalMapProvider](images/map-localmapprovider001.png)

#### Using LocalMapProvider

<snippet id='map-maplocalmapprovider-setuplocalmapprovider-cs' />
<snippet id='map-maplocalmapprovider-setuplocalmapprovider-vb' />



>note The __FileFormat__ property specifies what is the exact format of the image files stored in the local folder. The parameters needed are the tile X *{0}* and Y *{1}* numbers and the Zoom level *{2}*. In the code snippet above, each file image's name is built by using x,y,z values: "os_X_Y_Z.png".

## Properties

|Property|Description|
|----|----|
|__DirectoryPath__|Specifies the folder path.|
|__FileFormat__|Specifies the file format.|
|__NoImageAvailable__|Gets or sets an image that will be displayed when a tile image cannot be retrieved or does not exist.|
|__TileSize__|Gets the tile size.|
|__Initialized__|Gets or sets a value indicating whether this LocalMapProvider is initialized.|

## Methods

|Method|Description|
|----|----|
|__LoadTile__|Loads the tile image by x,y, zoom.|

