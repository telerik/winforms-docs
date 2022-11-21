---
title: ToolTips
page_title: ToolTips - Telerik Presentation Framework
description: The Tooltip represents a small rectangular window that displays a brief description when the user hovers over control or an element.
slug: winforms/telerik-presentation-framework/tooltips
tags: radtooltip
published: True
position: 1
---

# ToolTips

The Tooltip represents a small rectangular window that displays a brief description when the user hovers over control or an element. All controls have the __ToolTipTextNeeded__ event which can be used for dynamically setting the text of the tooltips.


>caption Figure 1: Tooltip on a grid cells.

![tpf-tooltips002](images/tpf-tooltips002.gif)


### Using the __ToolTipTextNeeded__ event. 

The following example shows how you can use the __ToolTipTextNeeded__ event to show a tooltip on a RadListView item. In addition the __ToolTipTextNeededEventArgs__ object gives you access to the tooltip instance.

#### Setting the tooltip text in the ToolTipTextNeeded event handler.

{{source=..\SamplesCS\TPF\RadToolTip\RadToolTipExample.cs region=LitsViewToolTips}} 
{{source=..\SamplesVB\TPF\RadToolTip\RadToolTipExample.vb region=LitsViewToolTips}}
````C#
private void RadListControl1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    var item = sender as RadListVisualItem;
    if (item != null)
    {
        var dataItem = item.Data as RadListDataItem;
        e.ToolTipText = dataItem.Value.ToString();
    }
}

````
````VB.NET
Private Sub RadListControl1_ToolTipTextNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.ToolTipTextNeededEventArgs)
    Dim item = TryCast(sender, RadListVisualItem)
    If item IsNot Nothing Then
        Dim dataItem = TryCast(item.Data, RadListDataItem)
        e.ToolTipText = dataItem.Value.ToString()
    End If
End Sub

```` 


{{endregion}} 

>caption Figure 2: The result from the above code.

![tpf-tooltips001](images/tpf-tooltips001.gif)

# See Also
* [RadToolTip]({%slug winforms/telerik-presentation-framework/radtooltip%})

* [Screen Tips]({%slug winforms/telerik-presentation-framework/screen-tips%})

