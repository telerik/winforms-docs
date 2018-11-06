---
title: Using the LocalSourceDataProvider
page_title: Using the LocalSourceDataProvider | RadPivotGrid
description: LocalDataSourceProvider is one of the data providers that can be used with RadPivotGrid and RadPivotFieldList. It provides data access to local source such as an IList of instances of user defined classes.
slug: winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider
tags: using,the,localsourcedataprovider
published: True
position: 2
previous_url: pivotgrid-populating-with-data-using-localsourcedataprovider
---

# Using the LocalSourceDataProvider

**LocalDataSourceProvider** is one of the data providers that can be used with **RadPivotGrid** and **RadPivotFieldList**. It provides data access to local source such as an IList of instances of user defined classes. In fact any collection that implements the IEnumerable interface can be used as a LocalDataSourceProvider.

## Defining LocalDataSourceProvider

You can create an object of type **LocalDataSourceProvider** and assign it to RadPivotGrid. The LocalDataSourceProvider has an **ItemSource** property and it is mandatory to set it if you want to display any data. The following code snippet demonstrates this:

#### Set ItemSource

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=InitializeProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=InitializeProvider}} 

````C#
LocalDataSourceProvider dataProvider = new LocalDataSourceProvider();
dataProvider.ItemsSource = dataset.Orders;

````
````VB.NET
Dim dataProvider As New LocalDataSourceProvider()
dataProvider.ItemsSource = dataset.Orders

````

{{endregion}} 

>note The **ItemSource** can be any collection that implements IEnumerable interface or even a DataTable.
>

## Adding Group Descriptions Collections

>note When initializing the LocalDataSourceProvider it is a good idea to wrap all modifications in **BeginInit/EndInit** section. This will refresh the data provider only once when the EndInit is called. If you are applying only modifications (more than one) on already initialized **LocalDataSourceProvider** you need use the **DeferRefresh** method which will cause delay of the Refresh and this way all changes will be applied simultaneously.
>

The **LocalDataSourceProvider** is using four different collections for the data that it holds:

* __RowGroupDescription__: The data added to this description will be shown as rows headers in RadPivotGrid and RadPivotFieldList. The properties can be defined as **PropertyGroupDescription**, **DateTimeGroupDescription**, **DoubleGroupDescription** or you can create custom implementation of **PropertyGroupDescriptionBase** class. Here's how to define the row group descriptions in your application:

#### Add Row Descriptions

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=RowGroupDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=RowGroupDescriptions}} 

````C#
dataProvider.BeginInit();
dataProvider.RowGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "OrderDate", Step = DateTimeStep.Year, GroupComparer = new GroupNameComparer() });
dataProvider.RowGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "OrderDate", Step = DateTimeStep.Quarter, GroupComparer = new GroupNameComparer() });
dataProvider.RowGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "OrderDate", Step = DateTimeStep.Month, GroupComparer = new GroupNameComparer() });
dataProvider.EndInit();

````
````VB.NET
dataProvider.BeginInit()
dataProvider.RowGroupDescriptions.Add(New DateTimeGroupDescription() With { _
 .PropertyName = "OrderDate", _
 .[Step] = DateTimeStep.Year, _
 .GroupComparer = New GroupNameComparer() _
})
dataProvider.RowGroupDescriptions.Add(New DateTimeGroupDescription() With { _
 .PropertyName = "OrderDate", _
 .[Step] = DateTimeStep.Quarter, _
 .GroupComparer = New GroupNameComparer() _
})
dataProvider.RowGroupDescriptions.Add(New DateTimeGroupDescription() With { _
 .PropertyName = "OrderDate", _
 .[Step] = DateTimeStep.Month, _
 .GroupComparer = New GroupNameComparer() _
})
dataProvider.EndInit()

````

{{endregion}}

* __ColumnGroupDescription__: The data added to this description will be shown as columns headers in RadPivotGrid and RadPivotFieldList. The properties can be defined as **PropertyGroupDescription**, **DateTimeGroupDescription**, **DoubleGroupDescription** or you can create custom implementation of **PropertyGroupDescriptionBase** class.Here's how to define the column group descriptions in your application: 

#### Add Columns Descriptions

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=ColumnGroupDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=ColumnGroupDescriptions}} 

````C#
dataProvider.ColumnGroupDescriptions.Add(new PropertyGroupDescription() { PropertyName = "EmployeeID", GroupComparer = new GrandTotalComparer() });

````
````VB.NET
dataProvider.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With { _
 .PropertyName = "EmployeeID", _
 .GroupComparer = New GrandTotalComparer() _
})

````

{{endregion}}

