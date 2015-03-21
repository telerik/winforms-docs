---
title: Binding to DataTable
page_title: Binding to DataTable
description: Binding to DataTable
slug: chartview-databinding-binding-to-datatable
tags: binding,to,datatable
published: True
position: 0
---

# Binding to DataTable



## 

Binding to DataTable is quite easy with RadChartView. Once your table is created, 
        	you just need to set the needed members to the desired fields. In 
        	[this article]({%slug chartview-databinding%})      
        	, you can find the members needed for the different series types.
        

Here is a sample demonstrating how to bind [LineSeries]({%slug chartview-series-types-line%}):

#### __[C#]__

{{region binding}}
	        DataTable table;
	
	        protected override void OnLoad(EventArgs e)
	        {
	            base.OnLoad(e);
	
	            table = new DataTable();
	            table.Columns.Add("Value", typeof(double));
	            table.Columns.Add("Name", typeof(string));
	            table.Rows.Add(1, "John");
	            table.Rows.Add(3, "Adam");
	            table.Rows.Add(5, "Peter");
	            table.Rows.Add(12, "Sam");
	            table.Rows.Add(6, "Paul");
	
	            LineSeries lineSeria = new LineSeries();
	            radChartView1.Series.Add(lineSeria);
	
	            lineSeria.ValueMember = "Value";
	            lineSeria.CategoryMember = "Name";
	            lineSeria.DataSource = table;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region binding}}
	    Private table As DataTable
	
	    Protected Overrides Sub OnLoad(e As EventArgs)
	        MyBase.OnLoad(e)
	
	        table = New DataTable()
	        table.Columns.Add("Value", GetType(Double))
	        table.Columns.Add("Name", GetType(String))
	        table.Rows.Add(1, "John")
	        table.Rows.Add(3, "Adam")
	        table.Rows.Add(5, "Peter")
	        table.Rows.Add(12, "Sam")
	        table.Rows.Add(6, "Paul")
	
	        Dim lineSeria As New LineSeries()
	        RadChartView1.Series.Add(lineSeria)
	
	        lineSeria.ValueMember = "Value"
	        lineSeria.CategoryMember = "Name"
	        lineSeria.DataSource = table
	    End Sub
	#End Region
	
	#Region "addingRecord"
	    Private Sub RadButton1_Click_1(sender As System.Object, e As System.EventArgs) Handles RadButton1.Click
	
	        table.Rows.Add(10, "Moris")
	        RadChartView1.Refresh()
	    End Sub
	#End Region
	
	End Class

![chartview-databinding-binding-to-datatable 001](images/chartview-databinding-binding-to-datatable001.png)

Adding, removing or modifying a record in the DataTable is automatically reflected in RadChartView:![chartview-databinding-binding-to-datatable 002](images/chartview-databinding-binding-to-datatable002.png)
