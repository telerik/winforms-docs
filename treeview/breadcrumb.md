---
title: Breadcrumb
page_title: Breadcrumb | UI for WinForms Documentation
description: Breadcrumb
slug: winforms/treeview/breadcrumb
tags: breadcrumb
published: True
position: 13
previous_url: treeview-breadcrumb
---

# Breadcrumb



__RadBreadCrumb__ control is specifically designed to help users with __RadTreeView__ navigation. Breadcrumbs are most appropriate when your data has a deep hierarchical structure with many levels. When you select a node in __RadTreeView__  the breadcrumb component will show the path to the node as a sequence of drop down buttons. It will also allow you to navigate in the tree view by selecting specific item. 

![treeview-breadcrumb 003](images/treeview-breadcrumb003.png)

## 

Use __DefaultTreeView__ property of __RadBreadCrumb__ to associate the bread crumb with an instance of __RadTreeView__. 


{{source=..\SamplesCS\TreeView\BreadCrumb.cs region=defaultTreeView}} 
{{source=..\SamplesVB\TreeView\BreadCrumb.vb region=defaultTreeView}} 

````C#
radBreadCrumb1.DefaultTreeView = radTreeView1;

````
````VB.NET
RadBreadCrumb1.DefaultTreeView = RadTreeView1

````

{{endregion}}
