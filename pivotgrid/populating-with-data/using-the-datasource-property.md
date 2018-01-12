---
title: Using the DataSource Property
page_title: Using the DataSource property | RadPivotGrid
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

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheDataSourceProperty.cs region=FillWithData}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheDataSourceProperty.vb region=FillWithData}} 

````C#
this.radPivotGrid1.RowGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "OrderDate", Step = DateTimeStep.Year, GroupComparer = new GroupNameComparer() });
this.radPivotGrid1.RowGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "OrderDate", Step = DateTimeStep.Quarter, GroupComparer = new GroupNameComparer() });
this.radPivotGrid1.RowGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "OrderDate", Step = DateTimeStep.Month, GroupComparer = new GroupNameComparer() });
this.radPivotGrid1.ColumnGroupDescriptions.Add(new PropertyGroupDescription() { PropertyName = "EmployeeID", GroupComparer = new GrandTotalComparer() });
this.radPivotGrid1.AggregateDescriptions.Add(new PropertyAggregateDescription() { PropertyName = "Freight", AggregateFunction = AggregateFunctions.Sum });
this.radPivotGrid1.AggregateDescriptions.Add(new PropertyAggregateDescription() { PropertyName = "Freight", AggregateFunction = AggregateFunctions.Average });
this.radPivotGrid1.FilterDescriptions.Add(new PropertyFilterDescription() { PropertyName = "ShipCountry", CustomName = "Country" });
NwindDataSet dataset = new NwindDataSet();
SamplesCS.DataSources.NwindDataSetTableAdapters.OrdersTableAdapter adapter = new SamplesCS.DataSources.NwindDataSetTableAdapters.OrdersTableAdapter();
adapter.Fill(dataset.Orders);
BindingSource bs = new BindingSource();
bs.DataSource = dataset;
bs.DataMember = "Orders";
this.radPivotGrid1.DataSource = bs;

````
````VB.NET
Me.RadPivotGrid1.RowGroupDescriptions.Add(New DateTimeGroupDescription() With {
 .PropertyName = "OrderDate",
 .[Step] = DateTimeStep.Year,
 .GroupComparer = New GroupNameComparer()
})
Me.RadPivotGrid1.RowGroupDescriptions.Add(New DateTimeGroupDescription() With {
 .PropertyName = "OrderDate",
 .[Step] = DateTimeStep.Quarter,
 .GroupComparer = New GroupNameComparer()
})
Me.RadPivotGrid1.RowGroupDescriptions.Add(New DateTimeGroupDescription() With {
 .PropertyName = "OrderDate",
 .[Step] = DateTimeStep.Month,
 .GroupComparer = New GroupNameComparer()
})
Me.RadPivotGrid1.ColumnGroupDescriptions.Add(New PropertyGroupDescription() With {
 .PropertyName = "EmployeeID",
 .GroupComparer = New GrandTotalComparer()
})
Me.RadPivotGrid1.AggregateDescriptions.Add(New PropertyAggregateDescription() With {
 .PropertyName = "Freight",
 .AggregateFunction = AggregateFunctions.Sum
})
Me.RadPivotGrid1.AggregateDescriptions.Add(New PropertyAggregateDescription() With {
 .PropertyName = "Freight",
 .AggregateFunction = AggregateFunctions.Average
})
Me.RadPivotGrid1.FilterDescriptions.Add(New PropertyFilterDescription() With {
 .PropertyName = "ShipCountry",
 .CustomName = "Country"
})
Dim dataset As New NwindDataSet()
Dim adapter As New NwindDataSetTableAdapters.OrdersTableAdapter()
adapter.Fill(dataset.Orders)
Dim bs As New BindingSource()
bs.DataSource = dataset
bs.DataMember = "Orders"
Me.RadPivotGrid1.DataSource = bs

````

{{endregion}} 

>note When you set the DataSource and DataMember properties, RadPivotGrid will automatically prepare a **LocalDataSourceProvider** and use it internally.
>

>caption Figure 1: RadPivot Data Binding

![pivotgrid-populating-with-datausing-the-datasource-property](images/pivotgrid-populating-with-datausing-the-datasource-property.png)

# Localizing the Data Provider

The local data source provider is built dynamically while binding **RadPivotGrid** through its **DataSource** property. The data provider can be [localized](https://docs.telerik.com/devtools/winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider#the-culture-property) by setting its **Culture** property. Since the provider is created on the go, a suitable place to do this job is the handler of the RadPivotGrid.**UpdatedCompleted** event.

#### Setting Culture

{{source=..\SamplesCS\PivotGrid\PopulatingWithData\PivotGridUsingTheDataSourceProperty.cs region=LocalizingDataProvider}} 
{{source=..\SamplesVB\PivotGrid\PopulatingWithData\PivotGridUsingTheDataSourceProperty.vb region=LocalizingDataProvider}}
````C#
public PivotGridUsingTheDataSourceProperty()
{
    InitializeComponent();
    FillWithData();
    this.radPivotGrid1.UpdateCompleted += RadPivotGrid1_UpdateCompleted;
}
private void RadPivotGrid1_UpdateCompleted(object sender, EventArgs e)
{
    this.radPivotGrid1.UpdateCompleted -= RadPivotGrid1_UpdateCompleted;
    LocalDataSourceProvider dataProvider = this.radPivotGrid1.DataProvider as LocalDataSourceProvider;
    if (dataProvider != null)
    {
        dataProvider.Culture = new System.Globalization.CultureInfo("de-DE");
        dataProvider.Refresh();
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    FillWithData()
    AddHandler Me.RadPivotGrid1.UpdateCompleted, AddressOf RadPivotGrid1_UpdateCompleted
End Sub
Private Sub RadPivotGrid1_UpdateCompleted(sender As Object, e As EventArgs)
    RemoveHandler Me.RadPivotGrid1.UpdateCompleted, AddressOf RadPivotGrid1_UpdateCompleted
    Dim dataProvider = TryCast(Me.RadPivotGrid1.DataProvider, LocalDataSourceProvider)
    If dataProvider IsNot Nothing Then
        dataProvider.Culture = New System.Globalization.CultureInfo("de-DE")
        dataProvider.Refresh()
    End If
End Sub

```` 



{{endregion}} 


# See Also

* [Smart Tag]({%slug winforms/pivotgrid/design-time/property-builder%})
* [Design Time Data Binding]({%slug winforms/pivotgrid/populating-with-data/design-time-data-binding%})
* [Using the LocalSourceDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider%})
 
