---
title: Accessing and Customizing Elements
page_title: Customizing RadWaitingBar | RadWaitingBar
description: RadWaitingBar is designed to indicate that a long-running operation with indeterminate  length is undergoing.
slug: winforms/track-and-status-controls/waitingbar/accessing-and-customizing-elements
tags: customizing,radwaitingbar
published: True
position: 0
previous_url: track-and-status-controls-waitingbar-accessing-and-customizing-elements, track-and-status-controls-waitingbar-customizing-radwaitingbar
---

# Accessing and Customizing Elements

Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/track-and-status-controls/waitingbar/structure%}) of __RadWaitingBar__.

## Design Time

You can access and modify the style for different elements in __RadWaitingBar__ by using the Element hierarchy editor.

>caption Fig.1 Element hierarchy editor

![track-and-status-controls-waitingbar-customizing-radwaitingbar 005](images/track-and-status-controls-waitingbar-customizing-radwaitingbar005.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize elements

![track-and-status-controls-waitingbar-customizing-radwaitingbar 006](images/track-and-status-controls-waitingbar-customizing-radwaitingbar006.gif)

#### Customize elements 

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.vb region=AccessingCustomizingElements}} 

````C#
this.radWaitingBar1.WaitingIndicators[0].BackColor = Color.Aqua;
this.radWaitingBar1.WaitingIndicators[0].Text = "Aqua";
this.radWaitingBar1.WaitingIndicators[1].BackColor = Color.Red;
this.radWaitingBar1.WaitingIndicators[1].Text = "Red";
this.radWaitingBar1.WaitingBarElement.ContentElement.BorderColor = Color.Black;
this.radWaitingBar1.WaitingBarElement.ContentElement.BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radWaitingBar1.WaitingBarElement.ContentElement.DrawBorder = true;
this.radWaitingBar1.BackColor = Color.Yellow;

````
````VB.NET
Me.RadWaitingBar1.WaitingIndicators(0).BackColor = Color.Aqua
Me.RadWaitingBar1.WaitingIndicators(0).Text = "Aqua"
Me.RadWaitingBar1.WaitingIndicators(1).BackColor = Color.Red
Me.RadWaitingBar1.WaitingIndicators(1).Text = "Red"
Me.RadWaitingBar1.WaitingBarElement.ContentElement.BorderColor = Color.Black
Me.RadWaitingBar1.WaitingBarElement.ContentElement.BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.RadWaitingBar1.WaitingBarElement.ContentElement.DrawBorder = True
Me.RadWaitingBar1.BackColor = Color.Yellow

````

{{endregion}} 

## Customizing RadWaitingBar


__RadWaitingBar__ introduces a rich API which allows you to easily customize the visual appearance of __RadWaitingBar__ programmatically. Below you will find scenarios that will increase your knowledge about __RadWaitingBar__'s API, hence you will be able to customize it according to your requirements.      
      

### How to customize the text of RadWaitingBar

The text of __RadWaitingBar__ is not displayed by default. To show the text, set the __ShowText__ property of __RadWaitingBar__ to *true*.  To change the text content, use the __Text__ property of __RadWaitingBar__. To customize the text orientation, set the __AngleTransform__ property of the RadWaitingBarElement.__TextElement__. To modify the text position, change the __TextAlignment__ property of RadWaitingBarElement.__TextElement__. Here is a sample snippet:

#### Customize the text of RadWaitingBar

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.cs region=text}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.vb region=text}} 

````C#
this.radWaitingBar1.ShowText = true;
this.radWaitingBar1.Text = "Waiting...";
this.radWaitingBar1.WaitingBarElement.TextElement.AngleTransform = 180;
this.radWaitingBar1.WaitingBarElement.TextElement.TextAlignment = ContentAlignment.MiddleLeft;

````
````VB.NET
Me.RadWaitingBar1.ShowText = True
Me.RadWaitingBar1.Text = "Waiting..."
Me.RadWaitingBar1.WaitingBarElement.TextElement.AngleTransform = 180
Me.RadWaitingBar1.WaitingBarElement.TextElement.TextAlignment = ContentAlignment.MiddleLeft

````

{{endregion}} 

![track-and-status-controls-waitingbar-customizing-radwaitingbar 001](images/track-and-status-controls-waitingbar-customizing-radwaitingbar001.gif)

### How to customize RadWaitingBar’s Dash style 

To set the __RadWaitingBar__ in dash style, set the __WaitingStyle__ property to *Dash*.  To customize the appearance of the stripes-pattern, you need to access the RadWaitingBarElement.__SeparatorElement__. Here is a sample scenario:

#### Customize RadWaitingBar’s Dash style 

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.cs region=dash}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.vb region=dash}} 

````C#
this.radWaitingBar1.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.Dash;
WaitingBarSeparatorElement dash = this.radWaitingBar1.WaitingBarElement.SeparatorElement;
dash.NumberOfColors = 2;
dash.BackColor = Color.Orange;
dash.BackColor2 = Color.Yellow;
dash.SweepAngle = 45;
dash.StepWidth = 15;
dash.SeparatorWidth = 10;
dash.GradientPercentage = 0.25f;

