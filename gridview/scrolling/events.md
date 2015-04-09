---
title: Events
page_title: Events
description: Events
slug: gridview-scrolling-events
tags: events
published: True
position: 0
---

# Events



## 

There are a vertical and a horizontal scroll bar objects for the vertical and horizontal scrollbars respectively. For instance, to subscribe to *ValueChanged *event of the vertical scroll bar use the following code:

#### __[C#] ScrollBar value changed event__

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=scrollBarValueChanged}}
	        void VScrollBar_ValueChanged(object sender, EventArgs e)
	        {
	            Console.WriteLine(this.radGridView1.TableElement.VScrollBar.Value);
	        }
	{{endregion}}



#### __[VB.NET] ScrollBar value changed event__

{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=scrollBarValueChanged}}
	    Sub VScrollBar_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
	        Console.WriteLine(Me.RadGridView1.TableElement.VScrollBar.Value)
	    End Sub
	{{endregion}}


