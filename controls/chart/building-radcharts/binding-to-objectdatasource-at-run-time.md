---
title: Binding to ObjectDataSource at Run-Time
page_title: Binding to ObjectDataSource at Run-Time | UI for WinForms Documentation
description: Binding to ObjectDataSource at Run-Time
slug: winforms/chart/building-radcharts/binding-to-objectdatasource-at-run-time
tags: binding,to,objectdatasource,at,run-time
published: True
position: 12
previous_url: chart-building-radcharts-data-binding-radchart-binding-to-objectdatasource-at-runtime
---

# Binding to ObjectDataSource at Run-Time



## 

Once a business object with appropriate attributes has been created you can bind to it in code at run-time. The steps are:

* Set the [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) [TypeName](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.typename.aspx) property to name of the object class, in this example "RadChartBinding.ProductsBO" (Be sure to qualify the class name with the namespace).  
					

* Set the [SelectMethod](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.selectmethod.aspx) to the method marked by the [DataObjectMethodAttribute](http://msdn2.microsoft.com/en-us/library/system.componentmodel.dataobjectmethodattribute.aspx).
					

The code below demonstrates binding to an [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) that consumes an example object defined in the topic "[Creating an Object that can be consumed by ObjectDataSource]({%slug winforms/chart/building-radcharts/creating-an-object-that-can-be-consumed-by-objectdatasource%})".
				 

{{source=..\SamplesCS\Chart\BindingToObjectDataSourceAtRunTime.cs region=BindingToObjectDataSource}} 
{{source=..\SamplesVB\Chart\BindingToObjectDataSourceAtRunTime.vb region=BindingToObjectDataSource}} 

````C#
ObjectDataSource ods = new ObjectDataSource();
ods.SelectMethod = "GetProducts";
ods.TypeName = "RadChartBinding.ProductsBO";
RadChart1.DataSource = ods.Select();
RadChart1.Series[0].DataYColumn = "QuantityInStock";
RadChart1.PlotArea.XAxis.DataLabelsColumn = "Name";
RadChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Font = new System.Drawing.Font("Ariel", 8);
RadChart1.DataBind();

````
````VB.NET
Dim ods As New ObjectDataSource()
ods.SelectMethod = "GetProducts"
ods.TypeName = "RadChartBinding.ProductsBO"
RadChart1.DataSource = ods.[Select]()
RadChart1.Series(0).DataYColumn = "QuantityInStock"
RadChart1.PlotArea.XAxis.DataLabelsColumn = "Name"
RadChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Font = New System.Drawing.Font("Ariel", 8)
RadChart1.DataBind()

````

{{endregion}} 



