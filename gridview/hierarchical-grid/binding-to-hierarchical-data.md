---
title: Binding to Hierarchical Data
page_title: Binding to Hierarchical Data
description: Binding to Hierarchical Data
slug: gridview-hierarchical-grid-binding-to-hierarchical-data
tags: binding,to,hierarchical,data
published: True
position: 0
---

# Binding to Hierarchical Data



## 
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[RadGridView for WinForms Hierarchy Overview](http://tv.telerik.com/winforms/radgrid/radgridview-winforms-hierarchy-overview)

In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)
            		</td><td>

![gridview-hierarchical-grid-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)</td></tr></table>

RadGridView can display hierarchical, master-detail data to an arbitrary number of levels. The hierarchical schema can be established at run-time or design-time.![gridview-hierarchical-grid-binding-to-hierarchical-data 002](images/gridview-hierarchical-grid-binding-to-hierarchical-data002.png)

At run-time you can use the RadGridView.AutoGenerateHierarchyFromDataSet to 
          [automatically create the hierarchy]({%slug gridview-hierarchical-grid-binding-to-hierarchical-data-automatically%}).
        

At design-time the steps are:

1. Configure datasource components for each table to be displayed.

1. Using GridViewTemplate.ChildGridViewTemplates collection, create a hierarchy of templates, one for every level of master-detail relations. 
              Each template should be bound to its own data source.
            

1. Populate the RadGridView.Relations collection with GridViewRelation objects. These objects define the relations between views in the hierarchy. 
              The __ParentTemplate__ and __ChildTemplate__ properties of __GridViewRelation__ 
              object are set to the existing templates. __ParentColumnNames__ and __ChildColumnNames__ collections are 
              filled with the names of the fields of the corresponding data sources. See the topic 
              [Tutorial: 
              Binding to Hierarchical Data]({%slug gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data%}) for step by step instructions.
             
