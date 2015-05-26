---
title: Using the XmlaDataProvider
page_title: Using the XmlaDataProvider | UI for WinForms Documentation
description: Using the XmlaDataProvider
slug: winforms/pivotgrid/populating-with-data/using-the-xmladataprovider
tags: using,the,xmladataprovider
published: True
position: 4
---

# Using the XmlaDataProvider



In this article we will show how to set XmlaDataProvider to RadPivotGrid.

## XMLA description

Extensible Markup Language for Analysis (XMLA) is a standard that allows client applications to talk to multi-dimensional or Online Analytical Processing (OLAP) data sources. The communication of messages back and forth is done using web standards – HTTP, SOAP, and XML. The query language used is MDX, which is the most commonly used multi-dimensional expression language today. Oracle's Essbase, Microsoft's Analysis Services, and SAP's NetWeaver all support the MDX language and the XMLA spec.
        

## XmlaDataProvider Properties

RadPivotGrid provides XMLA access to OLAP data sources. You can use the XmlaDataProvider in your application to connect to your OLAP data source.
        

>note The XmlaDataProvider is only available in the .NET 4.0 version of Telerik.WinControls.PivotGrid.dll
>


XmlaDataProvider has several important properties that have to be defined: 

* __ConnectionSettings__ - this property is of type XmlaConnectionSettings. It is used to define all needed connection settings through the XmlaConnectionSettings properties:
            

* __Cube__ - string property defining the exact name of the Cube.
                  

* __Database__ - string property defining the exact name of the Database.
                  

* __ServerAddress__ - string property defining the exact address (with protocol used) of the server.
                  

* __Credentials__ - this property is of type XmlaNetworkCredential and it is used to define the authentication details for the server (if it has any kind of authentication).
                  

* __AggregatesLevel__ - set the position where groups for the aggregates should be placed.
            

* __AggregatesPosition__ - defines whether the position of the Aggregates will be Columns or Rows.
            

XmlaDataProvider uses three different collections to design the view of RadPivotGrid report and RadPivotFieldList: RowGroupDescription, ColumnGroupDescription,  and AggregateDescription. 

## Defining XmlaDataProvider and connecting to OLAP Cube

To show data in RadPivotGrid and RadPivotFieldList we have to connect to OLAP Cube. For this purpose we will set the ConnectionSettings property of the XmlaDataProvider.
        #_[C#] _

	



{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingXmlaDataProvider.cs region=DefininingXmlaDataProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingXmlaDataProvider.vb region=DefininingXmlaDataProvider}} 

````C#
            XmlaDataProvider provider = new XmlaDataProvider();
            XmlaConnectionSettings settings = new XmlaConnectionSettings();

            settings.Cube = "Adventure Works";
            settings.Database = "Adventure Works DW 2008R2";
            settings.ServerAddress = "http://demos.telerik.com/olap/msmdpump.dll";

            provider.ConnectionSettings = settings;
````
````VB.NET
        Dim provider As New XmlaDataProvider()
        Dim settings As New XmlaConnectionSettings()

        settings.Cube = "Adventure Works"
        settings.Database = "Adventure Works DW 2008R2"
        settings.ServerAddress = "http://demos.telerik.com/olap/msmdpump.dll"

        provider.ConnectionSettings = settings
        '
````

{{endregion}} 




You can set credentials if your connection requires username and password. The Credentials property of XmlaDataProvider expects object of type XmlaNetworkCredential which gives you properties for UserName, Password, SecurePassword and Domain.
        

## Defining Group Descriptions

>note When initializing the XmlaDataProvider in the code behind it is a good idea to wrap all modifications in BeginInit() - EndInit() section. This will cause only one refresh of the DataProvider and it will be when the EndInit() is reached. If you are applying only modifications (more than one) on already initialized XmlaDataProvider you should use the DeferRefresh() method which will cause delay of the Refresh and this way all your changes will be applied simultaneously.
>


The XmlaDataProvider is using three collections that are reflecting the visual representation of RadPivotGrid and RadPivotFieldList:
        

* __RowGroupDescriptions__ - the data added to this collection will show as Row Headers in RadPivotGrid. There is only one type of description that can be added to this collection - XmlaGroupDescription.
            

* __ColumnGroupDescriptions__ - the data added to this collection will show as Column Headers in RadPivotGrid. There is only one type of description that can be added to this collection - XmlaGroupDescription
            

* __AggregateDescriptions__ - the data added to this description will be aggregated and included in RadPivotGrid as Cells. There is only one type of description that can be added to this collection - XmlaAggregateDescription.
            

The XmlaGroupDescription is used to define the data that will show as Rows and Columns in RadPivotGrid. When defining XmlaGroupDescription you must set the MemberName property. The MemberName property is of type string and you should define it based on your Cube. but it should have specific syntax to access Cube's data.
        

The XmlaAggregateDescription is used to define data that has to be aggregated and that will show as Cells in RadPivotGrid. You should set the MemberName property.
        

>note The MemberName property must have the following syntax:
>
* For XmlaAggregateDescription: "[Measures].[MEASURE_NAME]".
* For XmlaGroupDescription  there are two ways (based on the data that will be used): "[DIMENSION].[HIERARCHY]" or "[SET_NAME]".>Note that the brackets are mandatory.
>


Here is how to define these decriptors:#_[C#] _

	



{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingXmlaDataProvider.cs region=DefiningDescriptors}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingXmlaDataProvider.vb region=DefiningDescriptors}} 

````C#
            provider.BeginInit();

            provider.RowGroupDescriptions.Add(new XmlaGroupDescription() { MemberName = "[Date].[Calendar Year]" });
            provider.RowGroupDescriptions.Add(new XmlaGroupDescription() { MemberName = "[Date].[Calendar Quarter of Year]" });

            provider.ColumnGroupDescriptions.Add(new XmlaGroupDescription() { MemberName = "[Promotion].[Promotion Category]" });
            provider.ColumnGroupDescriptions.Add(new XmlaGroupDescription() { MemberName = "[Product].[Category]" });

            provider.AggregateDescriptions.Add(new XmlaAggregateDescription() { MemberName = "[Measures].[Internet Order Quantity]" });

            provider.EndInit();

            this.radPivotGrid1.PivotGridElement.DataProvider = provider;
````
````VB.NET
        provider.BeginInit()

        provider.RowGroupDescriptions.Add(New XmlaGroupDescription() With { _
         .MemberName = "[Date].[Calendar Year]" _
        })
        provider.RowGroupDescriptions.Add(New XmlaGroupDescription() With { _
         .MemberName = "[Date].[Calendar Quarter of Year]" _
        })

        provider.ColumnGroupDescriptions.Add(New XmlaGroupDescription() With { _
         .MemberName = "[Promotion].[Promotion Category]" _
        })
        provider.ColumnGroupDescriptions.Add(New XmlaGroupDescription() With { _
         .MemberName = "[Product].[Category]" _
        })

        provider.AggregateDescriptions.Add(New XmlaAggregateDescription() With { _
         .MemberName = "[Measures].[Internet Order Quantity]" _
        })

        provider.EndInit()

        Me.RadPivotGrid1.PivotGridElement.DataProvider = provider
        '
````

{{endregion}} 



