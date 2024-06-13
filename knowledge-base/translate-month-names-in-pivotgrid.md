---
title: How to Translate the Month Names in RadPivotGrid
description: Learn how to translate the month names in the WinForms PivotGrid.
type: how-to
page_title: How to Translate the Month Names in RadPivotGrid
slug: translate-month-names-in-pivotgrid
position: 0
tags: pivotgrid, translate, month, localize, culture
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.3.914|RadPivotGrid for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

When a group description is added in RadPivotGrid for a DateTime field, the month names are displayed in English by default:

![translate-month-names-in-pivotgrid001](images/translate-month-names-in-pivotgrid001.png)

A common requirement is to keep the month names in the same language as the culture applied to the application.
 
## Solution 

The [LocalDataSourceProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider%}) offers **Culture** property which allows you to translate the month names for the DateTime group descriptions as well:

````C#
dataProvider.Culture = new System.Globalization.CultureInfo("it-IT");

````
````VB.NET
dataProvider.Culture = New System.Globalization.CultureInfo("it-IT")

````

![translate-month-names-in-pivotgrid002](images/translate-month-names-in-pivotgrid002.png)
  

# See Also

* [Localization]({%slug winforms/pivotgrid/localization/localization%}) 





    
   
  
    
 
