---
title: Access RadGridView Elements
description: This article shows how you can access the grid elements without using children collection and indexes 
components: ["gridview"]
type: how-to
page_title: Accessing RadGridView Elements
slug:  gridview-accessing-elements
position: 0
tags: gridview, IndexOutOfRangeException
res_type: kb
---

## Environment
 
| Field | Value |
|---|---|
| Product Version | 2018.3.1016 |
| Product | RadGridView for WinForms |
| Author | Desislava Yordanova |

## Description

In version R3 2018 SP1 (2018.3.1016) we have introduced a new feature in RadGridView, displaying a [caption]({%slug winforms/gridview/caption%}). This requires a changing the element hierarchy and if you have existing code that accesses the elements by index (can be serialized at design time as well) you will get an exception. 

### Access the elements by index

The following examples access `GroupPanelElement` through child collection indexes. These indexes depend on the element hierarchy.

````C#
var groupPanel = this.radGridView1.GridViewElement.Children[0].Children[0].Children[0] as GroupPanelElement;
````
````VB.NET
Dim groupPanel = TryCast(Me.radGridView1.GridViewElement.Children(0).Children(0).Children(0), GroupPanelElement)
````

## Solution

This causes exception because the index of the GroupPanelElement is no longer valid. One solution to this is to change the index to 1.

### Access an element by property

Use the `GroupPanelElement` property to access the element without depending on its index:

````C#

var groupPanel = this.radGridView1.GridViewElement.GroupPanelElement;

````
````VB.NET

Dim groupPanel = this.radGridView1.GridViewElement.GroupPanelElement

````

### Access an element by type

If there is no property, use `GetChildrenByType` to find the element by its type:

````C#

var groupPanel = this.radGridView1.GridViewElement.GetChildrenByType(typeof(GroupPanelElement)).FirstOrDefault();

````
````VB.NET

Dim groupPanel = Me.radGridView1.GridViewElement.GetChildrenByType(GetType(GroupPanelElement)).FirstOrDefault()


````
