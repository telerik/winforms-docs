---
title: Object Relational Hierarchy Mode
page_title: Object Relational Hierarchy Mode - WinForms GridView Control
description: WinForms GridView offers Object-Relational Hierarchy mode used to show hierarchy based on a complex IList object that contains inner ILits properties.
slug: winforms/gridview/hierarchical-grid/object-relational-hierarchy-mode
tags: object,relational,hierarchy,mode
published: True
position: 7
previous_url: gridview-hierarchical-grid-object-relational-hierarchy-mode
---

# Object Relational Hierarchy Mode

| RELATED VIDEOS |  |
| ------ | ------ |
|[WinForms RadGridView Creating Object Relational Hierarchies in RadGridView](http://tv.telerik.com/watch/winforms/creating-object-relational-hierarchies-in-radgridview-for-winforms)<br>In this video, you will learn how to automatically and manually create object relational hierarchies in RadGridView for WinForms.|![WinForms RadGridView gridview-hierarchical-grid-object-relational-hierarchy-mode 005](images/gridview-hierarchical-grid-object-relational-hierarchy-mode005.png)|

## Auto generating hierarchy mode 

The Object-Relational Hierarchy mode is used to show hierarchy based on a complex `IList` (IEnumarable) object that contains inner `ILits` (IEnumerable) properties.

In order to create an Object-Relational Hierarchy automatically in this scenario, you must set only the DataSource and the AutoGenerateHierarachy properties of RadGridView.

Here is an example with an entity model using the Northwind database:

![WinForms RadGridView ](images/gridview-hierarchical-grid-object-relational-hierarchy-mode001.png)

{{source=..\SamplesCS\GridView\HierarchicalGrid\AutoGenerateObjectRelationHierarchyMode.cs region=AutoGenerateObjectRelationHierarchyMode}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\AutoGenerateObjectRelationHierarchyMode.vb region=AutoGenerateObjectRelationHierarchyMode}} 

````C#
private void AutoGenerateObjectRelationHierarchyMode_Load(object sender, EventArgs e)
{
    NorthwindEntities entities = new NorthwindEntities();
    var query = from suppliers in entities.Suppliers select suppliers;
    this.radGridView1.DataSource = query.ToList();
    this.radGridView1.AutoGenerateHierarchy = true;
}

````
````VB.NET
Private Sub AutoGenerateObjectRelationHierarchyMode_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    Dim entities As New NorthwindEntities()
    Dim query = From suppliers In entities.Suppliers Select suppliers
    Me.RadGridView1.DataSource = query.ToList()
    Me.RadGridView1.AutoGenerateHierarchy = True
End Sub

````

{{endregion}} 


![WinForms RadGridView ](images/gridview-hierarchical-grid-object-relational-hierarchy-mode002.png)

## Manually generating hierarchy mode 

The Object-Relational hierarchy mode can be setup manually by creating the child `GridViewTemplate` and adding `GridViewRelation` between `GridViewTemplates`. This special relation should contain the name of the property that belongs to the parent object and that returns an `IList` (IEnumerable) of sub-objects. RadGridView uses the name of the property to load the necessary data for the child `GridViewTemplate` when the user expands a parent row.

>note In this mode only the DataSource of parent GridViewTemplate or RadGridView control must be set to a collection of custom business object or ORM data objects.
>


The following example demonstrates how you can manually build an object-relational hierarchy using the "Customers" entity model from the Northwind database:

![WinForms RadGridView ](images/gridview-hierarchical-grid-object-relational-hierarchy-mode006.png)

{{source=..\SamplesCS\GridView\HierarchicalGrid\ManualGenerateObjectRelationalMode.cs region=ManualGenerateObjectRelationalMode}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\ManualGenerateObjectRelationalMode.vb region=ManualGenerateObjectRelationalMode}} 

