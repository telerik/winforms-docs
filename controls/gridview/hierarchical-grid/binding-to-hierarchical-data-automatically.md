---
title: Binding to Hierarchical Data Automatically
page_title: Binding to Hierarchical Data Automatically - WinForms GridView Control
description: Learn how to automatically create a hierarchical WinForms GridView that displays arbitrary number of child levels. 
slug: winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically
tags: binding,to,hierarchical,data,automatically
published: True
position: 2
previous_url: gridview-hierarchical-grid-binding-to-hierarchical-data-automatically
---

# Binding to Hierarchical Data Automatically

## Generating Two-Level Hierarchy

| RELATED VIDEOS |  |
| ------ | ------ |
|[RadGridView for WinForms Hierarchy Overview](https://www.youtube.com/watch?v=t3cR7A5VjdY&index=11&list=PLvmaC-XMqeBaRgdM2nVNSM-0SSG_xbjSN)<br>In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)|![WinForms RadGridView Two-Level Hierarchy Tutorial](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)|

At runtime, if the data source for the grid is a __System.Data.DataSet__ type and there are relations defined in it, the hierarchy can be created automatically. Set the __AutoGenerateHierarchy__ property	*true* to get this behavior. In the example below, the Northwind dataset has `Categories` and `Products` joined by `CategoryID`.

<br>![WinForms RadGridView AutoGenerateHierarchy](images/gridview-hierarchical-grid-binding-to-hierarchical-data-automatically004.png)

The run-time code fills the categories and products data tables, sets the __AutoGenerateHierarchy__ to *true*, assigns the data set containing both tables to the grid __DataSource__ and the __DataMember__ is the name of the parent table. The last three lines of code below can be configured at design time.

<snippet id='gridview-bindingtohierarchicalgridautomatically-bindingtohierarchicalgridautomatically-cs' />
<snippet id='gridview-bindingtohierarchicalgridautomatically-bindingtohierarchicalgridautomatically-vb' />

## Generating Multi-Level Hierarchy

It is possible to auto generate Multi-level hierarchy as well. You should again set the __DataSource__ and __AutoGenerateHierarachy__ properties. Here are the three data tables from the Northwind database, used in the code snippet to generate the three-level hierarchy:

![WinForms RadGridView Multi-Level Hierarchy](images/gridview-hierarchical-grid-binding-to-hierarchical-data-automatically002.png)

<snippet id='gridview-bindingtohierarchicalgridautomatically-bindingtomultilevelhierarchicalgridautomatically-cs' />
<snippet id='gridview-bindingtohierarchicalgridautomatically-bindingtomultilevelhierarchicalgridautomatically-vb' />

![WinForms RadGridView AutoGenerateHierarchy](images/gridview-hierarchical-grid-binding-to-hierarchical-data-automatically003.png)

## See Also
* [Binding to Hierarchical Data Programmatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%})

* [Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%})

* [Creating hierarchy using an XML data source]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%})

* [Hierarchy of one to many relations]({%slug winforms/gridview/hierarchical-grid/hierarchy-of-one-to-many-relations%})

* [Load-On-Demand Hierarchy]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%})

* [Object Relational Hierarchy Mode]({%slug winforms/gridview/hierarchical-grid/object-relational-hierarchy-mode%})

* [Self-Referencing Hierarchy]({%slug winforms/gridview/hierarchical-grid/self-referencing-hierarchy%})

* [Tutorial Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data%})

