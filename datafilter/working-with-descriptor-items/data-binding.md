---
title: Data Binding
page_title: Data Binding | RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields. 
slug: winforms/datafilter/populating-with-data/data-binding
tags: data, filter
published: True
position: 1
---

# Data Binding

**RadDataFilter** will read the properties of its **DataSource** and will automatically create the corresponding descriptor items for each of them. It accepts **DataTable**, **DataSet** and **BindingSource**.

## Design Time

You can set the **DataSource** property either via the **Smart Tag** or by the *Properties* section in Visual Studio.

>caption Figure 1: DataSource property in Smart Tag

![datafilter-bound-mode 001](images/datafilter-bound-mode001.png)

After specifying the **DataSource** property, the **Descriptors** collection will be automatically populated with descriptor items considering the available fields in the source object.

>caption Figure 2: Automatically populated Descriptors collection

![datafilter-bound-mode 003](images/datafilter-bound-mode003.png)

Then, if you open the *RadDataFilter Design Time Editor*, you can select the desired items in order to build a filter expression.

>caption Figure 3: RadDataFilter Design Time Editor

![datafilter-bound-mode 002](images/datafilter-bound-mode002.png)

## Run Time

It is possible to set the **DataSource** property programmatically as well.

#### Setting DataSource at run time

{{source=..\SamplesCS\DataFilter\DataFilterGettingStarted.cs region=BoundMode}} 
{{source=..\SamplesVB\DataFilter\DataFilterGettingStarted.vb region=BoundMode}}

````C#
DataTable dt = new DataTable();
dt.Columns.Add("Id", typeof(int));
dt.Columns.Add("Name", typeof(string));
dt.Columns.Add("IsActive", typeof(bool));
this.radDataFilter1.DataSource = dt;

````
````VB.NET
Dim dt As New DataTable()
dt.Columns.Add("Id", GetType(Integer))
dt.Columns.Add("Name", GetType(String))
dt.Columns.Add("IsActive", GetType(Boolean))
Me.RadDataFilter1.DataSource = dt

```` 

{{endregion}}

After setting the **DataSource** property, the **Descriptors** collection is filled with the respective fields. Then, you can apply the desired filter either by setting the **Expression** property or by using the UI at run time.

>caption Figure 4: RadDataFilter bound at run time

![datafilter-bound-mode 004](images/datafilter-bound-mode004.png)

# See Also

* [Unbound Mode]({%slug winforms/datafilter/populating-with-data/unbound-mode%})	
* [Getting Started ]({%slug winforms/datafilter/getting-started%})