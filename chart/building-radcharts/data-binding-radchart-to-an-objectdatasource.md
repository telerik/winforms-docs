---
title: Data Binding RadChart to an ObjectDataSource
page_title: Data Binding RadChart to an ObjectDataSource | UI for WinForms Documentation
description: Data Binding RadChart to an ObjectDataSource
slug: winforms/chart/building-radcharts/data-binding-radchart-to-an-objectdatasource
tags: data,binding,radchart,to,an,objectdatasource
published: True
position: 10
previous_url: /help/winforms/chart-building-radcharts-data-binding-radchart-to-an-objectdatasource.html
---

# Data Binding RadChart to an ObjectDataSource



## 

__RadChart__ can be bound to [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) in multi-tier application scenarios.  See the MSDN article [ObjectDataSource Overview](http://msdn2.microsoft.com/en-us/library/9a4kyhcx.aspx) for more information on where and why you would use an [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) control.

An [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) represents a business object and provides data to data-bound controls in multi-tier applications. The application doesn't need to know how data is obtained as long as you connect the [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) to an object that has [DataObjectAttribute](http://msdn2.microsoft.com/en-us/library/system.componentmodel.dataobjectattribute.aspx) and  [DataObjectMethodAttribute](http://msdn2.microsoft.com/en-us/library/system.componentmodel.dataobjectmethodattribute.aspx) attributes defined.  See the following examples for how to create the business object and how to bind RadChart to [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx):

* [Creating an object that can be consumed by ObjectDataSource]({%slug winforms/chart/building-radcharts/creating-an-object-that-can-be-consumed-by-objectdatasource%}). 
		  

* [Binding RadChart to ObjectDataSource at design-time]({%slug winforms/chart/building-radcharts/data-binding-radchart-to-objectdatasource-at-design-time%}). 
		  

* [Binding RadChart to ObjectDataSource at programmatically at run-time]({%slug winforms/chart/building-radcharts/binding-to-objectdatasource-at-run-time%}). 
		  
