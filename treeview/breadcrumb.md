---
title: Breadcrumb
page_title: Breadcrumb | RadTreeView
description: RadBreadCrumb is a separate control designed to visualize the current node path (display all the parent nodes of the current node).  
slug: winforms/treeview/breadcrumb
tags: breadcrumb
published: True
position: 13
previous_url: treeview-breadcrumb
---

# Breadcrumb

__RadBreadCrumb__ control is specifically designed to help users with __RadTreeView__ navigation. Breadcrumbs are most appropriate when your data has a deep hierarchical structure with many levels. When you select a node in __RadTreeView__  the breadcrumb component will show the path to the node as a sequence of drop down buttons. It will also allow you to navigate in the tree view by selecting specific item. 

![treeview-breadcrumb 003](images/treeview-breadcrumb003.png)

Use __DefaultTreeView__ property of __RadBreadCrumb__ to associate the bread crumb with an instance of __RadTreeView__. 


{{source=..\SamplesCS\TreeView\BreadCrumb.cs region=defaultTreeView}} 
{{source=..\SamplesVB\TreeView\BreadCrumb.vb region=defaultTreeView}} 

````C#
this.radBreadCrumb1.DefaultTreeView = radTreeView1;

````
````VB.NET
Me.RadBreadCrumb1.DefaultTreeView = Me.RadTreeView1

````

{{endregion}}

# See Also
* [Getting Started]({%slug winforms/treeview/getting-started%})

* [Properties, Methods and Events]({%slug winforms/treeview/properties-methods-events%})

* [Structure]({%slug winforms/treeview/structure%})

* [Touch Support]({%slug winforms/treeview/touch-support%})

* [Overview]({%slug winforms/treeview%})

