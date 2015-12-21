---
title: Using the AdomdDataProvider
page_title: Using the AdomdDataProvider | UI for WinForms Documentation
description: Using the AdomdDataProvider
slug: winforms/pivotgrid/populating-with-data/using-the-adomddataprovider
tags: using,the,adomddataprovider
published: True
position: 3
---

# Using the AdomdDataProvider

In this article we will show how to use AdomdDataProvider and use data from OLAP Cube for RadPivotGrid.

## ADOMD.NET

ADOMD.NET is a Microsoft .NET Framework data provider that is designed to communicate with Microsoft SQL Server Analysis Services. ADOMD.NET uses the XML for Analysis protocol to communicate with analytical data sources by using either TCP/IP or HTTP connections to transmit and receive SOAP requests and responses that are compliant with the XML for Analysis specification.

>caution With the current release RadPivotGrid supports only __Microsoft.AnalysisServices.AdomdClient version 10.0__ . You can download it from [here](http://www.microsoft.com/en-us/download/details.aspx?id=30440). After installing it, you will find the Microsoft.AnalysisServices.AdomdClient.dll under *C:\Program Files (x86)\Microsoft.NET\ADOMD.NET\100* .
>

## AdomdDataProvider

RadPivotGrid can use AdomdDataProvider to get data from OLAP Cube.  To be able to work with AdomdDataProvider, you need to have an Adomd client installed on your machine. This client is part of the [Microsoft® SQL Server® Feature Pack](http://www.microsoft.com/en-us/download/details.aspx?id=30440).

AdomdDataProvider has several important properties that have to be defined in order to connect to OLAP Cube: 

* __ConnectionSettings__ - this property is of type AdomdConnectionSettings and it exposes several properties that are mandatory when connecting to the OLAP Cube:

  * __Cube__ - string property defining the exact name of the Cube.

  * __Database__ - string property defining the exact name of the Database.

  * __ConnectionString__ - string property used to open a database. It is in OLE DB connection string format.

>note The OLE DB connection string format has several keys and values connected with equal sign. The different key-value pairs are separated by semicolon characters. Some of the important properties are Provider, Data Source, Integrated Security, etc. Here are some examples for different OLE DB connection strings:
>
* "Provider=MSDAORA; Data Source=ORACLE8i7;Persist Security Info=False;Integrated Security=Yes"
* "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=c:\bin\LocalAccess40.mdb"
* "Provider=SQLOLEDB;Data Source=(local);Integrated Security=SSPI">

* __AggregatesLevel__ - set the position where groups for the aggregates should be placed.

* __AggregatesPosition__ - defines whether the position of the Aggregates will be Columns or Rows.

## Defining AdomdDataProvider and connecting to OLAP Cube

To show data in RadPivotGrid and RadPivotFieldList we have to connect to OLAP Cube. For this purpose we will set the ConnectionSettings property of the AdomdDataProvider.

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingAdomdDataProvider.cs region=DefininingAdomdDataProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingAdomdDataProvider.vb region=DefininingAdomdDataProvider}} 

````C#
AdomdDataProvider provider = new AdomdDataProvider();
AdomdConnectionSettings settings = new AdomdConnectionSettings();
settings.Cube = "Adventure Works";
settings.Database = "Adventure Works DW 2008R2";
settings.ConnectionString = "Data Source=http://demos.telerik.com/olap/msmdpump.dll;Catalog=Adventure Works DW 2008R2";
provider.ConnectionSettings = settings;

````
````VB.NET
Dim provider As New AdomdDataProvider()
Dim settings As New AdomdConnectionSettings()
settings.Cube = "Adventure Works"
settings.Database = "Adventure Works DW 2008R2"
settings.ConnectionString = "Data Source=http://demos.telerik.com/olap/msmdpump.dll;Catalog=Adventure Works DW 2008R2"
provider.ConnectionSettings = settings

````

{{endregion}}

## Defining Group Descriptions

>note When initializing the AdomdDataProvider in the code behind it is a good idea to wrap all modifications in BeginInit() - EndInit() section. This will cause only one refresh of the DataProvider and it will be when the EndInit() is reached. If you are applying only modifications (more than one) on already initialized AdomdDataProvider you should use the DeferRefresh() method which will cause delay of the Refresh and this way all your changes will be applied simultaneously.
>

The AdomdDataProvider is using three collections that are reflecting the visual representation of RadPivotGrid and RadPivotFieldList:

* __RowGroupDescriptions__ - the data added to this collection will show as Row Headers in RadPivotGrid. There is only one type of description that can be added to this collection - AdomdGroupDescription.

* __ColumnGroupDescriptions__ - the data added to this collection will show as Column Headers in RadPivotGrid. There is only one type of description that can be added to this collection - AdomdGroupDescription.

* __AggregateDescriptions__ - the data added to this description will be aggregated and included in RadPivotGrid as Cells. There is only one type of description that can be added to this collection - AdomdAggregateDescription.

The AdomdGroupDescription is used to define the data that will show as Rows and Columns in RadPivotGrid. When defining AdomdGroupDescription you must set the MemberName property. The MemberName property is of type string and you should define it based on your Cube.

The AdomdAggregateDescription is used to define data that has to be aggregated and that will show as Cells in RadPivotGrid. The data that should be aggregated is defined with the MemberName property.

>note The MemberName property must have the following syntax:
* For AdomdAggregateDescription: "[Measures].[MEASURE_NAME]".
* For AdomdGroupDescription there are two ways (based on the data that will be used): "[DIMENSION].[HIERARCHY]" or "[SET_NAME]".<br>Note that the brackets are mandatory.
>

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingAdomdDataProvider.cs region=DefiningDescriptors}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingAdomdDataProvider.vb region=DefiningDescriptors}} 

````C#
provider.BeginInit();
provider.RowGroupDescriptions.Add(new AdomdGroupDescription() { MemberName = "[Date].[Calendar Year]" });
provider.RowGroupDescriptions.Add(new AdomdGroupDescription() { MemberName = "[Date].[Calendar Quarter of Year]" });
provider.ColumnGroupDescriptions.Add(new AdomdGroupDescription() { MemberName = "[Promotion].[Promotion Category]" });
provider.ColumnGroupDescriptions.Add(new AdomdGroupDescription() { MemberName = "[Product].[Category]" });
provider.AggregateDescriptions.Add(new AdomdAggregateDescription() { MemberName = "[Measures].[Internet Order Quantity]" });
provider.EndInit();
this.radPivotGrid1.PivotGridElement.DataProvider = provider;

````
````VB.NET
provider.BeginInit()
provider.RowGroupDescriptions.Add(New AdomdGroupDescription() With { _
 .MemberName = "[Date].[Calendar Year]" _
})
provider.RowGroupDescriptions.Add(New AdomdGroupDescription() With { _
 .MemberName = "[Date].[Calendar Quarter of Year]" _
})
provider.ColumnGroupDescriptions.Add(New AdomdGroupDescription() With { _
 .MemberName = "[Promotion].[Promotion Category]" _
})
provider.ColumnGroupDescriptions.Add(New AdomdGroupDescription() With { _
 .MemberName = "[Product].[Category]" _
})
provider.AggregateDescriptions.Add(New AdomdAggregateDescription() With { _
 .MemberName = "[Measures].[Internet Order Quantity]" _
})
provider.EndInit()
Me.RadPivotGrid1.PivotGridElement.DataProvider = provider

````

{{endregion}}