* __AggregateDescriptions__: The data added to this description will be aggregated and included in RadPivotGrid as cells. The properties can be defined as **PropertyAggregateDescription** or you can create custom implementation of **PropertyAggregateDescriptionBase** class. 

>note The __PropertyAggregateDescriptionBase__ defines an __IgnoreNullValues__ property determining whether the aggregate function will ignore *null* values when calculating the result. The default value of the property is __false__.
>

Here's how to define the aggregate descriptions in your application:

#### Add Aggregate Descriptions

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=AggregateDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=AggregateDescriptions}} 

````C#
dataProvider.BeginInit();
dataProvider.AggregateDescriptions.Add(new PropertyAggregateDescription() { PropertyName = "Freight", AggregateFunction = AggregateFunctions.Sum });
dataProvider.AggregateDescriptions.Add(new PropertyAggregateDescription() { PropertyName = "Freight", AggregateFunction = AggregateFunctions.Average });
dataProvider.EndInit();

````
````VB.NET
dataProvider.BeginInit()
dataProvider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
 .PropertyName = "Freight", _
 .AggregateFunction = AggregateFunctions.Sum _
})
dataProvider.AggregateDescriptions.Add(New PropertyAggregateDescription() With { _
 .PropertyName = "Freight", _
 .AggregateFunction = AggregateFunctions.Average _
})
dataProvider.EndInit()

````

{{endregion}} 

* __FilterDescriptions__: The data added to this description will be filtered and after that included in RadPivotGrid. The properties can be defined as **PropertyFilterDescription** or you can create custom implementation of **PropertyFilterDescriptionBase** class.

#### Add Filter Descriptions

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=FilterDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=FilterDescriptions}} 

````C#
dataProvider.FilterDescriptions.Add(new PropertyFilterDescription() { PropertyName = "ShipCountry", CustomName = "Country" });

````
````VB.NET
dataProvider.FilterDescriptions.Add(New PropertyFilterDescription() With { _
 .PropertyName = "ShipCountry", _
 .CustomName = "Country" _
})

````

{{endregion}}

## Adding Property Descriptors

All property description classes are inheriting the abstract class **DescriptionBase**. That's why all of them have the following properties:

* __PropertyName__: This is the most important property. It must be set to the property of the data that will be represented with this property description.

* __CustomName__: Sets the name that will be shown instead of the property name in RadPivotGrid and RadPivotFieldList.

Here is a list of the property descriptions that you can use:

* __PropertyGroupDescription__: Available for RowGroupDescriptions and ColumnGroupDescriptions.

* __DoubleGroupDescription__: Available for RowGroupDescriptions and ColumnGroupDescriptions. Used when the data is of type Double. One of the important properties is Step - it is used to define the size of the generated groups.

* __DateTimeGroupDescription__: Available for RowGroupDescriptions and ColumnGroupDescriptions. Used when the data is of type DateTime. Very useful is the Step property where you can set if the grouping should be on day, month or year.

* __PropertyFilterDescription__: Available for FilterDescriptions only. The important property here is Condition as the filtering is done based on it. You can use four conditions: ComparisonCondition, IntervalCondition, SetCondition, TextCondition.

* __PropertyAggregateDescription__: Available for AggregateDescriptions only. You have to define the AggregateFunction that will be used. You can choose between various predefined functions like Average, Sum, Min, Max etc.

## Applying the Data Provider to RadPivotGrid

To apply the already defined data provider, use the following property:

#### Set Data Provider

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=ApplyingDataProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=ApplyingDataProvider}} 

````C#
this.radPivotGrid1.DataProvider = dataProvider;

````
````VB.NET
Me.RadPivotGrid1.DataProvider = dataProvider

````

{{endregion}} 

## The Culture Property

The groups formed by the **DateTimeGroupDescription** as well as the number format of the values formed by the **DoubleGroupDescription** both depend on the current culture. For example, in some cultures weeks start on Saturday but in others they start on Monday which will result in different values when the grouping step is Week. To change the culture of the **LocalDataSourceProvider**, just set its Culture property.

#### Provider Culture

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.cs region=culture}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheLocalSourceDataProvider.vb region=culture}} 

````C#
dataProvider.Culture = new System.Globalization.CultureInfo("de-DE");

````
````VB.NET
dataProvider.Culture = New System.Globalization.CultureInfo("de-DE")

````

{{endregion}}

# See Also

* [Smart Tag]({%slug winforms/pivotgrid/design-time/property-builder%})
* [Design Time Data Binding]({%slug winforms/pivotgrid/populating-with-data/design-time-data-binding%})
* [Using the DataSource property]({%slug winforms/pivotgrid/populating-with-data/using-the-datasource-property%})
 
