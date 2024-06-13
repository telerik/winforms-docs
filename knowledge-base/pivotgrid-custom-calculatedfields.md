---
title: How to create calculated field using another calculated field
description: This article shows how to create a calculated field using another calculated field
type: how-to
page_title:  How to Create Calculated Field Using Another Calculated Field
slug: pivotgrid-groupelement-screentip
position: 29
tags: pivotgrid, calculatedfield
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|RadPivotGrid for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

An example demonstrating how to get the value of a calculated field in another calculated field.

## Solution

The __RequiredField__ static class exposes two methods to get fields in RadPivotGrid: __RequiredField.ForProperty()__ and __RequiredField.ForCalculatedField()__. Using the second method we can get another calculated field value.

![pivotgrid-custom-calculatedfields 001](images/pivotgrid-custom-calculatedfields.png)

#### Sample Implementation

1. First we are going to populate our RadPivotGrid with sample data.

````C#

public partial class RadForm1 : Telerik.WinControls.UI.RadForm
{
    public RadForm1()
    {
        InitializeComponent();
        LocalDataSourceProvider dataProvider = new LocalDataSourceProvider();
        this.radPivotGrid1.DataProvider = dataProvider;
        dataProvider.BeginInit();
        dataProvider.RowGroupDescriptions.Add(new PropertyGroupDescription() { PropertyName = "Name" });
        dataProvider.ColumnGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "Date", Step = DateTimeStep.Month });
        dataProvider.AggregateDescriptions.Add(new PropertyAggregateDescription() { PropertyName = "Quantity" });
        dataProvider.EndInit();
		
        dataProvider.ItemsSource = GeneratePivotData();
    }

    private static IList<Product> GeneratePivotData()
    {
        IList<Product> PivotData = new List<Product>()
        {
            new Product() { Name = "Pen", Date = new DateTime(2012,1,1,0,0,0), Price = 10.40, Quantity = 148 },
            new Product() { Name = "Pen", Date = new DateTime(2012,2,1,0,0,0), Price = 10.99, Quantity = 122 },
            new Product() { Name = "Pen", Date = new DateTime(2012,3,1,0,0,0), Price = 11.24, Quantity = 80 },
            new Product() { Name = "Pen", Date = new DateTime(2012,4,1,0,0,0), Price = 11.24, Quantity = 90 },
            new Product() { Name = "Pen", Date = new DateTime(2012,5,1,0,0,0), Price = 11.14, Quantity = 140 },
            new Product() { Name = "Pen", Date = new DateTime(2012,6,1,0,0,0), Price = 10.89, Quantity = 162 },
            new Product() { Name = "Pen", Date = new DateTime(2012,7,1,0,0,0), Price = 10.89, Quantity = 181 },
            new Product() { Name = "Pen", Date = new DateTime(2012,8,1,0,0,0), Price = 10.88, Quantity = 180 },
            new Product() { Name = "Pen", Date = new DateTime(2012,9,1,0,0,0), Price = 11.00, Quantity = 116 },
            new Product() { Name = "Pen", Date = new DateTime(2012,10,1,0,0,0), Price = 10.99, Quantity = 128 },
            new Product() { Name = "Pen", Date = new DateTime(2012,11,1,0,0,0), Price = 10.95, Quantity = 145 },
            new Product() { Name = "Pen", Date = new DateTime(2012,12,1,0,0,0), Price = 10.45, Quantity = 189 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,1,1,0,0,0), Price = 5.22, Quantity = 100 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,2,1,0,0,0), Price = 5.99, Quantity = 85 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,3,1,0,0,0), Price = 6.04, Quantity = 80 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,4,1,0,0,0), Price = 6.28, Quantity = 72 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,5,1,0,0,0), Price = 6.12, Quantity = 99 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,6,1,0,0,0), Price = 6.59, Quantity = 40 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,7,1,0,0,0), Price = 6.29, Quantity = 68 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,8,1,0,0,0), Price = 5.99, Quantity = 95 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,9,1,0,0,0), Price = 5.89, Quantity = 120 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,10,1,0,0,0), Price = 5.99, Quantity = 105 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,11,1,0,0,0), Price = 5.96, Quantity = 111 },
            new Product() { Name = "Pencil", Date = new DateTime(2012,12,1,0,0,0), Price = 5.99, Quantity = 108 },
            new Product() { Name = "Notebook", Date = new DateTime(2012,1,1,0,0,0), Price = 22.86, Quantity = 88 },
            new Product() { Name = "Notebook", Date = new DateTime(2012,2,1,0,0,0), Price = 23.02, Quantity = 95},
            new Product() { Name = "Notebook", Date = new DateTime(2012,3,1,0,0,0), Price = 23.22, Quantity = 102 },
            new Product() { Name = "Notebook", Date = new DateTime(2012,4,1,0,0,0), Price = 21.99, Quantity = 95},
            new Product() { Name = "Notebook", Date = new DateTime(2012,5,1,0,0,0), Price = 22.45, Quantity = 84},
            new Product() { Name = "Notebook", Date = new DateTime(2012,6,1,0,0,0), Price = 22.56, Quantity = 96 },
            new Product() { Name = "Notebook", Date = new DateTime(2012,7,1,0,0,0), Price = 22.88, Quantity = 88},
            new Product() { Name = "Notebook", Date = new DateTime(2012,8,1,0,0,0), Price = 22.42, Quantity = 99},
            new Product() { Name = "Notebook", Date = new DateTime(2012,9,1,0,0,0), Price = 22.56, Quantity = 111},
            new Product() { Name = "Notebook", Date = new DateTime(2012,10,1,0,0,0), Price = 22.18, Quantity = 102 },
            new Product() { Name = "Notebook", Date = new DateTime(2012,11,1,0,0,0), Price = 22.93, Quantity = 105 },
            new Product() { Name = "Notebook", Date = new DateTime(2012,12,1,0,0,0), Price = 22.89, Quantity = 122 },
        };

        return PivotData;
    }
}

