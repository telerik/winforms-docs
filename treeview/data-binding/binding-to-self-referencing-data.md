---
title: Binding to Self Referencing Data
page_title: Binding to Self Referencing Data | RadTreeView
description: Binding to Self Referencing Data
slug: winforms/treeview/data-binding/binding-to-self-referencing-data
tags: binding,to,self,referencing,data
published: True
position: 3
previous_url: treeview-data-binding-binding-to-self-referencing-data
---

# Binding to Self Referencing Data

Binding RadTreeView to self referencing data differs form [binding to related data]({%slug winforms/treeview/data-binding/binding-to-object-relational-data%}) in that RadTreeView is bound to a single list instead of multiple related lists.
 
In order to set the parent-child relation between the records of the data source, we should set the __ParentMember__ and __ChildMember__ properties to the respective fields in the data source. If the parent `ID` for a record does not have a respective value in the child `ID` field of the records, then that record is considered to have no parents.
		

## Minimal example

The following example demonstrates how to bind RadTreeView to a self referencing DataTable.

{{source=..\SamplesCS\TreeView\DataBinding\BindingToSelfRefData.cs region=selfRef}} 
{{source=..\SamplesVB\TreeView\DataBinding\BindingToSelfRefData.vb region=selfRef}} 

````C#
        
public BindingToSelfRefData()
{
    InitializeComponent();
    
    this.radTreeView1.DisplayMember = "name";
    this.radTreeView1.ParentMember = "pid";
    this.radTreeView1.ChildMember = "id";
    this.radTreeView1.DataSource = this.GetSampleData();
}
        
private DataTable GetSampleData()
{
    DataTable dt = new DataTable();
    
    DataColumn dc = new DataColumn();
    dc.ColumnName = "id";
    dc.DataType = typeof(int);
    dt.Columns.Add(dc);
    
    DataColumn dc1 = new DataColumn();
    dc1.ColumnName = "name";
    dc1.DataType = typeof(string);
    dt.Columns.Add(dc1);
    
    DataColumn dc2 = new DataColumn();
    dc2.ColumnName = "pid";
    dc2.DataType = typeof(int);
    dt.Columns.Add(dc2);
    
    DataRow dr = dt.NewRow();
    dr[0] = 0;
    dr[1] = "My Computer";
    dr[2] = DBNull.Value;
    dt.Rows.Add(dr);
    
    dr = dt.NewRow();
    dr[0] = 1;
    dr[1] = @"C:\";
    dr[2] = 0;
    dt.Rows.Add(dr);
    
    dr = dt.NewRow();
    dr[0] = 2;
    dr[1] = @"D:\";
    dr[2] = 0;
    dt.Rows.Add(dr);
    
    dr = dt.NewRow();
    dr[0] = 3;
    dr[1] = "Program Files";
    dr[2] = 1;
    dt.Rows.Add(dr);
    
    dr = dt.NewRow();
    dr[0] = 4;
    dr[1] = "Microsoft";
    dr[2] = 3;
    dt.Rows.Add(dr);
    
    dr = dt.NewRow();
    dr[0] = 5;
    dr[1] = "Telerik";
    dr[2] = 3;
    dt.Rows.Add(dr);
    
    dr = dt.NewRow();
    dr[0] = 6;
    dr[1] = "WINDOWS";
    dr[2] = 1;
    dt.Rows.Add(dr);
    
    return dt;
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Me.RadTreeView1.DisplayMember = "name"
    Me.RadTreeView1.ParentMember = "pid"
    Me.RadTreeView1.ChildMember = "id"
    Me.RadTreeView1.DataSource = Me.GetSampleData()
End Sub
Private Function GetSampleData() As DataTable
    Dim dt As New DataTable()
    Dim dc As New DataColumn()
    dc.ColumnName = "id"
    dc.DataType = GetType(Integer)
    dt.Columns.Add(dc)
    Dim dc1 As New DataColumn()
    dc1.ColumnName = "name"
    dc1.DataType = GetType(String)
    dt.Columns.Add(dc1)
    Dim dc2 As New DataColumn()
    dc2.ColumnName = "pid"
    dc2.DataType = GetType(Integer)
    dt.Columns.Add(dc2)
    Dim dr As DataRow = dt.NewRow()
    dr(0) = 0
    dr(1) = "My Computer"
    dr(2) = DBNull.Value
    dt.Rows.Add(dr)
    dr = dt.NewRow()
    dr(0) = 1
    dr(1) = "C:\"
    dr(2) = 0
    dt.Rows.Add(dr)
    dr = dt.NewRow()
    dr(0) = 2
    dr(1) = "D:\"
    dr(2) = 0
    dt.Rows.Add(dr)
    dr = dt.NewRow()
    dr(0) = 3
    dr(1) = "Program Files"
    dr(2) = 1
    dt.Rows.Add(dr)
    dr = dt.NewRow()
    dr(0) = 4
    dr(1) = "Microsoft"
    dr(2) = 3
    dt.Rows.Add(dr)
    dr = dt.NewRow()
    dr(0) = 5
    dr(1) = "Telerik"
    dr(2) = 3
    dt.Rows.Add(dr)
    dr = dt.NewRow()
    dr(0) = 6
    dr(1) = "WINDOWS"
    dr(2) = 1
    dt.Rows.Add(dr)
    Return dt
End Function

````

{{endregion}} 

As a result we get the hierarchy of nodes shown below:

![treeview-data-binding-binding-to-self-referencing-data 001](images/treeview-data-binding-binding-to-self-referencing-data001.png)
