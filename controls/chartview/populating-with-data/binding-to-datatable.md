---
title: Binding to DataTable
page_title: Binding to DataTable - WinForms ChartView Control
description: Learn how to bind WinForms ChartView to a DataTable.
slug: winforms/chartview-/populating-with-data/binding-to-datatable
tags: binding,to,datatable
published: True
position: 1
previous_url: chartview-databinding-binding-to-datatable
---

# Binding to DataTable

Binding to DataTable is quite easy with __RadChartView__. Once your table is created, you just need to set the needed members to the desired fields. In [this article]({%slug winforms/chartview-/populating-with-data%}) , you can find the members needed for the different series types.

Here is a sample demonstrating how to bind а [LineSeries]({%slug winforms/chartview-/series-types/line%}): 

#### Binding to DataTable

<snippet id='chartview-binding-to-datatable-binding-cs'/>
<snippet id='chartview-binding-to-datatable-binding-vb'/>



>caption Figure 1: Binding to DataTable
![WinForms RadChartView Binding to DataTable](images/chartview-databinding-binding-to-datatable001.png)

Adding, removing or modifying a record in the DataTable is automatically reflected in __RadChartView__:

>caption Figure 2: Modify Item
![WinForms RadChartView Modify Item](images/chartview-databinding-binding-to-datatable002.png)

# See Also

* [Getting Started]({%slug winforms/chartview/getting-started%})
* [Binding to BindingList]({%slug winforms/chartview-/populating-with-data/binding-to-bindinglist%})