public class Product
{
    public string Name { get; set; }
    public int Quantity { get; set; }
    public double Price { get; set; }
    public DateTime Date { get; set; }
}

	

````
````VB.NET

Public Partial Class RadForm1
    Inherits Telerik.WinControls.UI.RadForm

    Public Sub New()
        InitializeComponent()
        Dim dataProvider As LocalDataSourceProvider = New LocalDataSourceProvider()
        Me.radPivotGrid1.DataProvider = dataProvider
        dataProvider.BeginInit()
        dataProvider.RowGroupDescriptions.Add(New PropertyGroupDescription() With {
            .PropertyName = "Name"
        })
        dataProvider.ColumnGroupDescriptions.Add(New DateTimeGroupDescription() With {
            .PropertyName = "Date",
            .[Step] = DateTimeStep.Month
        })
        dataProvider.AggregateDescriptions.Add(New PropertyAggregateDescription() With {
            .PropertyName = "Quantity"
        })
        dataProvider.EndInit()
        dataProvider.ItemsSource = GeneratePivotData()
    End Sub

    Private Shared Function GeneratePivotData() As IList(Of Product)
        Dim PivotData As IList(Of Product) = New List(Of Product)() From {
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 1, 1, 0, 0, 0),
                .Price = 10.40,
                .Quantity = 148
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 2, 1, 0, 0, 0),
                .Price = 10.99,
                .Quantity = 122
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 3, 1, 0, 0, 0),
                .Price = 11.24,
                .Quantity = 80
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 4, 1, 0, 0, 0),
                .Price = 11.24,
                .Quantity = 90
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 5, 1, 0, 0, 0),
                .Price = 11.14,
                .Quantity = 140
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 6, 1, 0, 0, 0),
                .Price = 10.89,
                .Quantity = 162
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 7, 1, 0, 0, 0),
                .Price = 10.89,
                .Quantity = 181
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 8, 1, 0, 0, 0),
                .Price = 10.88,
                .Quantity = 180
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 9, 1, 0, 0, 0),
                .Price = 11.00,
                .Quantity = 116
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 10, 1, 0, 0, 0),
                .Price = 10.99,
                .Quantity = 128
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 11, 1, 0, 0, 0),
                .Price = 10.95,
                .Quantity = 145
            },
            New Product() With {
                .Name = "Pen",
                .Date = New DateTime(2012, 12, 1, 0, 0, 0),
                .Price = 10.45,
                .Quantity = 189
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 1, 1, 0, 0, 0),
                .Price = 5.22,
                .Quantity = 100
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 2, 1, 0, 0, 0),
                .Price = 5.99,
                .Quantity = 85
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 3, 1, 0, 0, 0),
                .Price = 6.04,
                .Quantity = 80
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 4, 1, 0, 0, 0),
                .Price = 6.28,
                .Quantity = 72
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 5, 1, 0, 0, 0),
                .Price = 6.12,
                .Quantity = 99
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 6, 1, 0, 0, 0),
                .Price = 6.59,
                .Quantity = 40
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 7, 1, 0, 0, 0),
                .Price = 6.29,
                .Quantity = 68
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 8, 1, 0, 0, 0),
                .Price = 5.99,
                .Quantity = 95
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 9, 1, 0, 0, 0),
                .Price = 5.89,
                .Quantity = 120
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 10, 1, 0, 0, 0),
                .Price = 5.99,
                .Quantity = 105
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 11, 1, 0, 0, 0),
                .Price = 5.96,
                .Quantity = 111
            },
            New Product() With {
                .Name = "Pencil",
                .Date = New DateTime(2012, 12, 1, 0, 0, 0),
                .Price = 5.99,
                .Quantity = 108
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 1, 1, 0, 0, 0),
                .Price = 22.86,
                .Quantity = 88
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 2, 1, 0, 0, 0),
                .Price = 23.02,
                .Quantity = 95
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 3, 1, 0, 0, 0),
                .Price = 23.22,
                .Quantity = 102
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 4, 1, 0, 0, 0),
                .Price = 21.99,
                .Quantity = 95
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 5, 1, 0, 0, 0),
                .Price = 22.45,
                .Quantity = 84
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 6, 1, 0, 0, 0),
                .Price = 22.56,
                .Quantity = 96
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 7, 1, 0, 0, 0),
                .Price = 22.88,
                .Quantity = 88
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 8, 1, 0, 0, 0),
                .Price = 22.42,
                .Quantity = 99
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 9, 1, 0, 0, 0),
                .Price = 22.56,
                .Quantity = 111
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 10, 1, 0, 0, 0),
                .Price = 22.18,
                .Quantity = 102
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 11, 1, 0, 0, 0),
                .Price = 22.93,
                .Quantity = 105
            },
            New Product() With {
                .Name = "Notebook",
                .Date = New DateTime(2012, 12, 1, 0, 0, 0),
                .Price = 22.89,
                .Quantity = 122
            }
        }
        Return PivotData
    End Function
