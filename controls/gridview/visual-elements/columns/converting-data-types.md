---
title: Converting Data Types
page_title: Converting Data Types - WinForms GridView Control
description: WinForms GridView allows converting the data stored in the database to any other format that you want to present to the user.
slug: winforms/gridview/columns/converting-data-types
tags: converting,data,types
published: True
position: 11
previous_url: gridview-columns-converting-data-types
---

# Converting Data Types

## Overview

The __GridViewDataColumn__ provides a unified way of converting incompatible value types to a type supported by the column instance. The standard [.NET Framework TypeConverter subclasses](http://msdn.microsoft.com/en-us/library/system.componentmodel.typeconverter.aspx) are used to convert values between data types.

For instance, instead of using [GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%}) to display char fields you want to use a [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%}), implement a custom Type Converter class which to determine how RadGridView recognizes this type. For more information, see. [How to: Implement a Type Converter in MSDN.](http://msdn.microsoft.com/en-us/library/ayybcxe5.aspx)

As a quick example, let’s say that we want to convert char values Y and N to ToggleState values ToggleState.On and ToggleState.Off. To do this we will need to implement the ToggelStateConverter class that converts these values:

#### ToggleState converter

<snippet id='gridview-convertingdatatypes-converttypes-cs' />
<snippet id='gridview-convertingdatatypes-converttypes-vb' />

## Applying Type Converters

There are two ways to apply converters to the RadGridView conversion layer:

__Setting the DataTypeConverter property of the column__

The first approach to apply type converters is to create the desired column and assign its DataTypeConverter property. This approach is handy when you using non-business objects (such as  DataTable) or your business objects’ properties  do not have TypeConverterAttribute applied.

#### Applying TypeConverter

<snippet id='gridview-convertingdatatypes-applyingtypeconverters-cs' />
<snippet id='gridview-convertingdatatypes-applyingtypeconverters-vb' />

__Applying System.ComponentModel.TypeConverterAttribute to the incompatible property of the business object used as a data source__

The second way to add type converters is to use the __TypeConverterAttribute__, which allows you to specify the TypeConverter for any property in your business object. When you set it as a data source for RadGridView, you create GridViewCheckBoxColumn instead of GridViewTextBoxColumn. This approach is handy when you are creating your own business objects with TypeConverter attribute applied.

#### Custom class with TypeConverter attribute

<snippet id='gridview-convertingdatatypes-classproduct-cs' />
<snippet id='gridview-convertingdatatypes-classproduct-vb' />

## Handling Null Values

The RadGridView’s conversation layer can handle null values. You can specify the default value that is committed to the source if the cell value is changed to null. GridViewDataColumn’s __DataSourceNullValue__ property can be set using the following code snippet:

#### Handling null values

<snippet id='gridview-convertingdatatypes-handlingnullvalues-cs' />
<snippet id='gridview-convertingdatatypes-handlingnullvalues-vb' />

## Using the TypeConverter when sorting.

The type converter can be used when the column is sorted as well. To enable this functionality you should set the __UseDataTypeConverterWhenSorting__ property of the column.

>caution You should consider that the column can contain null values and handle this in the custom type converter class as well. The following code snipped shows a custom float type converter that handles null values:
>

#### Handling null values when sorting

<snippet id='gridview-convertingdatatypes-float-cs' />
<snippet id='gridview-convertingdatatypes-float-vb' />

# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%})

* [Pinning and Unpinning Columns]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%})

* [How to Show DateTime Values Stored in a UNIX Format with Filtering Still Working in RadGridView]({%slug gridview-datetimecolumn-unix-format%})

