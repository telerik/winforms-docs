---
title: Serialize AdomdDataProvider
page_title: Serialize AdomdDataProvider - RadPivotGrid
description: In this article we will show you how to serialize and deserialize AdomdDataProvider and all of its settings.
slug: winforms/pivotgrid/save-and-load-layout/serialize-adomddataprovider
tags: save,and,load,layout
published: True
position: 1
---

# Serialize AdomdDataProvider

In this article we will show you how to serialize and deserialize __AdomdDataProvider__ and all of its settings. You can use this feature to save the current state of the provider and load it next time when the application is started.

## Serialize AdomdDataProvider with DataContractSerializer

We've added the DataContract attribute to all classes used by __AdomdDataProvider__. So you can easily serialize it by using DataContractSerializer. Below you will find out how to create a serializer and use it with __RadPivotGrid__.

#### Define Members

<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataprovidersettings-cs' />
<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataprovidersettings-vb' />



The next step is to implement the serializer. When serializing the provider, you have to create an instance of the __DataProviderSettings__ class and set all of the properties. After that you can serialize the instance to a file or a stream. When using __DataContractSerializer__ you have to pass a collection of *KnownTypes* to the serializer. That's why we've created a new __AdomdPivotSerializationHelper__ class which has a static member - __KnownTypes__. It consits of all types you'll need in order to serialize __AdomdDataProvider__. 

#### Data Provider Implementation

<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataproviderserializer-cs' />
<snippet id='pivotgrid-pivotgridserializecubedataprovider-dataproviderserializer-vb' />



<snippet id='pivotgrid-pivotgridserializecubedataprovider-adomdproviderserializer-cs' />
<snippet id='pivotgrid-pivotgridserializecubedataprovider-adomdproviderserializer-vb' />



So the last step is to serialize the provider and deserialize it.

#### Using the AdomdProviderSerializer

<snippet id='pivotgrid-pivotgridserializecubedataprovider-sampleusageadomd-cs' />
<snippet id='pivotgrid-pivotgridserializecubedataprovider-sampleusageadomd-vb' />



# See Also

* [Serialize LocalDataSourceProvider]({%slug winforms/pivotgrid/save-load-layout/overview%})
