---
title: Data Binding RadChart
page_title: Data Binding RadChart | UI for WinForms Documentation
description: Data Binding RadChart
slug: winforms/chart-(obsolete)/building-radcharts/data-binding-radchart
tags: data,binding,radchart
published: True
position: 4
---

# Data Binding RadChart



## 

Many business applications rely on database data, for example MS SQL, Oracle, MySQL, Access ODBC as well as XML data and business objects in multiple-tier scenarios.  RadChart allows automatic binding to all of these using either standard Microsoft supplied data source controls SqlDataSource, AccessDataSource, XmlDataSource and ObjectDataSource or any [DataSourceControl](http://msdn2.microsoft.com/en-us/library/system.web.ui.datasourcecontrol.aspx) implementation. The end result is shown in the chart immediately at design-time.

You can also bind __RadChart__ to a data source that implements one of the following interfaces: 

* [IEnumerable](http://msdn2.microsoft.com/en-us/library/system.collections.ienumerable.aspx):  Supports simple iteration of a collection. See the MSDN article for more on [IEnumerable](http://msdn2.microsoft.com/en-us/library/system.collections.ienumerable.aspx). 


* [ICollection](http://msdn2.microsoft.com/en-us/library/system.collections.ienumerable.aspx): Extends [IEnumerable](http://msdn2.microsoft.com/en-us/library/system.collections.ienumerable.aspx) and supports size, enumerator, and synchronization methods for collections. 


* [IList](http://msdn2.microsoft.com/en-us/library/system.collections.ilist(VS.71).aspx): Extends [ICollection](http://msdn2.microsoft.com/en-us/library/system.collections.icollection.aspx) and is the base class for lists. 


* [IBindingList](http://msdn2.microsoft.com/en-us/library/system.componentmodel.ibindinglist.aspx): Extends IList an supports binding to a data source.  


* [IListSource](http://msdn2.microsoft.com/en-us/library/system.componentmodel.ilistsource.aspx): Provides functionality to an object to return a list that can be bound to a data source.



Some of the implementations of these interfaces include: 

* [Array](http://msdn2.microsoft.com/en-us/library/system.array(VS.71).aspx): See [Data Binding RadChart to an Array]({%slug winforms/chart-(obsolete)/building-radcharts/data-binding-radchart-to-an-array%}) for an example. 


* [ArrayList](http://msdn2.microsoft.com/en-us/library/system.collections.arraylist(VS.71).aspx). 


* [CollectionBase](http://msdn2.microsoft.com/en-us/library/system.collections.collectionbase(VS.71).aspx) Objects. 


* [DataView](http://msdn2.microsoft.com/en-us/library/system.data.dataview(VS.71).aspx), [DataTable](http://msdn2.microsoft.com/en-us/library/system.data.datatable.aspx), [DataSet](http://msdn2.microsoft.com/en-us/library/system.data.dataset.aspx): See [Data Bindng to a Database Object]({%slug winforms/chart-(obsolete)/building-radcharts/data-binding-radchart-to-a-database-object%}), [Data binding RadChart to an ObjectDatasource]({%slug winforms/chart-(obsolete)/building-radcharts/data-binding-radchart-to-an-objectdatasource%}), __DataBinding to an XML file__ examples. 


* [Generic List class](http://msdn2.microsoft.com/en-us/library/6sh2ey19.aspx): See [Data Binding RadChart to a Generic List]({%slug winforms/chart-(obsolete)/building-radcharts/data-binding-radchart-to-a-generic-list%}) for an example of binding to a generic list.



You can also __bind to XML data__ through an [XMLDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.xmldatasource.aspx) or directly to an XML file.



Once you have the data source defined you can use the RadChart Wizard, Property Editor or code for selecting which data columns will be used to populate the chart. The key properties for binding to a data source are: DataRelatedPropertiesSeriesDataRelatedPropertiesAxisDataRelatedPropertiesChart
