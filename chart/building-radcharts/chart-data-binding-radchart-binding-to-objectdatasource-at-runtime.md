---
title: Binding to ObjectDataSource at Run-Time
page_title: Binding to ObjectDataSource at Run-Time
description: Binding to ObjectDataSource at Run-Time
slug: chart-building-radcharts-data-binding-radchart-binding-to-objectdatasource-at-runtime
tags: binding,to,objectdatasource,at,run-time
published: True
position: 12
---

# Binding to ObjectDataSource at Run-Time



## 

Once a business object with appropriate attributes has been created you can bind to it in code at run-time. The steps are:

* 
						Set the [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) [TypeName](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.typename.aspx) property to name of the object class, in this example "RadChartBinding.ProductsBO" (Be sure to qualify the class name with the namespace).  
					

* 
						Set the [SelectMethod](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.selectmethod.aspx) to the method marked by the [DataObjectMethodAttribute](http://msdn2.microsoft.com/en-us/library/system.componentmodel.dataobjectmethodattribute.aspx).
					

The code below demonstrates binding to an [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) that consumes an example object defined in the topic "[Creating an Object that can be consumed by ObjectDataSource]({%slug chart-building-radcharts-data-binding-radchart-creating-an-object-that-can-be-consumed-by-objectdatasource%})".
				

#### __[C#] Binding to ObjectDataSource__

{{source=..\SamplesCS\Chart\BindingToObjectDataSourceAtRunTime.cs region=BindingToObjectDataSource}}
	            ObjectDataSource ods = new ObjectDataSource();
	            ods.SelectMethod = "GetProducts";
	            ods.TypeName = "RadChartBinding.ProductsBO";
	            RadChart1.DataSource = ods.Select();
	            RadChart1.Series[0].DataYColumn = "QuantityInStock";
	            RadChart1.PlotArea.XAxis.DataLabelsColumn = "Name";
	            RadChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Font = new System.Drawing.Font("Ariel", 8);
	
	            RadChart1.DataBind();
	{{endregion}}



#### __[VB] Binding to ObjectDataSource__

{{source=..\SamplesVB\Chart\BindingToObjectDataSourceAtRunTime.vb region=BindingToObjectDataSource}}
	        Dim ods As New ObjectDataSource()
	        ods.SelectMethod = "GetProducts"
	        ods.TypeName = "RadChartBinding.ProductsBO"
	        RadChart1.DataSource = ods.[Select]()
	        RadChart1.Series(0).DataYColumn = "QuantityInStock"
	        RadChart1.PlotArea.XAxis.DataLabelsColumn = "Name"
	        RadChart1.PlotArea.XAxis.Appearance.TextAppearance.TextProperties.Font = New System.Drawing.Font("Ariel", 8)
	
	        RadChart1.DataBind()
	        '#endRegion
	
	        ' Add any initialization after the InitializeComponent() call.
	
	    End Sub
	End Class
	
	Public Class ObjectDataSource
	    Public Property SelectMethod() As String
	        Get
	            Return m_SelectMethod
	        End Get
	        Set(value As String)
	            m_SelectMethod = value
	        End Set
	    End Property
	    Private m_SelectMethod As String
	    Public Property TypeName() As String
	        Get
	            Return m_TypeName
	        End Get
	        Set(value As String)
	            m_TypeName = value
	        End Set
	    End Property
	    Private m_TypeName As String
	
	    Public Function [Select]() As IEnumerable(Of ProductsBO)
	        Dim list As New List(Of ProductsBO)()
	        For i As Integer = 0 To 9
	            list.Add(New ProductsBO())
	        Next
	
	        Return list
	    End Function
	End Class


