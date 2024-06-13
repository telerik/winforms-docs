---
title: Access RadGridView Elements
description: This article shows how you can access the grid elements without using children collection and indexes 
type: how-to
page_title: Accessing RadGridView Elements
slug:  gridview-accessing-elements
position: 0
tags: gridview, IndexOutOfRangeException
res_type: kb
---

## Environment
 
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.3.1016</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadGridView for WinForms</td>
    </tr>
    <tr>
        <td>Author</td>
        <td>Desislava Yordanova</td>
    </tr>
</table>

## Description

In version R3 2018 SP1 (2018.3.1016) we have introduced a new feature in RadGridView, displaying a [caption]({%slug winforms/gridview/caption%}). This requires a changing the element hierarchy and if you have existing code that accesses the elements by index (can be serialized at design time as well) you will get an exception. 

#### Access the elements by index

````C#
var groupPanel = this.radGridView1.GridViewElement.Children[0].Children[0].Children[0] as GroupPanelElement;
````
````VB.NET
Dim groupPanel = TryCast(Me.radGridView1.GridViewElement.Children(0).Children(0).Children(0), GroupPanelElement)
````

## Solution

This causes exception because the index of the GroupPanelElement is no longer valid. One solution to this is to change the index to 1.

Another solution is to use the property to access the element. For example:

````C#

var groupPanel = this.radGridView1.GridViewElement.GroupPanelElement;

````
````VB.NET

Dim groupPanel = this.radGridView1.GridViewElement.GroupPanelElement

````

If the is no property you can get the element by type by using the following method:

````C#

var groupPanel = this.radGridView1.GridViewElement.GetChildrenByType(typeof(GroupPanelElement)).FirstOrDefault();

````
````VB.NET

Dim groupPanel = Me.radGridView1.GridViewElement.GetChildrenByType(GetType(GroupPanelElement)).FirstOrDefault()


````

