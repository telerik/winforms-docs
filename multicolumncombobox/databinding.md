---
title: DataBinding
page_title: DataBinding | UI for WinForms Documentation
description: DataBinding
slug: winforms/multicolumncombobox/databinding
tags: databinding
published: True
position: 4
previous_url: multicolumncombobox-databinding
---

# DataBinding



## Design-time Binding

The easiest way to bind the combobox in by setting the DataSource in design-time:<br>![multicolumncombobox-databinding 001](images/multicolumncombobox-databinding001.png)

This will cause the RadGridView (contained in multi-column combobox) auto-generate columns for each field in the specified datasource. 

##  Columns collection

You can set your own columns list using the Columns collection editor of __RadGridView__:

![multicolumncombobox-databinding 002](images/multicolumncombobox-databinding002.png)

The collection editor is accessible through: 

*RadMultiColumnComboBox -> MultiColumnComboBoxElement -> EditorControl -> MasterGridViewTemplate -> Columns*

## Programmatically Binding the ComboBox

You can bind the combobox control programmatically in your application code. The important point is to turn of the automatic generation of columns, otherwise you will have your columns duplicated in runtime.

{{source=..\SamplesCS\MultiColumnComboBox\MultiColumnComboBox1.cs region=setUp}} 
{{source=..\SamplesVB\MultiColumnComboBox\MultiColumnComboBox1.vb region=setUp}} 

````C#
    
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
    
    NwindDataSet nwindDataSet = new NwindDataSet();
    CustomersTableAdapter customersTableAdapter = new CustomersTableAdapter();
    customersTableAdapter.Fill(nwindDataSet.Customers);
    this.radMultiColumnComboBox1.DataSource = nwindDataSet.Customers;
    foreach (GridViewDataColumn column in
        this.radMultiColumnComboBox1.MultiColumnComboBoxElement.Columns)
    {
        column.BestFit();
    }
}
    
void SetUpGrid()
{
    RadGridView gridViewControl = this.radMultiColumnComboBox1.EditorControl;
    gridViewControl.MasterTemplate.AutoGenerateColumns = false;
    gridViewControl.Columns.Add(new GridViewTextBoxColumn("CustomerID"));
    gridViewControl.Columns.Add(new GridViewTextBoxColumn("ContactName"));
    gridViewControl.Columns.Add(new GridViewTextBoxColumn("ContactTitle"));
    gridViewControl.Columns.Add(new GridViewTextBoxColumn("Country"));
    gridViewControl.Columns.Add(new GridViewTextBoxColumn("Phone"));
}

````
````VB.NET
Protected Overrides Sub OnLoad(ByVal e As EventArgs)
    MyBase.OnLoad(e)
    Dim nwindDataSet As New NwindDataSet()
    Dim customersTableAdapter As New CustomersTableAdapter()
    customersTableAdapter.Fill(nwindDataSet.Customers)
    Me.RadMultiColumnComboBox1.DataSource = nwindDataSet.Customers
    For Each column As GridViewDataColumn In Me.RadMultiColumnComboBox1.MultiColumnComboBoxElement.Columns
        column.BestFit()
    Next column
End Sub
Private Sub SetUpGrid()
    Dim gridViewControl As RadGridView = Me.RadMultiColumnComboBox1.EditorControl
    gridViewControl.MasterTemplate.AutoGenerateColumns = False
    gridViewControl.Columns.Add(New GridViewTextBoxColumn("CustomerID"))
    gridViewControl.Columns.Add(New GridViewTextBoxColumn("ContactName"))
    gridViewControl.Columns.Add(New GridViewTextBoxColumn("ContactTitle"))
    gridViewControl.Columns.Add(New GridViewTextBoxColumn("Country"))
    gridViewControl.Columns.Add(New GridViewTextBoxColumn("Phone"))
End Sub

````

{{endregion}} 





