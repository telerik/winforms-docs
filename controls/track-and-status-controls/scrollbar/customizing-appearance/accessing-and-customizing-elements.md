---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - RadScrollBar
description: RadHSrollBar and RadVScrollBar are themeable alternatives to the standard Windows Forms scroll bar controls.
slug: winforms/track-and-status-controls/scrollbar/accessing-and-customizing-elements
tags: scrollbar
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/track-and-status-controls/scrollbar/control-element-structure%}) of **RadScrollBar**.
      
## Design time

You can access and modify the style for different elements in **RadSplitContainer** by using the *Element hierarchy editor*.

>caption Figure 1: Element hierarchy editor

![WinForms RadScrollBar Element hierarchy editor](images/track-and-status-controls-scrollbar-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Fig.2 Customize elements

![WinForms RadScrollBar Customize elements](images/track-and-status-controls-scrollbar-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\TrackAndStatus\ScrollBar\ScrollGettingStarted.cs region=CustomizeElements}} 
{{source=..\SamplesVB\TrackAndStatus\ScrollBar\ScrollGettingStarted.vb region=CustomizeElements}} 

````C#
this.radHScrollBar1.ScrollBarElement.ThumbElement.ThumbFill.BackColor = Color.Lime;
this.radHScrollBar1.ScrollBarElement.ThumbElement.ThumbBorder.ForeColor = Color.Red;
this.radHScrollBar1.ScrollBarElement.ThumbElement.ThumbFill.GradientStyle = GradientStyles.Solid;
this.radHScrollBar1.ScrollBarElement.SecondButton.ArrowPrimitive.ForeColor = Color.Aqua;

````
````VB.NET
Me.RadHScrollBar1.ScrollBarElement.ThumbElement.ThumbFill.BackColor = Color.Lime
Me.RadHScrollBar1.ScrollBarElement.ThumbElement.ThumbBorder.ForeColor = Color.Red
Me.RadHScrollBar1.ScrollBarElement.ThumbElement.ThumbFill.GradientStyle = GradientStyles.Solid
Me.RadHScrollBar1.ScrollBarElement.SecondButton.ArrowPrimitive.ForeColor = Color.Aqua

````

{{endregion}}  

# See Also

* [Themes]({%slug winforms/track-and-status-controls/scrollbar/themes%})	
