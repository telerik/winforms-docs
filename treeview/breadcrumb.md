---
title: Breadcrumb
page_title: Breadcrumb
description: Breadcrumb
slug: treeview-breadcrumb
tags: breadcrumb
published: True
position: 12
---

# Breadcrumb



__RadBreadCrumb__ control is specifically designed to help users with __RadTreeView__ navigation. Breadcrumbs are
        most appropriate when your data has a deep hierarchical structure with many levels. When you select a node in __RadTreeView__ 
        the breadcrumb component will show the path to the node as a sequence of drop down buttons. It will also allow you to navigate in the tree view by selecting
        specific item. 
      ![treeview-breadcrumb 003](images/treeview-breadcrumb003.png)

## 

Use __DefaultTreeView__ property of __RadBreadCrumb__ to associate the bread crumb with an instance
          of __RadTreeView__. 
        

#### __[C#] __

{{region defaultTreeView}}
	            radBreadCrumb1.DefaultTreeView = radTreeView1;
	{{endregion}}



#### __[VB.NET] __

{{region defaultTreeView}}
	        RadBreadCrumb1.DefaultTreeView = RadTreeView1
	{{endregion}}


