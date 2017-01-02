---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | RadTrackBar
description: RadTrackBar, sometimes called a slider control, can be used for navigating a large amount of information or for visually adjusting a numeric setting. 
slug: winforms/track-and-status-controls/trackbar/accessing-and-customizing-elements
tags: trackbar
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/track-and-status-controls/trackbar/control-element-structure%}) of **RadTrackBar**.
      

## Design time

You can access and modify the style for different elements in **RadTrackBar** by using the *Element hierarchy editor*.

>caption Figure 1: Element hierarchy editor

![trackbar-accessing-and-customizing-elements 001](images/trackbar-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Fig.2 Customize elements

![trackbar-accessing-and-customizing-elements 002](images/trackbar-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.cs region=CustomizeElements}} 
{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackBarPropertiesAndEvents.vb region=CustomizeElements}} 

````C#
this.radTrackBar1.ShowButtons = true;
this.radTrackBar1.TrackBarElement.LeftButton.ButtonFillElement.BackColor = Color.Lime;
this.radTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.BackColor = Color.Lime;
this.radTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.BorderColor = Color.Red;
this.radTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.DrawBorder = true;
this.radTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.BorderGradientStyle = GradientStyles.Solid;
this.radTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TopScaleElement.TickContainerElement.TickColor = Color.Aqua;

````
````VB.NET
Me.RadTrackBar1.ShowButtons = True
Me.RadTrackBar1.TrackBarElement.LeftButton.ButtonFillElement.BackColor = Color.Lime
Me.RadTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.BackColor = Color.Lime
Me.RadTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.BorderColor = Color.Red
Me.RadTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.DrawBorder = True
Me.RadTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TrackBarLineElement.BorderGradientStyle = GradientStyles.Solid
Me.RadTrackBar1.TrackBarElement.BodyElement.ScaleContainerElement.TopScaleElement.TickContainerElement.TickColor = Color.Aqua

````

{{endregion}}  

# See Also

* [Themes]({%slug winforms/track-and-status-controls/trackbar/themes%})	
* [Customization]({%slug winforms/track-and-status-controls/trackbar/customization%})	