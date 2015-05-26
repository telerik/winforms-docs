---
title: Events
page_title: Events | UI for WinForms Documentation
description: Events
slug: winforms/gridview/scrolling/events
tags: events
published: True
position: 0
---

# Events



## 

There are a vertical and a horizontal scroll bar objects for the vertical and horizontal scrollbars respectively. For instance, to subscribe to *ValueChanged *event of the vertical scroll bar use the following code:#_[C#] ScrollBar value changed event_

	



{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=scrollBarValueChanged}} 
{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=scrollBarValueChanged}} 

````C#
        void VScrollBar_ValueChanged(object sender, EventArgs e)
        {
            Console.WriteLine(this.radGridView1.TableElement.VScrollBar.Value);
        }
````
````VB.NET
    Sub VScrollBar_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
        Console.WriteLine(Me.RadGridView1.TableElement.VScrollBar.Value)
    End Sub
    '
````

{{endregion}} 




>caution Please note that RadGridView Scroll event is NOT used.
>

