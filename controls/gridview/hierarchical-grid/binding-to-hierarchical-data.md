---
title: Binding to Hierarchical Data
page_title: Binding to Hierarchical Data - WinForms GridView Control
description: Learn how to create a hierarchical WinForms GridView that displays arbitrary number of child levels.
slug: winforms/gridview/hierarchical-grid/binding-to-hierarchical-data
tags: binding,to,hierarchical,data
published: True
position: 0
previous_url: gridview-hierarchical-grid-binding-to-hierarchical-data
---

# Binding to Hierarchical Data


| RELATED VIDEOS |  |
| ------ | ------ |
|[WinForms RadGridView RadGridView for WinForms Hierarchy Overview](http://tv.telerik.com/watch/winforms/radgrid/radgridview-winforms-hierarchy-overview)<br>In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)|![WinForms RadGridView gridview-hierarchical-grid-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)|

RadGridView can display hierarchical, master-detail data to an arbitrary number of levels. The hierarchical schema can be established at run-time or design-time.

![WinForms RadGridView gridview-hierarchical-grid-binding-to-hierarchical-data 002](images/gridview-hierarchical-grid-binding-to-hierarchical-data002.png)

At run-time you can use the RadGridView.AutoGenerateHierarchyFromDataSet to [automatically create the hierarchy]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%}).

At design-time the steps are:

1. Configure data source components for each table to be displayed.

1. Using __GridViewTemplate.ChildGridViewTemplates__ collection, create a hierarchy of templates, one for every level of master-detail relations. Each template should be bound to its own data source.

1. Populate the RadGridView.Relations collection with GridViewRelation objects. These objects define the relations between views in the hierarchy. The __ParentTemplate__ and __ChildTemplate__ properties of __GridViewRelation__ object are set to the existing templates. __ParentColumnNames__ and __ChildColumnNames__ collections are filled with the names of the fields of the corresponding data sources. See the topic [Tutorial: Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data%}) for step by step instructions.
    
>note Use the __ShowChildViewCaptions__ property to show/hide the table header in the child view. 

# See Also
* [Binding to Hierarchical Data Automatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%})

* [Binding to Hierarchical Data Programmatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%})

* [Creating hierarchy using an XML data source]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%})

* [Hierarchy of one to many relations]({%slug winforms/gridview/hierarchical-grid/hierarchy-of-one-to-many-relations%})

* [Load-On-Demand Hierarchy]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%})

* [Object Relational Hierarchy Mode]({%slug winforms/gridview/hierarchical-grid/object-relational-hierarchy-mode%})

* [Self-Referencing Hierarchy]({%slug winforms/gridview/hierarchical-grid/self-referencing-hierarchy%})

* [Tutorial Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data%})

