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

<snippet id='sparkline-sparklinecode-bindtotable-cs' />
<snippet id='sparkline-sparklinecode-bindtotable-vb' />



The bellow image show the result from the above code.

 ![WinForms RadSparkline Data Binding DataTable](images/sparkline-data-binding001.png)

 
