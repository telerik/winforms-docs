---
title: Using the QueryableDataProvider
page_title: Using the QueryableDataProvider | UI for WinForms Documentation
description: QueryableDataProvider provides an easy way to use data from database with RadPivotGrid. With QueryableDataProvider all calculations and aggregations are executed on the database server. This way the whole collection of items is saved only on the server and not in the memory of the application.
slug: winforms/pivotgrid/populating-with-data/using-the-queryabledataprovider
tags: using,the,queryabledataprovider
published: True
position: 5
---

# Using the QueryableDataProvider

__QueryableDataProvider__ is one of the data source providers that can be used with __RadPivotGrid__ and __RadPivotFieldList__. __QueryableDataProvider__ provides an easy way to use data from database with __RadPivotGrid__. In fact any collection that implements [IQueryable](https://msdn.microsoft.com/en-us/library/system.linq.iqueryable(v=vs.100).aspx) interface can be used as a source of __QueryableDataProvider__.

The main idea for creating this provider is to be used when the data source for __RadPivotGrid__ is in database. With __QueryableDataProvider__ all calculations and aggregations are executed on the database server. This way the whole collection of items is saved only on the server and not in the memory of the application. This makes __QueryableDataProvider__ the preferred provider when you have a huge database with several thousands or millions of records. As the aggregation of data and the calculations are performed on the server, there are some limitations for the functions that you can use.

## Defining QueryableDataProvider

You can create an object of type __QueryableDataProvider__ and assign it to __RadPivotGrid__. The __QueryableDataProvider__ has a __Source__ property and you would need to set it in order to display any data. The following code snippet demonstrates this:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.cs region=InitializeProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.vb region=InitializeProvider}} 

````C#
this.queryableDataProvider = new QueryableDataProvider() { Source = dataset.Orders.AsQueryable() };

````
````VB.NET
Me.queryableDataProvider = New QueryableDataProvider() With {
     .Source = dataset.Orders.AsQueryable()
}

````

{{endregion}} 

>note The Source can be any collection that implements the IQuearyable interface.
>

## Adding Group Descriptions Collections

>caution When initializing the __QueryableDataProvider__ it is a good idea to wrap all modifications in BeginInit - EndInit block. This will cause only one refresh of the __DataProvider__ and it will be when the EndInit is called. If you are applying only modifications (more than one) on already initialized __QueryableDataProvider__ you should use the __DeferRefresh__ method which will cause delay of the __Refresh__ and this way all your changes will be applied simultaneously.
>

The __QueryableDataProvider__ is using four different collections for the data that it holds:

* __RowGroupDescription__: The data added to this description will be shown as rows headers in __RadPivotGrid__ and __RadPivotFieldList__. The properties can be defined as __QueryablePropertyGroupDescription__, __QueryableDateTimeGroupDescription__, __QueryableDoubleGroupDescription__  or you can create custom implementation of the __QueryableGroupDescription__ class.

Here's how to define the __RowGroupDescriptions__ in your application:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.cs region=RowGroupDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.vb region=RowGroupDescriptions}} 

````C#
QueryablePropertyGroupDescription shipCountryGroupDescription = new QueryablePropertyGroupDescription();
shipCountryGroupDescription.PropertyName = "ShipCountry";

QueryableDoubleGroupDescription freightCountryGroupDescription = new QueryableDoubleGroupDescription();
freightCountryGroupDescription.PropertyName = "Freight"; ;

QueryableDateTimeGroupDescription orderDateCountryGroupDescription = new QueryableDateTimeGroupDescription();
orderDateCountryGroupDescription.PropertyName = "OrderDate";

using (queryableDataProvider.DeferRefresh())
{
    queryableDataProvider.RowGroupDescriptions.Add(shipCountryGroupDescription);
    queryableDataProvider.RowGroupDescriptions.Add(freightCountryGroupDescription);
    queryableDataProvider.RowGroupDescriptions.Add(orderDateCountryGroupDescription);
}

````
````VB.NET
Dim shipCountryGroupDescription As New QueryablePropertyGroupDescription()
shipCountryGroupDescription.PropertyName = "ShipCountry"

Dim freightCountryGroupDescription As New QueryableDoubleGroupDescription()
freightCountryGroupDescription.PropertyName = "Freight"

Dim orderDateCountryGroupDescription As New QueryableDateTimeGroupDescription()
orderDateCountryGroupDescription.PropertyName = "OrderDate"

Using queryableDataProvider.DeferRefresh()
    queryableDataProvider.RowGroupDescriptions.Add(shipCountryGroupDescription)
    queryableDataProvider.RowGroupDescriptions.Add(freightCountryGroupDescription)
    queryableDataProvider.RowGroupDescriptions.Add(orderDateCountryGroupDescription)
End Using

````

{{endregion}}

* __ColumnGroupDescription__: The data added to this description will be shown as columns headers in __RadPivotGrid__ and __RadPivotFieldList__. The properties can be defined as __QueryablePropertyGroupDescription__, __QueryableDateTimeGroupDescription__, __QueryableDoubleGroupDescription__ or you can create custom implementation of the __QueryableGroupDescription__ class.