````C#
void ManualGenerateObjectRelationalMode_Load(object sender, EventArgs e)
{
    NorthwindEntities entities = new NorthwindEntities();
    var query = from customers in entities.Customers select customers;
    GridViewTemplate childTemplate = CreateChildTemplate();
    GridViewRelation relation = new GridViewRelation(this.radGridView1.MasterTemplate, childTemplate);
    relation.ChildColumnNames.Add("Orders");
    this.radGridView1.Relations.Add(relation);
    this.radGridView1.DataSource = query.ToList();
}
private GridViewTemplate CreateChildTemplate()
{
    GridViewTemplate childTemplate = new GridViewTemplate();
    this.radGridView1.Templates.Add(childTemplate);
    GridViewTextBoxColumn column = new GridViewTextBoxColumn("OrderDate");
    childTemplate.Columns.Add(column);
    column = new GridViewTextBoxColumn("Freight");
    childTemplate.Columns.Add(column);
    column = new GridViewTextBoxColumn("ShipName");
    childTemplate.Columns.Add(column);
    column = new GridViewTextBoxColumn("ShipCountry");
    childTemplate.Columns.Add(column);
    column = new GridViewTextBoxColumn("ShipCity");
    childTemplate.Columns.Add(column);
    column = new GridViewTextBoxColumn("ShipAddress");
    childTemplate.Columns.Add(column);
    childTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
    return childTemplate;
}

````
````VB.NET
Private Sub ManualGenerateObjectRelationalMode_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    Dim entities As New NorthwindEntities()
    Dim query = From customers In entities.Customers Select customers
    Dim childTemplate As GridViewTemplate = CreateChildTemplate()
    Dim relation As New GridViewRelation(Me.RadGridView1.MasterTemplate, childTemplate)
    relation.ChildColumnNames.Add("Orders")
    Me.RadGridView1.Relations.Add(relation)
    Me.RadGridView1.DataSource = query.ToList()
End Sub
Private Function CreateChildTemplate() As GridViewTemplate
    Dim childTemplate As New GridViewTemplate()
    Me.radGridView1.Templates.Add(childTemplate)
    Dim column As New GridViewTextBoxColumn("OrderDate")
    childTemplate.Columns.Add(column)
    column = New GridViewTextBoxColumn("Freight")
    childTemplate.Columns.Add(column)
    column = New GridViewTextBoxColumn("ShipName")
    childTemplate.Columns.Add(column)
    column = New GridViewTextBoxColumn("ShipCountry")
    childTemplate.Columns.Add(column)
    column = New GridViewTextBoxColumn("ShipCity")
    childTemplate.Columns.Add(column)
    column = New GridViewTextBoxColumn("ShipAddress")
    childTemplate.Columns.Add(column)
    childTemplate.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
    Return childTemplate
End Function

````

{{endregion}} 


![WinForms RadGridView ](images/gridview-hierarchical-grid-object-relational-hierarchy-mode004.png)

>important As you can notice, we can perform all data operations on the child templates – grouping, sorting and filtering. RadGridView processes only the amount of data required for a particular data operation (lazy data loading). This provides us with better performance and small memory footprint.
>

>note Since the R3 2015 SP1 release __RadGridView__ supports CRUD operations for its inner levels. The __AutoUpdateObjectRelationalSource__ defines whether CRUD should be managed by the API or not, by default its value is set to *true* . In case one needs to handle these operations manually the property needs to be set to *false* .
>

# See Also

* [Binding to Hierarchical Data Automatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%})

* [Binding to Hierarchical Data Programmatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%})

* [Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%})

* [Creating hierarchy using an XML data source]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%})

* [Hierarchy of one to many relations]({%slug winforms/gridview/hierarchical-grid/hierarchy-of-one-to-many-relations%})

* [Load-On-Demand Hierarchy]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%})

* [Self-Referencing Hierarchy]({%slug winforms/gridview/hierarchical-grid/self-referencing-hierarchy%})

* [Tutorial Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data%})

