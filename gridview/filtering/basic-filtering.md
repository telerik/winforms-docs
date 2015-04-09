---
title: Basic Filtering
page_title: Basic Filtering
description: Basic Filtering
slug: gridview-filtering-basic-filtering
tags: basic,filtering
published: True
position: 0
---

# Basic Filtering



## 
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Filtering and Expressions in RadGridView for WinForms](http://tv.telerik.com/watch/winforms/filtering-expressions-in-radgridview-for-winforms)

In this video, you will learn how to enable three different types of filtering on RadGridView for WinForms.
            		</td><td>![gridview-filtering-basic-filtering 001](images/gridview-filtering-basic-filtering001.png)</td></tr></table>

User filtering in RadGridView is enabled using RadGridView.__EnableFiltering__ or GridViewTemplate.__EnableFiltering__
        properties. By default, filtering is disabled at all levels.

#### __[C#] Enable filtering__

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=enableFiltering}}
	            this.radGridView1.EnableFiltering = true;
	            this.radGridView1.MasterTemplate.EnableFiltering = true;
	{{endregion}}



#### __[VB.NET] Enable filtering__

{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=enableFiltering}}
	        Me.RadGridView1.EnableFiltering = True
	        Me.RadGridView1.MasterTemplate.EnableFiltering = True
	{{endregion}}



__GridViewDataColumn__

When filtering is enabled, each __GridViewDataColumn__ column displays a filter box beneath the corresponding header. ![gridview-filtering-basic-filtering 002](images/gridview-filtering-basic-filtering002.png)

See [End-User capabilities - Filtering]({%slug gridview-end-user-capabilities-filtering%}) for more information about how the end-user experiences filtering.
