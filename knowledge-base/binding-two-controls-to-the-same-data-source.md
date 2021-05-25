---
title: Binding two controls to the same data source
description: Binding two controls to the same data source. Check it now!
type: how-to
page_title: Binding two controls to one and the same data source
slug: binding-two-controls-to-the-same-data-source
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q1 2012|RadControls for WinForms|Nikolay Diyanov|Apr 10, 2012|
 
    
## PROBLEM  
   
You have two RadDropDownLists and you bind them to one and the same data source (let's assume that this is a DataTable). When you select an item from the first RadDropDownList, the second RadDropDownList also selects the same item, but this is not the desired behavior.  
   
## SOLUTION

This is the normal behavior of how data-binding works in Windows Forms. When you bind a control to a data source, the control needs a binding source to be able to synchronize the selection and changes to its data source. When you do not explicitly set a binding source, the control used the form's binding source. Since both controls are bound to the same collection, the form assigns the same binding source to both controls and when the binding source synchronizes the selection, it pushes the second RadDropDownList to change its selection. In order to use one source with two controls, you have to assign different binding sources. Here is a code snippet which demonstrates how to achieve this:  
   
 
````C#
BindingSource source1 = new BindingSource();
source1.DataSource = nwindDataSet.Employees;
BindingSource source2 = new BindingSource();
source2.DataSource = nwindDataSet.Employees;
 
this.radDropDownList1.DisplayMember = "FirstName";
this.radDropDownList1.ValueMember = "EmployeeID";
this.radDropDownList1.DataSource = source1;
 
this.radDropDownList2.DisplayMember = "FirstName";
this.radDropDownList2.ValueMember = "EmployeeID";
this.radDropDownList2.DataSource = source2;
   
````
````VB.NET
Dim source1 As New BindingSource()
source1.DataSource = nwindDataSet.Employees
Dim source2 As New BindingSource()
source2.DataSource = nwindDataSet.Employees
 
Me.radDropDownList1.DisplayMember = "FirstName"
Me.radDropDownList1.ValueMember = "EmployeeID"
Me.radDropDownList1.DataSource = source1
 
Me.radDropDownList2.DisplayMember = "FirstName"
Me.radDropDownList2.ValueMember = "EmployeeID"
Me.radDropDownList2.DataSource = source2

````

