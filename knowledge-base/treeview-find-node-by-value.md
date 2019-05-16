---
title: Find a RadTreeNode by the Value
description: This article demonstrates how to find a RadTreeNode by value
type: how-to
page_title: How to find a RadTreeNode by the value
slug: treeview-find-node-by-value
position: 
tags: radtreeview
ticketid: 1174915
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.3 911</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadTreeView for WinForms</td>
	</tr>
</table>


## Description

**RadTreeView** supports searching for nodes by the **Text** of the node:

````C#
radTreeView1.Find("Test");
````
````VB
radTreeView1.Find("Test")
````

It is also possible to search by a **Predicate** which returns an array of all nodes that match the search criteria. A common case is to look for nodes by a certain value. The following approach gives you an easy way to search the nodes by the **Value** property.

>caption Search nodes by Value

![treeview-find-node-by-value001](images/treeview-find-node-by-value001.png)

## Solution 

In order to find the node by a given value, it is necessary to iterate all nodes recursively and check whether their **Value** property matches the search pattern:

````C#
  public RadForm1()
{
    InitializeComponent();
 
    int cnt = 0;
    for (int i = 0; i < 5; i++)
    {
        cnt++;
        RadTreeNode node = new RadTreeNode();
        node.Text = "Node" + cnt;
        node.Value = cnt;
        this.radTreeView1.Nodes.Add(node);
        for (int j = 0; j < 5; j++)
        {
            cnt++;
            RadTreeNode childNode = new RadTreeNode();
            childNode.Text = "ChildNode" + cnt;
            childNode.Value = cnt;
            node.Nodes.Add(childNode);
            for (int k = 0; k < 3; k++)
            {
                cnt++;
                RadTreeNode grandChildNode = new RadTreeNode();
                grandChildNode.Text = "ChildNode" + cnt;
                grandChildNode.Value = cnt;
                childNode.Nodes.Add(grandChildNode);
            }
        }
    }
 
    object value = 12;
 
    RadTreeNode foundNode = FindNodeByValue(value, this.radTreeView1.Nodes);
    if (foundNode != null)
    {
        this.radTreeView1.SelectedNode = foundNode;
    }
    this.radTreeView1.ExpandAll();
}
 
private RadTreeNode FindNodeByValue(object value, Telerik.WinControls.UI.RadTreeNodeCollection nodes)
{
    foreach (RadTreeNode node in nodes)
    {
        if (node.Value.Equals(value))
        {
            return node;
        }
        else
        {
            RadTreeNode n = FindNodeByValue(value, node.Nodes);
            if (n != null)
            {
                return n;
            }
        }
    }
 
    return null;
}      


````
````VB.NET
     Public Sub New()
        InitializeComponent()
        Dim cnt As Integer = 0

        For i As Integer = 0 To 5 - 1
            cnt += 1
            Dim node As RadTreeNode = New RadTreeNode()
            node.Text = "Node" & cnt
            node.Value = cnt
            Me.RadTreeView1.Nodes.Add(node)

            For j As Integer = 0 To 5 - 1
                cnt += 1
                Dim childNode As RadTreeNode = New RadTreeNode()
                childNode.Text = "ChildNode" & cnt
                childNode.Value = cnt
                node.Nodes.Add(childNode)

                For k As Integer = 0 To 3 - 1
                    cnt += 1
                    Dim grandChildNode As RadTreeNode = New RadTreeNode()
                    grandChildNode.Text = "ChildNode" & cnt
                    grandChildNode.Value = cnt
                    childNode.Nodes.Add(grandChildNode)
                Next
            Next
        Next

        Dim value As Object = 12
        Dim foundNode As RadTreeNode = FindNodeByValue(value, Me.RadTreeView1.Nodes)

        If foundNode IsNot Nothing Then
            Me.RadTreeView1.SelectedNode = foundNode
        End If

        Me.RadTreeView1.ExpandAll()
    End Sub

    Private Function FindNodeByValue(ByVal value As Object, ByVal nodes As Telerik.WinControls.UI.RadTreeNodeCollection) As RadTreeNode
        For Each node As RadTreeNode In nodes

            If node.Value.Equals(value) Then
                Return node
            Else
                Dim n As RadTreeNode = FindNodeByValue(value, node.Nodes)

                If n IsNot Nothing Then
                    Return n
                End If
            End If
        Next

        Return Nothing
    End Function   


````

# See Also
* [Finding Nodes]({%slug winforms/treeview/working-with-nodes/finding-nodes%})

 

