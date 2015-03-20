---
title: Overview
page_title: Overview
description: Overview
slug: gridview-viewdefinitions-overview
tags: overview
published: True
position: 0
---

# Overview



## 

You can change __RadGridView__ visual appearance and behavior by using a view definition. To define the view definition you have to set the __ViewDefinition__property of __RadGridView__:

#### __[C#] Assign ViewDefinition__

{{region ViewDefinition}}
	            this.radGridView1.ViewDefinition = myDefinition;
	{{endregion}}



#### __[VB.NET] Assign ViewDefinition__

{{region ViewDefinition}}
	        Me.RadGridView1.ViewDefinition = myDefinition
	{{endregion}}



All view definitions implement the __IViewDefinition__ interface and you could create your own definitions, if you wish. Three different view definitions are currently included: 

* [TableViewDefinition]({%slug gridview-viewdefinitions-table-view%}) 
            - this is the default view definition.

* [ColumnGroupsViewDefinition]({%slug gridview-viewdefinitions-column-groups-view%}) 
            - enables grouping of columns and multiple rows in one row.

* [HtmlViewDefinition]({%slug gridview-viewdefinitions-html-view%}) -
            uses layout similar to the one existing in html tables.

Some of the available views that you can achieve are demonstrated in the picture below:
		![gridview-viewdefinitions-overview 001](images/gridview-viewdefinitions-overview001.png)
