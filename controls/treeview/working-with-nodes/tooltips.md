---
title: ToolTips
page_title: Tooltips - RadTreeView
description: This article shows how you can assign tooltips on nodes or set the tooltips text at run-time.
slug: winforms/treeview/working-with-nodes/tooltips
tags: tooltips
published: True
position: 15
---

# Tooltips

### Enabling Tooltips

To enable the tooltips you need to set the __ShowNodeToolTips__ property.

{{source=..\SamplesCS\TreeView\WorkingWithNodes\NodesTooltips.cs region=Unlock}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\NodesTooltips.vb region=Unlock}}
````C#
radTreeView1.TreeViewElement.ShowNodeToolTips = true;

````
````VB.NET
radTreeView1.TreeViewElement.ShowNodeToolTips = True

```` 


{{endregion}} 

### Setting Tooltips

You can directly assign a tooltip to each node in RadTreeView.

{{source=..\SamplesCS\TreeView\WorkingWithNodes\NodesTooltips.cs region=SetTooltip}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\NodesTooltips.vb region=SetTooltip}}
````C#
radTreeView1.Nodes[3].ToolTipText = "Node 3";

````
````VB.NET
radTreeView1.Nodes(3).ToolTipText = "Node 3"

```` 


{{endregion}} 

### Using the ToolTipTextNeeded event

You can dynamically set the tooltips at runtime. This is achieved by using the __ToolTipTextNeeded__ event.

{{source=..\SamplesCS\TreeView\WorkingWithNodes\NodesTooltips.cs region=AtRuntime}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\NodesTooltips.vb region=AtRuntime}}
````C#
private void RadTreeView1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    var node = sender as TreeNodeElement;
    if (node != null)
    {
        e.ToolTipText = node.Data.Text;
    }
}

````
````VB.NET
Private Sub RadTreeView1_ToolTipTextNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.ToolTipTextNeededEventArgs)
    Dim node = TryCast(sender, TreeNodeElement)
    If node IsNot Nothing Then
        e.ToolTipText = node.Data.Text
    End If
End Sub

```` 


{{endregion}} 
