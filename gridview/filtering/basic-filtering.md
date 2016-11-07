---
title: Basic Filtering
page_title: Basic Filtering | RadGridView
description: This article shows how you can enable the build in filtering functionality. 
slug: winforms/gridview/filtering/basic-filtering
tags: basic,filtering
published: True
position: 0
previous_url: gridview-filtering-basic-filtering
---

# Basic Filtering

| RELATED VIDEOS |  |
| ------ | ------ |
|[Filtering and Expressions in RadGridView for WinForms](http://www.telerik.com/videos/winforms/filtering-and-expressions-in-radgridview-for-winforms)<br>In this video, you will learn how to enable three different types of filtering on RadGridView for WinForms.|![gridview-filtering-basic-filtering 001](images/gridview-filtering-basic-filtering001.png)|

User filtering in RadGridView is enabled by the __EnableFiltering__ property. By default, filtering is disabled at all levels.

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

When filtering is enabled, each __GridViewDataColumn__ column displays a filter box beneath the corresponding header.

![gridview-filtering-basic-filtering 002](images/gridview-filtering-basic-filtering002.png)

See [End-User capabilities - Filtering]({%slug winforms/gridview/end-user-capabilities/filtering%}) for more information about how the end-user experiences filtering.