Here's how to define the __ColumnGroupDescriptions__ in your application:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.cs region=ColumnGroupDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.vb region=ColumnGroupDescriptions}} 

````C#
this.queryableDataProvider.ColumnGroupDescriptions.Add(new QueryableDoubleGroupDescription
{
    PropertyName = "Freight"
});

````
````VB.NET
Me.queryableDataProvider.ColumnGroupDescriptions.Add(New QueryableDoubleGroupDescription() With {
     .PropertyName = "Freight"
})

````

{{endregion}}

* __AggregateDescriptions__: The data added to this description will be aggregated and included in __RadPivotGrid__ as cells. The properties can be defined as __QueryablePropertyAggregateDescription__ or you can create custom implementation of the __QueryableAggregateDescription__ class.

Here's how to define the __AggregateDescriptions__ in your application:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.cs region=AggregateDescriptions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.vb region=AggregateDescriptions}} 

````C#
QueryablePropertyAggregateDescription freightAggregateDescription = new QueryablePropertyAggregateDescription
{
    PropertyName = "Freight",
    StringFormat = "C",
    AggregateFunction = QueryableAggregateFunction.Max
};

QueryablePropertyAggregateDescription shipViaAggregateDescription = new QueryablePropertyAggregateDescription
{
    PropertyName = "ShipVia"
};

using (queryableDataProvider.DeferRefresh())
{
    queryableDataProvider.AggregateDescriptions.Add(freightAggregateDescription);
    queryableDataProvider.AggregateDescriptions.Add(shipViaAggregateDescription);
}

````
````VB.NET
Dim freightAggregateDescription As New QueryablePropertyAggregateDescription() With {
     .PropertyName = "Freight",
     .StringFormat = "C",
     .AggregateFunction = QueryableAggregateFunction.Max
}

Dim shipViaAggregateDescription As New QueryablePropertyAggregateDescription() With {
     .PropertyName = "ShipVia"
}

Using queryableDataProvider.DeferRefresh()
    queryableDataProvider.AggregateDescriptions.Add(freightAggregateDescription)
    queryableDataProvider.AggregateDescriptions.Add(shipViaAggregateDescription)
End Using

````

{{endregion}} 

* __FilterDescriptions__: The data added to this description will be filtered and after that included in __RadPivotGrid__. The properties can be defined as __QueryablePropertyFilterDescription__ or you can create custom implementation of __QueryableFilterDescription__ class.

Here's how to define the __FilterDescriptions__ in your application:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.cs region=FilterDescritions}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.vb region=FilterDescritions}} 

````C#
QueryableIntervalCondition intervalCondition = new QueryableIntervalCondition();
intervalCondition.From = 10;
intervalCondition.To = 200;

QueryablePropertyFilterDescription freightFilterDescription = new QueryablePropertyFilterDescription();
freightFilterDescription.PropertyName = "Freight";
freightFilterDescription.Condition = intervalCondition;
this.queryableDataProvider.FilterDescriptions.Add(freightFilterDescription);

````
````VB.NET
Dim intervalCondition As New QueryableIntervalCondition()
intervalCondition.From = 10
intervalCondition.[To] = 200

Dim freightFilterDescription As New QueryablePropertyFilterDescription()
freightFilterDescription.PropertyName = "Freight"
freightFilterDescription.Condition = intervalCondition
Me.queryableDataProvider.FilterDescriptions.Add(freightFilterDescription)

````

{{endregion}} 


## Adding Property Descriptors

All property description classes are inheriting the abstract class DescriptionBase. That's why all of them have the following properties:

* __PropertyName__: This is the most important property. It must be set to the property of the data that will be represented with this property description.

* __CustomName__ : Sets the name that will be shown instead of the property name in __RadPivotGrid__ and __RadPivotFieldList__.

Here is a list of the property descriptions that you can use:

* __PropertyGroupDescription__: Available for __RowGroupDescriptions__ and __ColumnGroupDescriptions__.

* __DoubleGroupDescription__: Available for __RowGroupDescriptions__ and __ColumnGroupDescriptions__. Used when the data is of type *Double*. One of the important properties is __Step__ - it is used to define the size of the generated groups.

* __DateTimeGroupDescription__: Available for __RowGroupDescriptions__ and __ColumnGroupDescriptions__. Used when the data is of type *DateTime*. Very useful is the Step property where you can set if the grouping should be on *Day*, *Month* or *Year*.

* __PropertyFilterDescription__: Available for __FilterDescriptions__ only. The important property here is Condition as the filtering is done based on it. You can use four conditions: *ComparisonCondition*, *IntervalCondition*, *SetCondition*, *TextCondition*.

* __PropertyAggregateDescription__: Available for __AggregateDescriptions__ only. You have to define the aggregate function that will be used. You can choose between various predefined functions like *Average*, *Sum*, *Min*, *Max* etc.

## Applying the DataProvider to RadPivotGrid

To apply the already defined data provider, use the following property:

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.cs region=ApplyingDataProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheQueryableDataProvider.vb region=ApplyingDataProvider}} 

````C#
this.radPivotGrid1.PivotGridElement.DataProvider = queryableDataProvider;

````
````VB.NET
Me.RadPivotGrid1.PivotGridElement.DataProvider = queryableDataProvider

````

{{endregion}} 