End Class


Public Class Product
    Public Property Name As String
    Public Property Quantity As Integer
    Public Property Price As Double
    Public Property Date As DateTime
End Class


````

2. Next step is to create our custom-calculated fields.

````C#

	public class CommissionCalculatedField : CalculatedField
	{
		private RequiredField sellPriceCalculatedField;
		public CommissionCalculatedField()
		{
			this.Name = "Commision";
			this.sellPriceCalculatedField = RequiredField.ForCalculatedField("SellPrice");

		}
		protected override IEnumerable<RequiredField> RequiredFields()
		{
			yield return this.sellPriceCalculatedField;
		}
			
		protected override AggregateValue CalculateValue(IAggregateValues aggregateValues)
		{      
			var quantity = aggregateValues.GetAggregateValue(sellPriceCalculatedField);
			if (quantity.IsError())
			{
				return quantity;
			}
			double extendedPrice = quantity.ConvertOrDefault<double>();
			return new DoubleAggregateValue(extendedPrice * 0.1);            
		}
	}

	public class SellPriceCalculatedField : CalculatedField
	{
		private RequiredField sellPriceCalculatedField;
		public SellPriceCalculatedField()
		{
			this.Name = "SellPrice";
			this.sellPriceCalculatedField = RequiredField.ForProperty("Price");
		}
		protected override IEnumerable<RequiredField> RequiredFields()
		{
			yield return this.sellPriceCalculatedField;
		}

		protected override AggregateValue CalculateValue(IAggregateValues aggregateValues)
		{
			var aggregateValue = aggregateValues.GetAggregateValue(this.sellPriceCalculatedField);
			if (aggregateValue.IsError())
			{
				return aggregateValue;
			}
			double extendedPrice = aggregateValue.ConvertOrDefault<double>();
			return new DoubleAggregateValue(extendedPrice * 1.5);            
		}
	}
	
	

