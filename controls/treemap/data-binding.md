---
title: Data Binding
page_title: Data Binding - WinForms TreeMap Control
description: Bind the WinForms TreeMap either at design time or at run time.   
slug: treemap-data-binding
tags: treemap, binding
published: True
position: 5
---

# Data Binding

Data binding is a mechanism for automatic population of the RadTreeMap with items, based on the provided data structure. Three properties control the data binding:

* **DataSource** - specifies the data structure to be bound.

* **DisplayMember** - specifies the particular field in the data source which will be used from the items in RadTreeMap for their Text.

* **ValueMember** - specifies the particular field in the data source which controls the value for each item.

**RadTreeMap** supports data binding either at design time or at run time. Both of the approaches will lead to the same result:

![WinForms RadTreeMap treemap-data-binding 011](images/treemap-data-binding011.png)

## Run Time

{{source=..\SamplesCS\TreeMap\TreeMapGettingStarted.cs region=Bind}} 
{{source=..\SamplesVB\TreeMap\TreeMapGettingStarted.vb region=Bind}} 

````C#
         
this.radTreeMap1.DisplayMember = "ProductName";
this.radTreeMap1.ValueMember = "ProductID";
this.radTreeMap1.DataSource = this.productsBindingSource;

````
````VB.NET

Me.radTreeMap1.DisplayMember = "ProductName"
Me.radTreeMap1.ValueMember = "ProductID"
Me.radTreeMap1.DataSource = Me.productsBindingSource

````

{{endregion}} 
 
 
## Design Time

It is possible to specify the **DataSource**, **DisplayMember**, **ValueMember** properties via the Smart Tag. The following tutorial demonstrates how to bind the tree map control to the Northwind.Products table:

![WinForms RadTreeMap treemap-data-binding 001](images/treemap-data-binding001.png)

![WinForms RadTreeMap treemap-data-binding 002](images/treemap-data-binding002.png)

![WinForms RadTreeMap treemap-data-binding 003](images/treemap-data-binding003.png)

![WinForms RadTreeMap treemap-data-binding 004](images/treemap-data-binding004.png)

![WinForms RadTreeMap treemap-data-binding 005](images/treemap-data-binding005.png)

![WinForms RadTreeMap treemap-data-binding 006](images/treemap-data-binding006.png)

![WinForms RadTreeMap treemap-data-binding 007](images/treemap-data-binding007.png)

![WinForms RadTreeMap treemap-data-binding 008](images/treemap-data-binding008.png)

![WinForms RadTreeMap treemap-data-binding 009](images/treemap-data-binding009.png)

![WinForms RadTreeMap treemap-data-binding 010](images/treemap-data-binding010.png)

 
# See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

* [Unbound Mode]({%slug treemap-unbound-mode%})


