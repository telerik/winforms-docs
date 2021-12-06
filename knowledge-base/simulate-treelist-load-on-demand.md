---
title: Simulate TreeList Control with Load on Demand
description: Learn how to achieve TreeList control with load on demand hierarchy.
type: how-to
page_title: Simulate TreeList Control with Load on Demand
slug: simulate-treelist-load-on-demand
position: 0
tags: treelist, load, demand, self, reference
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.3.1123|RadTreeView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

This tutorial demonstrates how to simulate a TreeList control with load on demand hierarchy: 

![simulate-treelist-load-on-demand](images/simulate-treelist-load-on-demand.png)

 
## Solution 

The illustrated result is achieved with a RadTreeView by two main steps:

1. Create a [custom node element]({%slug winforms/treeview/working-with-nodes/custom-nodes%}) that contains a header container with the header cells and a data container with the data cells.
2. Build a [custom editor]({%slug winforms/treeview/working-with-nodes/custom-nodes%}) which allows editing the Title, Date, DeliveryType fields.

>note A complete C# and VB project is available [here](https://github.com/telerik/winforms-sdk/tree/master/TreeView/SelfRefLoadOnDemandGrid)

# See Also

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})
* [Custom Editor]({%slug winforms/treeview/editing/custom-editors%})
 

 







    
   
  
    
 
