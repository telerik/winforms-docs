---
title: Data-Binding
page_title: Data-Binding - WinForms Sparkline Control
description: The WinForms Sparkline control supports data-binding directly to IList, IListSource, IBindingList, etc. Learn how to populate it with data. 
slug: radsparkline-data-binding
tags: sparkline, data, binding
published: True
position: 0
---

# Data Binding

You can directly bind your preferred series to your data, the currently supported data sources are:

* __IList__ interface for one-dimensional arrays.

* __IListSource__ interface (like DataTable and DataSet classes).

* __IBindingList__ interface. For example the generic BindingList class.

* __IBindingListView__ interface. For example BindingSource class.

To bind the series you need to set the __ValueMember__ property. The following example demonstrates this.

#### Bind Series to a DataTable

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=BindToTable}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=BindToTable}}
````C#
DataTable table;
public void AddBoundSeries()
{
    table = new DataTable();
    table.Columns.Add("Value", typeof(double));
    table.Rows.Add(1);
    table.Rows.Add(-3);
    table.Rows.Add(5);
    table.Rows.Add(1);
    table.Rows.Add(6);
    table.Rows.Add(-1);
    table.Rows.Add(3);
    table.Rows.Add(-5);
    table.Rows.Add(1);
    table.Rows.Add(6);
    SparkLineSeries lineSeries = new SparkLineSeries();
    lineSeries.ValueMember = "Value";
    lineSeries.DataSource = table;
    lineSeries.ShowMarkers = true;
    lineSeries.ShowHighPointIndicator = true;
    lineSeries.ShowLowPointIndicator = true;
    radSparkline1.Series = lineSeries;
}

````
````VB.NET
Private table As DataTable
Public Sub AddBoundSeries()
    table = New DataTable()
    table.Columns.Add("Value", GetType(Double))
    table.Rows.Add(1)
    table.Rows.Add(-3)
    table.Rows.Add(5)
    table.Rows.Add(1)
    table.Rows.Add(6)
    table.Rows.Add(-1)
    table.Rows.Add(3)
    table.Rows.Add(-5)
    table.Rows.Add(1)
    table.Rows.Add(6)
    Dim lineSeries As New SparkLineSeries()
    lineSeries.ValueMember = "Value"
    lineSeries.DataSource = table
    lineSeries.ShowMarkers = True
    lineSeries.ShowHighPointIndicator = True
    lineSeries.ShowLowPointIndicator = True
    radSparkline1.Series = lineSeries
End Sub

````
 

{{endregion}} 

The bellow image show the result from the above code.

 ![](images/sparkline-data-binding001.png)

 