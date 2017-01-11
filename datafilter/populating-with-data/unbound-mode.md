---
title: Unbound Mode
page_title: Unbound Mode | RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields. 
slug: winforms/datafilter/populating-with-data/unbound-mode
tags: data, filter
published: True
position: 0
---

# Unbound Mode

This article demonstrates how to populate **RadDataFilter** with descriptor items and add the desired filter conditions to build an expression.

# Design Time
 
You can add/remove/modify **DataFilterDescriptorItems** by the *RadItem Collection Editor* which can be shown either via the **Smart Tag** or by the **Descriptors** property in the *Properties* section in Visual Studio. Then, you can add a *Group* or an *Expression* for composing the desired filters by the *RadDataFilter Design Time Editor*. Additional information is available in the [Design Time]({%slug winforms/datafilter/design-time%}) help article.

# Run Time

**RadDataFilter** supports adding descriptor items manually at run time. The following example demonstrates how to add two different descriptor items to the RadDataFilter.**Desciriptors** collection and apply an expression. 

#### Adding descriptor items programmatically and applying an expression

{{source=..\SamplesCS\DataFilter\DataFilterGettingStarted.cs region=UnboundMode}} 
{{source=..\SamplesVB\DataFilter\DataFilterGettingStarted.vb region=UnboundMode}}
````C#
DataFilterDescriptorItem nameDescriptorItem = new DataFilterDescriptorItem();
nameDescriptorItem.DescriptorName = "ProductName";
nameDescriptorItem.DescriptorType = typeof(string);
this.radDataFilter1.Desciriptors.Add(nameDescriptorItem);
DataFilterDescriptorItem priceDescriptorItem = new DataFilterDescriptorItem();
priceDescriptorItem.DescriptorName = "UnitPrice";
priceDescriptorItem.DescriptorType = typeof(decimal);
this.radDataFilter1.Desciriptors.Add(priceDescriptorItem);
this.radDataFilter1.Expression = "([ProductName] LIKE '%ch%' OR [UnitPrice] > '15')";

````
````VB.NET
Dim nameDescriptorItem As New DataFilterDescriptorItem()
nameDescriptorItem.DescriptorName = "ProductName"
nameDescriptorItem.DescriptorType = GetType(String)
Me.RadDataFilter1.Desciriptors.Add(nameDescriptorItem)
Dim priceDescriptorItem As New DataFilterDescriptorItem()
priceDescriptorItem.DescriptorName = "UnitPrice"
priceDescriptorItem.DescriptorType = GetType(Decimal)
Me.RadDataFilter1.Desciriptors.Add(priceDescriptorItem)
Me.RadDataFilter1.Expression = "([ProductName] LIKE '%ch%' OR [UnitPrice] > '15')"

```` 

{{endregion}}


![datafilter-unbound-mode 001](images/datafilter-unbound-mode001.png)

# See Also

* [Data Binding]({%slug winforms/datafilter/populating-with-data/data-binding%})	