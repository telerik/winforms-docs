---
title: Data Binding RadChart to ObjectDataSource at Design-Time
page_title: Data Binding RadChart to ObjectDataSource at Design-Time | UI for WinForms Documentation
description: Data Binding RadChart to ObjectDataSource at Design-Time
slug: winforms/chart/building-radcharts/data-binding-radchart-to-objectdatasource-at-design-time
tags: data,binding,radchart,to,objectdatasource,at,design-time
published: True
position: 13
---

# Data Binding RadChart to ObjectDataSource at Design-Time



## 

Use the Data Source Configuration Wizard to bind [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx)  at design time:  

1. Click the RadChart [Smart Tag]({%slug winforms/chart/understanding-radchart-ui/radchart-smarttag-menu%}) *Choose Data Source* | *< New Data Source >*. 


	>caption 

	![chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time 001](images/chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time001.png)

1. From the "Choose a data source type" page of the wizard select "Object" and click "OK". 


	>caption 

	![chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time 002](images/chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time002.png)

1. From the "Choose a Business Object" page of the wizard, select your business object from the drop down list.  Click Next. 


	>caption 

	![chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time 003](images/chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time003.png)

1. On the "Define data methods" page choose the select method from the drop down list.  Click Finish.  A new [ObjectDataSource](http://msdn2.microsoft.com/en-us/library/system.web.ui.webcontrols.objectdatasource.aspx) component will be visible on the page and the RadChart __DataSource__ property will point to it. 

	![chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time 004](images/chart-building-radcharts-data-binding-radchart-data-binding-radchart-to-objectdatasource-at-design-time004.png)
