---
title: Serialize Custom Aggregates
page_title: Serialize Custom Aggregates - RadPivotGrid
description: Serialize Custom Aggregates
slug: winforms/pivotgrid/save-and-load-layout/serialize-custom-aggregates
tags: save,and,load,layout,aggregates
published: True
position: 3
---

# Serialize Serialize Custom Aggregates

**RadPivotGrid** can persist its layout together with the applied custom aggregations. In this example we will use the function defined in the [custom aggregation article]({%slug winforms/pivotgrid/custom-aggregation%}).

>important The DataContractSerializer class requires the .NET 40 version of the assemblies. The suggested approach is also valid serializing when the custom aggregations functions with the other data providers.


## Serialize LocalDataSourceProvider with DataContractSerializer

We've added the DataContract attribute to all classes used by __LocalDataSourceProvider__. So you can easily serialize it by using a DataContractSerializer. Below you will find out how to create a serializer and use it with __RadPivotGrid__.

#### Define Members

<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataprovidersettings-cs' />
<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataprovidersettings-vb' />



The next step is to implement the serializer. When serializing the provider, you have to create an instance of the __DataProviderSettings__ class and set all of the properties. After that you can serialize the instance to a file or a stream. When using __DataContractSerializer__ you have to pass a collection of *KnownTypes* to the serializer. That's why we've created a new __PivotSerializationHelper__ class which has a static member - __KnownTypes__. It consits of all types you'll need in order to serialize __LocalDataSourceProvider__. 

#### Data Provider Implementation

<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataproviderserializer-cs' />
<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataproviderserializer-vb' />



>important The custom function needs to be added the collection already containing the known types.

<snippet id='pivotgrid-pivotgridserializecustomaggregate-localdatasourceserializer-cs' />
<snippet id='pivotgrid-pivotgridserializecustomaggregate-localdatasourceserializer-vb' />



So the last step is to serialize the provider and deserialize it.

#### Using the Custom Serializer

<snippet id='pivotgrid-pivotgridserializecustomaggregate-sampleusagecustomaggregation-cs' />
<snippet id='pivotgrid-pivotgridserializecustomaggregate-sampleusagecustomaggregation-vb' />



# See Also

*  [Custom Aggregation]({%slug winforms/pivotgrid/custom-aggregation%})
