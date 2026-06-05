---
title: Calculated Fields 
page_title: Calculated Fields - RadPivotGrid
description: In this article you will find out how to extend RadPivotGrid's generated report by adding Calculated Fields.
slug: winforms/pivotgrid/calculated-fields
tags: calculated,fields
published: True
position: 10
previous_url: pivotgrid-calculated-fields
---

# Calculated fields

In this article you will find out how to extend **RadPivotGrid**'s generated report by adding __Calculated Fields__.
      

## Calculated Fields Description

If your data analysis requires results that are not available using just the data source fields and **RadPivotGrid**'s built-in calculations, you can insert a calculated field that uses a custom formula to derive the results you need. A calculated field is a new data field in which the values are the result of a custom calculation formula. You can display the calculated field along with another data field or on its own. A calculated field is really a custom summary calculation, so in almost all cases, the calculated field references one or more fields in the source data.

## Calculated Fields Description

All Calculated Fields that you have added to your __LocalDataSourceProvider__ will be visible in __RadPivotFieldList__, so the user will be able to add and remove them at runtime. In order to add a calculated field to __LocalDataSourceProvider__ you have to add it to its __CalculatedFields__ collection. So first you have to create a concrete class that implements the abstract class __CalculatedField__. This requires the implementation of two methods - __CalculatedValue__ and __RequiredFields__. __CalculateValue__ is the method in which you have to define your calculation formula and create a new __AggregateValue__ that will be shown in __RadPivotGrid__. In common scenario a Calculated Field reference one or more fields in the data source. The __RequiredFields__ method should return __IEnumerable__ of the required fields. That's why we have added a new class called __RequiredField__. It's purpose is to describe a field, required for a calculated field. __RequiredField__ can be created for property from the data object or for another calculated field. Name property of __CalculatedField__ class identifies its unique name that will be shown in the UI.

The first task is to decide what the calculation formula that you want to use is. For example, you can show the commission that will be paid to all salespeople. Commission will be paid only to those who have more sold for more than $15 000.The price of the sold items is kept by the __ExtendedPrice__ property from the source. So the new class will look like this:

#### Custom Calculated Field

<snippet id='pivotgrid-pivotgridcalculatedfields-calculatedfieldclass-cs' />
<snippet id='pivotgrid-pivotgridcalculatedfields-calculatedfieldclass-vb' />



>caption Figure 1: Calculated Field in RadPivotFieldList

![WinForms RadPivotGrid Calculated Field in RadPivotFieldList](images/pivotgrid-calculated-fields001.png)

Now it is time to add a new instance of this class to the **CalculatedFields** collection of **LocalDataSourceProvider**:

#### Adding Calculated Fields

<snippet id='pivotgrid-pivotgridcalculatedfields-addcalculatedfield-cs' />
<snippet id='pivotgrid-pivotgridcalculatedfields-addcalculatedfield-vb' />



>important If you add calculated fields in code behind, you have to set the __ItemsSource__ of __LocalDataSourceProvider__ after  you have added all calculated fields or to wrap the code between (including setting the __ItemsSource__ ) __BeginInit/EndInit__ methods (or inside __using DeferRefresh() { ... }__ section ).
>

>caption Figure 2: Calculated Field in RadPivotGrid

![WinForms RadPivotGrid Calculated Field in RadPivotGrid](images/pivotgrid-calculated-fields002.png)


# See Also

* [Calculated Items]({%slug winforms/pivotgrid/calculated-items%})
* [Custom Aggregation]({%slug winforms/pivotgrid/custom-aggregation%})
