---
title: Creating Hierarchical Grids
page_title: Creating Hierarchical Grids | RadGridView
description: RadGridView has the ability to represent hierarchical master-detail data. 
slug: winforms/gridview/fundamentals/creating-hierarchical-grids
tags: creating,hierarchical,grids
published: True
position: 7
previous_url: gridview-fundamentals-creating-hierarchical-grids
---

# Creating Hierarchical Grids

__RadGridView__ has the ability to represent hierarchical master-detail data. Its hierarchical schema set up either at design-time or at runtime using the control API. You can also set the __AutoGenerateHierarchy__ property to *True* and bind to a __System.Data.DataSet__ type data source to have __RadGridView__ automatically build a hierarchical schema.

#### Create hierarchical grid

{{source=..\SamplesCS\GridView\Fundamentials\CreatingHierarchicalGrid.cs region=AutoGenerateHierarchy}} 
{{source=..\SamplesVB\GridView\Fundamentials\CreatingHierarchicalGrid.vb region=AutoGenerateHierarchy}} 

````C#
this.ordersTableAdapter.Fill(this.nwindDataSet.Orders);
this.order_DetailsTableAdapter.Fill(this.nwindDataSet.Order_Details);
this.customersTableAdapter.Fill(this.nwindDataSet.Customers);
radGridView1.AutoGenerateHierarchy = true;

````
````VB.NET
Me.OrdersTableAdapter.Fill(Me.NwindDataSet.Orders)
Me.Order_DetailsTableAdapter.Fill(Me.NwindDataSet.Order_Details)
Me.CustomersTableAdapter.Fill(Me.NwindDataSet.Customers)
RadGridView1.AutoGenerateHierarchy = True

````

{{endregion}} 

The general steps to setting up hierarchical data manually are:

1. Configure the data source components for each table to be displayed.

1. Using __GridViewTemplate.ChildGridViewTemplates__ collection, create a hierarchy of templates, one for every level of master-detail relations. Each template should be bound to its own data source.

1. Populate the __Relations__ collection with __GridViewRelation__ objects. These objects define the relations between views in the hierarchy. The __ParentTemplate__ and __ChildTemplate__ properties of __GridViewRelation__ object are set to the existing templates. __ParentColumnNames__ and __ChildColumnNames__ collections are filled with the names of the fields of the corresponding data sources. See the topic [Tutorial: Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%}) for step by step instructions.
