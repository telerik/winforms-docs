---
title: Tutorial Binding to Hierarchical Data
page_title: Tutorial Binding to Hierarchical Data | RadGridView
description: Step by step tutorial that shows how one can create hierarchical grid.
slug: winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data
tags: tutorial,binding,to,hierarchical,data
published: True
position: 1
previous_url: gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data
---

# Tutorial: Binding to Hierarchical Data


| RELATED VIDEOS |  |
| ------ | ------ |
|[RadGridView for WinForms Hierarchy Overview](http://tv.telerik.com/watch/winforms/radgrid/radgridview-winforms-hierarchy-overview)<br>In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)|![gridview-hierarchical-grid-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)|

The following tutorial demonstrates configuring the grid to display multiple tables in a hierarchy. The example below uses the Northwind `Categories` table as the parent table and lists the appropriate `Product` table records below each category. The tutorial only uses the two tables, but the example can be extended to larger numbers of child tables. 

![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 020](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data020.png)

The task has 3 basic steps:

1. Configure data sources.

1. Define child grid view templates, one for each level in the hierarchy.

1. Define relations between parent and child tables.

## Configure Data Sources

1. Place a RadGridView component on a form. Set the __Dock__ property to *Fill*.

1. In the Properties window locate the __DataSource__ property and click the arrow to open the list. Select the __Add Project Data Source...__ link.  *This step will display the Data Source Configuration Wizard.*
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data001.png)

1. In the Data Source Configuration Wizard, Choose a Data Source Type page, select the __Database__ icon. Click the __Next__ button.

    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 002](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data002.png)

1. In the Database Model page of the Data Source Configuration Wizard choose __Database__ icon. Click the __Next__ button. 
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 003](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data003.png)

1. In the `Choose Your data Connection` page click the __New Connection...__ button. *This step will display the Add Connection dialog. * Add the connection and then click __Next__. 

    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 004](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data004.png)

1. Click the __Next__ to save the ConnectionString name:
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 009](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data009.png)

1. In the Choose Your Database Objects page, select the __"Categories"__ and __"Products"__ checkboxes. Click the __Finish__ button to close the Data Source Configuration Wizard.
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 010](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data010.png)

1. In the Visual Studio Properties window for the grid __DataSource__ property select the "Products" table. * This step will create DataSet, BindingSource and TableAdapter objects for the products table.*
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 011](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data011.png)

1. In the Visual Studio Properties window for the grid __DataSource__ property select the "Categories" table. * This step will create DataSet, BindingSource and TableAdapter objects for the categories table.*
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 012](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data012.png) 
          

1. The project design should look similar to the below image. The __DataSource__ property should be left to point at the binding source of the `Categories` table. Note the new data components in the component tray under the design surface.
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 013](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data013.png)

## Define Child Templates

1. In the `Properties` window click the ellipses for the __Templates__ property. *This step will display the GridViewTemplate Collection Editor.*
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 014](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data014.png)

1. In the GridViewTemplate Collection Editor, click the __Add__ button to add a child grid view template. In the properties for the new grid view template, use the __DataSource__ property drop down to locate and select the binding source of the data table __"Products"__. Click the __OK__ button to close the dialog.
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 015](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data015.png)

## Define relations

1. In the `Properties` window click the ellipses for the grid __Relations__ property. *This will display the GridViewRelation Collection Editor.*
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 016](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data016.png)

1. In the `GridViewRelation Collection Editor`, click the __Add__ button to add a relation. *The relation will describe the parent/child relationship between the category data (parent table) and the products (child table) for each category.*

1. Set the __RelationName__ property to "CategoryProduct".

1. Set the GridViewRelation __ChildTemplate__ property to the child grid view template (created earlier in the GridViewTemplate Collection Editor) using the drop down list.
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 019](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data019.png)

1. Set the __ParentTemplate__ property to the __MasterTemplate__.

1. Click the ellipses for the __ChildColumnName__ property. *This will display the ColumnName Collection Editor.*

1. In the ColumnName Collection Editor click the __Add__ button and set the column __Name__ property to "CategoryID". Click the __OK__ button to close the dialog.
 
    ![gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data 017](images/gridview-hierarchical-grid-tutorial-binding-to-hierarchical-data017.png)

1. Click the ellipses for the __ParentColumnName__ property. In the ColumnName Collection Editor click the __Add__ button and set the column __Name__ property to "CategoryID". Click the __OK__ button to close the dialog.

1. Press __F5__ to run the application.

# See Also

* [Binding to Hierarchical Data Automatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%})

* [Binding to Hierarchical Data Programmatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%})

* [Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%})

* [Creating hierarchy using an XML data source]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%})

* [Hierarchy of one to many relations]({%slug winforms/gridview/hierarchical-grid/hierarchy-of-one-to-many-relations%})

* [Load-On-Demand Hierarchy]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%})

* [Object Relational Hierarchy Mode]({%slug winforms/gridview/hierarchical-grid/object-relational-hierarchy-mode%})

* [Self-Referencing Hierarchy]({%slug winforms/gridview/hierarchical-grid/self-referencing-hierarchy%})