````
````VB.NET

	Public Class CommissionCalculatedField
		Inherits CalculatedField

		Private sellPriceCalculatedField As RequiredField

		Public Sub New()
			Me.Name = "Commision"
			Me.sellPriceCalculatedField = RequiredField.ForCalculatedField("SellPrice")
		End Sub

		Protected Overrides Iterator Function RequiredFields() As IEnumerable(Of RequiredField)
			Yield Me.sellPriceCalculatedField
		End Function

		Protected Overrides Function CalculateValue(ByVal aggregateValues As IAggregateValues) As AggregateValue
			Dim quantity = aggregateValues.GetAggregateValue(sellPriceCalculatedField)

			If quantity.IsError() Then
				Return quantity
			End If

			Dim extendedPrice As Double = quantity.ConvertOrDefault(Of Double)()
			Return New DoubleAggregateValue(extendedPrice * 0.1)
		End Function
	End Class

	Public Class SellPriceCalculatedField
		Inherits CalculatedField

		Private sellPriceCalculatedField As RequiredField

		Public Sub New()
			Me.Name = "SellPrice"
			Me.sellPriceCalculatedField = RequiredField.ForProperty("Price")
		End Sub

		Protected Overrides Iterator Function RequiredFields() As IEnumerable(Of RequiredField)
			Yield Me.sellPriceCalculatedField
		End Function

		Protected Overrides Function CalculateValue(ByVal aggregateValues As IAggregateValues) As AggregateValue
			Dim aggregateValue = aggregateValues.GetAggregateValue(Me.sellPriceCalculatedField)

			If aggregateValue.IsError() Then
				Return aggregateValue
			End If

			Dim extendedPrice As Double = aggregateValue.ConvertOrDefault(Of Double)()
			Return New DoubleAggregateValue(extendedPrice * 1.5)
		End Function
	End Class



````

3. What's left is to add the above-calculated fields to the RadPivotGrid control.

````C#

	public RadForm1()
	{
		InitializeComponent();
		LocalDataSourceProvider dataProvider = new LocalDataSourceProvider();
		this.radPivotGrid1.DataProvider = dataProvider;
		dataProvider.BeginInit();
		dataProvider.RowGroupDescriptions.Add(new PropertyGroupDescription() { PropertyName = "Name" });
		dataProvider.ColumnGroupDescriptions.Add(new DateTimeGroupDescription() { PropertyName = "Date", Step = DateTimeStep.Month });
		dataProvider.AggregateDescriptions.Add(new PropertyAggregateDescription() { PropertyName = "Quantity" });
		dataProvider.EndInit();

		using (radPivotGrid1.PivotGridElement.DeferRefresh())
		{
			SellPriceCalculatedField sellPriceCalculatedField = new SellPriceCalculatedField();
			sellPriceCalculatedField.Name = "SellPrice";
			((LocalDataSourceProvider)this.radPivotGrid1.DataProvider).CalculatedFields.Add(sellPriceCalculatedField);

			CommissionCalculatedField calculatedField = new CommissionCalculatedField();
			calculatedField.Name = "Commision";
			((LocalDataSourceProvider)this.radPivotGrid1.DataProvider).CalculatedFields.Add(calculatedField);
		}
		
		dataProvider.ItemsSource = GeneratePivotData();
	}
	

````
````VB.NET

	Public Sub New()
		InitializeComponent()
		Dim dataProvider As LocalDataSourceProvider = New LocalDataSourceProvider()
		Me.radPivotGrid1.DataProvider = dataProvider
		dataProvider.BeginInit()
		dataProvider.RowGroupDescriptions.Add(New PropertyGroupDescription() With {
			.PropertyName = "Name"
		})
		dataProvider.ColumnGroupDescriptions.Add(New DateTimeGroupDescription() With {
			.PropertyName = "Date",
			.[Step] = DateTimeStep.Month
		})
		dataProvider.AggregateDescriptions.Add(New PropertyAggregateDescription() With {
			.PropertyName = "Quantity"
		})
		dataProvider.EndInit()

		Using radPivotGrid1.PivotGridElement.DeferRefresh()
			Dim sellPriceCalculatedField As SellPriceCalculatedField = New SellPriceCalculatedField()
			sellPriceCalculatedField.Name = "SellPrice"
			(CType(Me.radPivotGrid1.DataProvider, LocalDataSourceProvider)).CalculatedFields.Add(sellPriceCalculatedField)
			Dim calculatedField As CommissionCalculatedField = New CommissionCalculatedField()
			calculatedField.Name = "Commision"
			(CType(Me.radPivotGrid1.DataProvider, LocalDataSourceProvider)).CalculatedFields.Add(calculatedField)
		End Using

		dataProvider.ItemsSource = GeneratePivotData()
	End Sub
	


````


