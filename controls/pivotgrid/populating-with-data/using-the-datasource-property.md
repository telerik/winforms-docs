---
title: Using the DataSource Property
page_title: Using the DataSource property - RadPivotGrid
description: Using the DataSource property
slug: winforms/pivotgrid/populating-with-data/using-the-datasource-property
tags: using,the,datasource,property
published: True
position: 1
previous_url: pivotgrid-populating-with-data-using-the-datasource-property
---

# Using the DataSource Property

Similarly to other WinForms data controls, **RadPivotGrid** can be populated with data by setting its **DataSource** and **DataMember** properties. However, you also need to add the appropriate descriptions in order to define the structure of the data that is going to be displayed. More information about the different types of descriptions can be found in the [Using LocalDataSourceProvider article]({%slug winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider%})

#### Setting DataSource and DataMember

<snippet id='pivotgrid-pivotgridusingthedatasourceproperty-fillwithdata-cs' />
<snippet id='pivotgrid-pivotgridusingthedatasourceproperty-fillwithdata-vb' />



>note When you set the DataSource and DataMember properties, RadPivotGrid will automatically prepare a **LocalDataSourceProvider** and use it internally.
>

>caption Figure 1: RadPivot Data Binding

![WinForms RadPivotGrid RadPivot Data Binding](images/pivotgrid-populating-with-datausing-the-datasource-property.png)

# Localizing the Data Provider

The local data source provider is built dynamically while binding **RadPivotGrid** through its **DataSource** property. The data provider can be [localized](https://docs.telerik.com/devtools/winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider#the-culture-property) by setting its **Culture** property. Since the provider is created on the go, a suitable place to do this job is the handler of the RadPivotGrid.**UpdatedCompleted** event.

#### Setting Culture

<snippet id='pivotgrid-pivotgridusingthedatasourceproperty-localizingdataprovider-cs' />
<snippet id='pivotgrid-pivotgridusingthedatasourceproperty-localizingdataprovider-vb' />



# See Also

* [Smart Tag]({%slug winforms/pivotgrid/design-time/property-builder%})
* [Design Time Data Binding]({%slug winforms/pivotgrid/populating-with-data/design-time-data-binding%})
* [Using the LocalSourceDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider%})
 
