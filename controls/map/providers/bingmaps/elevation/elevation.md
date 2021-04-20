---
title: Elevation
page_title: Elevation - WinForms Map Control
description: WinForms Map's Bing Elevation service will enable you to query for elevation information for a set of points, polyline or a region on the Earth described by latitude and longitude pairs.
slug: winforms/map/providers/elevation
tags: map, providers, elevation
published: True
position: 0 
---

# Elevation

The Bing Elevation service will enable you to query for elevation information for a set of points, polyline or a region on the Earth described by latitude and longitude pairs.

To use the Elevation API, it is necessary to create an __ElevationRequest__.

|Property|Description|
|----|----|
|__ElevationType__|Gets or sets the type of the elevation to be calculated. The available options for the :<br>* *List*: Get elevations for latitude and longitude coordinates. Required parameters of the ElevationRequest.__Points__.<br> * *Bounds*: Get elevations at equally-spaced locations within an area on the Earth defined as a bounding box. Required parameters of the ElevationRequest.__Bounds__, ElevationRequest.__Rows__, ElevationRequest.__Columns__.<br> * *Polyline*: Get elevations at equally-spaced locations along a polyline path. Required parameters of the ElevationRequest.__Points__, ElevationRequest.__Samples__.<br> * *SeaLevel*: Get the offset of the geoid sea level Earth model from the ellipsoid Earth model at a set of latitude and longitude coordinates. Required parameters of the ElevationRequest.__Points__.|
|__Points__|Gets or sets a set of coordinates on the Earth to use in elevation calculations. The exact use of these points depends on the type of elevation request.|
|__Bounds__|Gets or sets the rectangular area over which to provide elevation values.|
|__Rows__|Gets or sets the number of rows to use to divide the bounding box area into a grid. The rows that define the bounding box each count as two (2) of the rows. Elevation values are returned for all vertices of the grid. Integers with a value of two 2 or greater. The number of rows and columns can define a maximum of 1024 locations (rows * cols &lt;= 1024).|
|__Columns__|Gets or sets the number of columns to use to divide the bounding box area into a grid. The columns that define the bounding box each count as two (2) of the columns. Elevation values are returned for all vertices of the grid. Integers with a value of two 2 or greater. The number of rows and columns can define a maximum of 1024 locations (rows * cols &lt;= 1024).|
|__Samples__|Gets or sets the number of equally-spaced elevation values to provide along a polyline path. A positive integer. The maximum number of samples is 1024.|
|__Options__|Gets or sets the optional parameters for an elevation request.|

# See Also
* [Bing Elevation](https://msdn.microsoft.com/en-us/library/jj158961.aspx)
* [BingRestMapProvider]({%slug winforms/map/providers/bingrestmapprovider%})
* [List]({%slug winforms/map/providers/elevation/list%})
* [Polyline]({%slug winforms/map/providers/elevation/polyline%})
* [Bounds]({%slug winforms/map/providers/elevation/bounds%})
* [SeaLevel]({%slug winforms/map/providers/elevation/sealevel%})