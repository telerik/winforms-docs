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

**RadPictureBox** exposes **ZoomProperties** property that is responsible for the zoom operations. In order to enable zooming you should set **AllowZoom** to true. To start zooming you need to hold down the Ctrl key and use the mouse wheel.
In order to start a panning operation you can drag the view port with the mouse. The pan operation is triggered by a user interaction.

#### Enable pan and zoom

{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=EnableZoom}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=EnableZoom}} 
````C#
this.radPictureBox1.ZoomProperties.AllowZoom = true;

````
````VB.NET
Me.RadPictureBox1.ZoomProperties.AllowZoom = True

````

{{endregion}}

![picturebox-edit001](images/pan-and-zoom001.gif)

#### Zoom properties

The zooming can be controlled through the following useful properties:

- **ZoomStep**: Gets or sets the step that increments or decrements the element during a zoom operation with the mouse. Cannot have negative value.

- **ZoomFactor**: Gets or sets the current zoom factor.

- **MaxZoomFactor**: Gets or sets the maximal zoom factor.

- **MinZoomFactor**: Gets or sets the minimal zoom factor.


## Zoom programatically

The control exposes an API for zooming programmatically. 

* The **Zoom** method performs a zoom operation by given steps count:
{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=Zoom}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=Zoom}} 
````C#
this.radPictureBox1.ZoomProperties.Zoom(5);

````
````VB.NET
Me.RadPictureBox1.ZoomProperties.Zoom(5)

````

{{endregion}}

* The **ZoomIn** method performs a zoom-in operation with one step, according to the **ZoomStep** value. This method has an overload that performs a zoom-in according to the **ZoomStep** value operation with a specified count of steps:

{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=ZoomIn}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=ZoomIn}} 
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

{{source=..\SamplesCS\RadPictureBox\PictureBoxGettingStarted.cs region=ZoomOut}} 
{{source=..\SamplesVB\RadPictureBox\PictureBoxGettingStarted.vb region=ZoomOut}} 
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


# See Also

* [Structure]({%slug radpicturebox-structure%})
