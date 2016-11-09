---
title: Overview
page_title: Overview | RadGridView
description: This article shows the view definitions that are currently supported in RadgridView
slug: winforms/gridview/view-definitions/overview
tags: overview
published: True
position: 0
previous_url: gridview-viewdefinitions-overview
---

# View Definitions Overview

You can change __RadGridView__ visual appearance and behavior by using a view definition. To define the view definition you have to set the __ViewDefinition__.

#### Assign ViewDefinition

{{source=..\SamplesCS\GridView\ViewDefinitions\Overview.cs region=ViewDefinition}} 
{{source=..\SamplesVB\GridView\ViewDefinitions\Overview.vb region=ViewDefinition}} 

````C#
this.radGridView1.ViewDefinition = myDefinition;

````
````VB.NET
Me.RadGridView1.ViewDefinition = myDefinition

````

{{endregion}} 

All view definitions implement the __IViewDefinition__ interface and you could create your own definitions, if you wish. Three different view definitions are currently included: 

* [TableViewDefinition]({%slug winforms/gridview/view-definitions/table-view%}): this is the default view definition.

* [ColumnGroupsViewDefinition]({%slug winforms/gridview/view-definitions/column-groups-view%}): enables grouping of columns and multiple rows in one row.

* [HtmlViewDefinition]({%slug winforms/gridview/view-definitions/html-view%}): uses layout similar to the one existing in HTML tables.

>caption Figure 1: ColumnGroupsViewDefinition

![gridview-viewdefinitions-overview 001](images/gridview-viewdefinitions-overview001.png)

>caption Figure 2: HtmlViewDefinition

![gridview-viewdefinitions-overview 002](images/gridview-viewdefinitions-overview002.png)