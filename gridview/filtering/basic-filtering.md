---
title: Basic Filtering
page_title: Basic Filtering | UI for WinForms Documentation
description: Basic Filtering
slug: winforms/gridview/filtering/basic-filtering
tags: basic,filtering
published: True
position: 0
---

# Basic Filtering



## 


| RELATED VIDEOS |  |
| ------ | ------ |
|[Filtering and Expressions in RadGridView for WinForms](http://tv.telerik.com/watch/winforms/filtering-expressions-in-radgridview-for-winforms)<br>In this video, you will learn how to enable three different types of filtering on RadGridView for WinForms.|![gridview-filtering-basic-filtering 001](images/gridview-filtering-basic-filtering001.png)|

User filtering in RadGridView is enabled using RadGridView.__EnableFiltering__ or GridViewTemplate.__EnableFiltering__ properties. By default, filtering is disabled at all levels.

#### Enable filtering

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=enableFiltering}} 
{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=enableFiltering}} 

````C#
this.radGridView1.EnableFiltering = true;
this.radGridView1.MasterTemplate.EnableFiltering = true;

````
````VB.NET
Me.RadGridView1.EnableFiltering = True
Me.RadGridView1.MasterTemplate.EnableFiltering = True

````

{{endregion}} 

__GridViewDataColumn__

When filtering is enabled, each __GridViewDataColumn__ column displays a filter box beneath the corresponding header.<br>![gridview-filtering-basic-filtering 002](images/gridview-filtering-basic-filtering002.png)

See [End-User capabilities - Filtering]({%slug winforms/gridview/end-user-capabilities/filtering%}) for more information about how the end-user experiences filtering.
