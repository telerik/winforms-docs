---
title: Tooltips
page_title: Tooltips | RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/tooltips
tags: map, structure
published: True
position: 7 
---

# ToolTips

There are two ways to assign tool tips to elements in __RadMap__, namely setting the __ToolTipText__ property of a __MapVisualElement__, or as in most of the RadControls by using the __ToolTipTextNeeded__ event of __RadMap__.
      

## Setting tool tips of MapVisualElements

The code snippet below demonstrates how you can assign a tool tip to zoom out button in __RadMap__.

#### Using the ToolTipText property

{{source=..\SamplesCS\Map\MapGettingStarted.cs region=MapVisualElementToolTip}} 
{{source=..\SamplesVB\Map\MapGettingStarted.vb region=MapVisualElementToolTip}} 

````C#
this.radMap1.ShowItemToolTips = true;
this.radMap1.MapElement.NavigationBarElement.ZoomOutButton.ToolTipText = "Zoom out";

````
````VB.NET
Me.radMap1.ShowItemToolTips = True
Me.radMap1.MapElement.NavigationBarElement.ZoomOutButton.ToolTipText = "Zoom out"

````

{{endregion}} 

>caption Figure 1: Tool tip assigned by using the ToolTipText property

![map-tooltips 001](images/map-tooltips001.png)

## Setting tool tips in the ToolTipTextNeeded event

The code snippet below demonstrates how you can use __ToolTipTextNeeded__ event handler to set __ToolTipText__ for the given __MapVisualElement__.

#### Using the ToolTipTextNeeded event

{{source=..\SamplesCS\Map\MapGettingStarted.cs region=ToolTipTextNeeded}} 
{{source=..\SamplesVB\Map\MapGettingStarted.vb region=ToolTipTextNeeded}} 

````C#
private void radMap1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    MapZoomInButton zoomInButton  = sender as MapZoomInButton;
    if ( zoomInButton!=null)
    {
        e.ToolTipText = "Zoom in";
    }
}

````
````VB.NET
Private Sub radMap1_ToolTipTextNeeded(sender As Object, e As Telerik.WinControls.ToolTipTextNeededEventArgs)
    Dim zoomInButton As MapZoomInButton = TryCast(sender, MapZoomInButton)
    If zoomInButton IsNot Nothing Then
        e.ToolTipText = "Zoom in"
    End If
End Sub

````

{{endregion}} 


>caption Figure 2: Tool tip assigned by using the ToolTipTextNeeded event

![map-tooltips 002](images/map-tooltips002.png)

>important The __ToolTipTextNeeded__ event has higher priority and overrides the tool tips set by the __ToolTipText__ property of __MapVisualElements__.
>


