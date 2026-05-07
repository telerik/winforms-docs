---
title: Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET
page_title: Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET - RadPivotGrid
description: Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET
slug: binding-to-icustomtypeprovider
tags: icustomtypeprovider
published: True
position: 5 
---

# Bind to ICustomTypeProvider in .NET Framework 4.8 and .NET

The [ICustomTypeProvider](https://learn.microsoft.com/en-us/dotnet/api/system.reflection.icustomtypeprovider?view=net-7.0&redirectedfrom=MSDN) interface comes with .NET Framework 4.5 and is also available in .NET. As of **R3 2023** RadPivotGrid can use it in the NET48 distribution.

Implementing the ICustomTypeProvider interface allows dynamic generation of properties. This solution is applicable for cases when the schema of the data that the pivot will be working with is not known in advance. For example, it may be necessary to generate properties at runtime and show them inside the pivot control.

This tutorial demonstrates how to accomplish such a requirement:

1\. Define the Customer class

<snippet id='pivotgrid-pivotcustomtypeprovider-definecustomer-cs' />
<snippet id='pivotgrid-pivotcustomtypeprovider-definecustomer-vb' />



2\. Define the CustomTypeHelper class

<snippet id='pivotgrid-pivotcustomtypeprovider-definehelper-cs' />
<snippet id='pivotgrid-pivotcustomtypeprovider-definehelper-vb' />



3\.Last, we will setup the RadPivotGrid control:

<snippet id='pivotgrid-pivotcustomtypeprovider-usage-cs' />
<snippet id='pivotgrid-pivotcustomtypeprovider-usage-vb' />



The achieved result is illustrated below:

![WinForms RadPivotGrid RadPivot Data Binding](images/pivotgrid-populating-with-data-icustomtypeprovider.png)

# See Also

* [Using the AdomdDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-adomddataprovider%})
* [Using the QueryableDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-queryabledataprovider%})
 