````
````VB.NET
Me.RadWaitingBar1.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.Dash
Dim dash As WaitingBarSeparatorElement = Me.RadWaitingBar1.WaitingBarElement.SeparatorElement
dash.NumberOfColors = 2
dash.BackColor = Color.Orange
dash.BackColor2 = Color.Yellow
dash.SweepAngle = 45
dash.StepWidth = 15
dash.SeparatorWidth = 10
dash.GradientPercentage = 0.25F

````

{{endregion}} 

![track-and-status-controls-waitingbar-customizing-radwaitingbar 002](images/track-and-status-controls-waitingbar-customizing-radwaitingbar002.gif)

### How to set Dash style only for the waiting indicators

The waiting indicators also support dash style. To customize the appearance of the indicators’ stripes-pattern, you need to access the __SeparatorElements__ of all indicators. By default, the __WaitingIndicators__ collection contains two indicators. Here is a sample scenario:

#### Waiting indicators' Dash style

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.cs region=waitingIndicators}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.vb region=waitingIndicators}} 

````C#
this.radWaitingBar1.WaitingBarElement.WaitingIndicators[0].BackColor = Color.LightGreen;
this.radWaitingBar1.WaitingBarElement.WaitingIndicators[0].NumberOfColors = 1;
this.radWaitingBar1.WaitingBarElement.WaitingIndicators[1].BackColor = Color.LightGreen;
this.radWaitingBar1.WaitingBarElement.WaitingIndicators[1].NumberOfColors = 1;
WaitingBarSeparatorElement separator = ((WaitingBarIndicatorElement)this.radWaitingBar1.WaitingBarElement.WaitingIndicators[0]).SeparatorElement;
WaitingBarSeparatorElement helpSeparator = ((WaitingBarIndicatorElement)this.radWaitingBar1.WaitingBarElement.WaitingIndicators[1]).SeparatorElement;
separator.Dash = true;
helpSeparator.Dash = true;
separator.NumberOfColors = 2;
separator.BackColor = Color.Orange;
separator.BackColor2 = Color.Yellow;
separator.SweepAngle = 45;
separator.StepWidth = 15;
separator.SeparatorWidth = 10;
separator.GradientPercentage = 0.25f;
helpSeparator.NumberOfColors = 2;
helpSeparator.BackColor = Color.Orange;
helpSeparator.BackColor2 = Color.Yellow;
helpSeparator.SweepAngle = 45;
helpSeparator.StepWidth = 15;
helpSeparator.SeparatorWidth = 10;
helpSeparator.GradientPercentage = 0.25f;

````
````VB.NET
Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(0).BackColor = Color.LightGreen
Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(0).NumberOfColors = 1
Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(1).BackColor = Color.LightGreen
Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(1).NumberOfColors = 1
Dim separator As WaitingBarSeparatorElement = DirectCast(Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(0), WaitingBarIndicatorElement).SeparatorElement
Dim helpSeparator As WaitingBarSeparatorElement = DirectCast(Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(1), WaitingBarIndicatorElement).SeparatorElement
separator.Dash = True
helpSeparator.Dash = True
separator.NumberOfColors = 2
separator.BackColor = Color.Orange
separator.BackColor2 = Color.Yellow
separator.SweepAngle = 45
separator.StepWidth = 15
separator.SeparatorWidth = 10
separator.GradientPercentage = 0.25F
helpSeparator.NumberOfColors = 2
helpSeparator.BackColor = Color.Orange
helpSeparator.BackColor2 = Color.Yellow
helpSeparator.SweepAngle = 45
helpSeparator.StepWidth = 15
helpSeparator.SeparatorWidth = 10
helpSeparator.GradientPercentage = 0.25F

````

{{endregion}} 

![track-and-status-controls-waitingbar-customizing-radwaitingbar 003](images/track-and-status-controls-waitingbar-customizing-radwaitingbar003.gif)

### How to customize the shape of RadWatingBar

Different shapes can be applied to both the __WaitingBarElement__ and the waiting indicator. In the following example the __WaitingBarElement__ and the waiting indicator have elliptical shape:

#### Customize the shape of RadWatingBar

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.cs region=shape}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\CustomizingRadWaitingBar.vb region=shape}} 

````C#
Telerik.WinControls.EllipseShape shape = new Telerik.WinControls.EllipseShape();
this.radWaitingBar1.WaitingBarElement.Shape = shape;
this.radWaitingBar1.WaitingBarElement.ContentElement.Shape = shape;
this.radWaitingBar1.WaitingBarElement.WaitingIndicators[0].Shape = shape;
this.radWaitingBar1.WaitingBarElement.WaitingIndicators[1].Shape = shape;

````
````VB.NET
Dim shape As New Telerik.WinControls.EllipseShape()
Me.RadWaitingBar1.WaitingBarElement.Shape = shape
Me.RadWaitingBar1.WaitingBarElement.ContentElement.Shape = shape
Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(0).Shape = shape
Me.RadWaitingBar1.WaitingBarElement.WaitingIndicators(1).Shape = shape

````

{{endregion}} 

![track-and-status-controls-waitingbar-customizing-radwaitingbar 004](images/track-and-status-controls-waitingbar-customizing-radwaitingbar004.gif)

# See Also

* [Themes]({%slug winforms/track-and-status-controls/waitingbar/accessing-and-customizing-elements/themes%})	
