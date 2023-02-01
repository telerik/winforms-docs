---
title: Pan and Zoom
page_title: Pan and Zoom
description: Pan and Zoom
slug: radpicturebox-pan-and-zoom
tags: pan-and-zoom
published: True
position: 2
---

# Pan and Zoom

In **RadPictureBox** you can easily pan, zoom in or out. The horizontal and vertical scrollbars help navigating to the visible area of the control.

The zoom feature is enabled by default. To start zooming you need to hold down the Ctrl key and use the mouse wheel. In order to disable the zooming, you should set the **AllowZoom** property to *false*.
A pan operation can be started by dragging the viewport with the mouse or by using the scrollbars.

![WinForms RadPictureBox Pan Zoom](images/pan-and-zoom001.gif)

If you do not what the scrollbars to be displayed you can disable them. Thus, the user can navigate to the visible area of the control just by using the mouse or via touch gestures.

#### Disable scrollbars

{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=DisableScrollbars}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=DisableScrollbars}} 

````C#
this.radPictureBox1.ShowScrollBars = false;

````
````VB.NET
Me.RadPictureBox1.ShowScrollBars = False

````

{{endregion}}


## Zoom properties

**RadPictureBox** exposes **ZoomProperties** property that is responsible for the zoom operations. The zooming can be controlled through the following useful properties:

- **ZoomStep**: Gets or sets the step that increments or decrements the element during a zoom operation with the mouse. Cannot have negative value.

- **ZoomFactor**: Gets or sets the current zoom factor.

- **MaxZoomFactor**: Gets or sets the maximal zoom factor.

- **MinZoomFactor**: Gets or sets the minimal zoom factor.


## Zoom programatically

The control exposes an API for zooming programmatically. 

* The **Zoom** method performs a zoom operation by given steps count:
{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=Zoom}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=Zoom}} 

````C#
this.radPictureBox1.ZoomProperties.Zoom(5);

````
````VB.NET
Me.RadPictureBox1.ZoomProperties.Zoom(5)

````

{{endregion}}


* The **ZoomIn** method performs a zoom-in operation with one step, according to the **ZoomStep** value. This method has an overload that performs a zoom-in according to the **ZoomStep** value operation with a specified count of steps:

{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=ZoomIn}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=ZoomIn}}

````C#
this.radPictureBox1.ZoomProperties.ZoomIn();
this.radPictureBox1.ZoomProperties.ZoomIn(5);

````
````VB.NET
Me.RadPictureBox1.ZoomProperties.ZoomIn()
Me.RadPictureBox1.ZoomProperties.ZoomIn(5)

````

{{endregion}}


* The **ZoomOut** method performs a zoom-out operation with one step, according to the **ZoomStep** value. This method has an overload that performs a zoom-out according to the **ZoomStep** value operation with a specified count of steps:

{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=ZoomOut}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=ZoomOut}} 

````C#
this.radPictureBox1.ZoomProperties.ZoomOut();
this.radPictureBox1.ZoomProperties.ZoomOut(5);

````
````VB.NET
Me.RadPictureBox1.ZoomProperties.ZoomOut()
Me.RadPictureBox1.ZoomProperties.ZoomOut(5)

````

{{endregion}}


You can also reset all the zoom settings by calling the **ResetZoom** method. 

## Events

**RadPictureBox** exposes the following events when zooming and panning:

* **ZoomChanged** - Occurs when the **ZoomFactor** has changed.
* **PanChanged** - Occurs when the **PositionOffset** property of **PictureBoxCanvasElement** is changed. Available since R2 2021 SP1.



# See Also

* [Edit]({%slug radpicturebox-edit%})
* [Context Menu]({%slug context-menu%})

