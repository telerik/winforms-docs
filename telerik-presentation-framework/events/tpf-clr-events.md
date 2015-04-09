---
title: CLR Events
page_title: CLR Events
description: CLR Events
slug: tpf-events-clr-events
tags: clr,events
published: True
position: 0
---

# CLR Events



## 

[RadControl]({%slug tpf-class-hierarchy-radcontrol%}) inherits from the standard __Windows Forms ScrollableControl__, and so has access to the principal mouse, keyboard, font, sizing, layout and painting events. These events are captured and passed to the element tree where appropriate. For example, the __OnMouseEnter__event inherited from __ScrollableControl__ first notifies the __RootElement__ that a the mouse is over the control, then invokes the standard __OnMouseEnter__ behavior from __ScrollableControl__.

#### __[C#] OnMouseEnter__

{{source=..\SamplesCS\TPF\Events.cs region=onMouseEnter}}
	        protected override void OnMouseEnter(EventArgs e)
	        {
	            if (!DisableMouseEvents)
	            {
	                this.RootElement.IsMouseOver = true;
	                this.RootElement.IsMouseOverElement = true;
	            }
	            base.OnMouseEnter(e);
	        }
	{{endregion}}



#### __[VB.NET] OnMouseEnter__

{{source=..\SamplesVB\TPF\Events.vb region=onMouseEnter}}
	    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)
	        If Not DisableMouseEvents Then
	            Me.RootElement.IsMouseOver = True
	            Me.RootElement.IsMouseOverElement = True
	        End If
	        MyBase.OnMouseEnter(e)       
	    End Sub
	{{endregion}}




