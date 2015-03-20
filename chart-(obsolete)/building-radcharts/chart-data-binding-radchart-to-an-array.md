---
title: Data Binding RadChart to an Array
page_title: Data Binding RadChart to an Array
description: Data Binding RadChart to an Array
slug: chart-building-radcharts-data-binding-radchart-to-an-array
tags: data,binding,radchart,to,an,array
published: True
position: 5
---

# Data Binding RadChart to an Array



## 

To bind a __RadChart__ to an 
          [Array](http://msdn2.microsoft.com/en-us/library/system.array(VS.71).aspx)
          object, assign the __RadChart____DataSource__ property to the array, then call the
          __RadChart DataBind()__ method. The example below demonstrates data binding to an array of integers.



![chart-building-radcharts-data-binding-radchart-to-an-array 001](images/chart-building-radcharts-data-binding-radchart-to-an-array001.png)

#### __[C#] Binding to array__

{{region bindToArray}}
	            int[] intArray = new int[4] { 10, 12, 13, 5 };
	            radChart1.DataSource = intArray;
	{{endregion}}



#### __[VB.NET] Binding to array__

{{region bindToArray}}
	        RadChart1.DataSource = New Double() {1.4, 1.9, 3.6, 3.6, 4.1}
	        RadChart1.ChartTitle.TextBlock.Text = "Units Purchased (Thousands)"
	{{endregion}}


