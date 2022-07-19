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

{{source=..\SamplesCS\GridView\Columns\ConvertingDataTypes.cs region=convertTypes}} 
{{source=..\SamplesVB\GridView\Columns\ConvertingDataTypes.vb region=convertTypes}} 

````C#
    
public class ToggleStateConverter : TypeConverter
{
    public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
    {
        return destinationType == typeof(ToggleState) || destinationType == typeof(bool);
    }
    public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
    {
        if (value is char && destinationType == typeof(ToggleState))
        {
            char charValue = (char)value;
            switch (charValue)
            {
                case 'Y':
                    return ToggleState.On;
                case 'N':
                    return ToggleState.Off;
                default:
                    return ToggleState.Indeterminate; 
            }
        }
        else if (value is bool && destinationType == typeof(char))
        {
            bool boolValue = (bool)value;
            switch (boolValue)
            {
                case true:
                    return 'Y';
                case false:
                    return 'N';
                default:
                    return 'M';
            }
        }
        return base.ConvertTo(context, culture, value, destinationType);
    }
    public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
    {
        return sourceType == typeof(ToggleState) || sourceType == typeof(bool);
    }
    public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
    {
        ToggleState state;
        bool boolValue;
        if (value is ToggleState)
        {
            state = (ToggleState)value;
            switch (state)
            {
                case ToggleState.On:
                    return 'Y';
                case ToggleState.Off:
                    return 'N';
                default:
                    return 'M';
            }
        }
        else if (value is bool)
        {
            boolValue = (bool)value;
            switch (boolValue)
            {
                case true:
                    return 'Y';
                case false:
                    return 'N';
                default:
                    return 'M';
            }
        }
        return base.ConvertFrom(context, culture, value);
    }
}

````
````VB.NET
Public Class ToggleStateConverter
    Inherits TypeConverter
    Public Overrides Function CanConvertTo(context As ITypeDescriptorContext, destinationType As Type) As Boolean
        Return destinationType Is GetType(ToggleState) OrElse destinationType Is GetType(Boolean)
    End Function
    Public Overrides Function ConvertTo(context As ITypeDescriptorContext, culture As CultureInfo, value As Object, destinationType As Type) As Object
        If TypeOf value Is Char AndAlso destinationType Is GetType(ToggleState) Then
            Dim charValue As Char = CChar(value)
            Select Case charValue
                Case "Y"c
                    Return ToggleState.On
                Case "N"c
                    Return ToggleState.Off
                Case Else
                    Return ToggleState.Indeterminate
            End Select
        ElseIf TypeOf value Is Boolean AndAlso destinationType Is GetType(Char) Then
            Dim boolValue As Boolean = CBool(value)
            Select Case boolValue
                Case True
                    Return "Y"c
                Case False
                    Return "N"c
                Case Else
                    Return "M"c
            End Select
        End If
        Return MyBase.ConvertTo(context, culture, value, destinationType)
    End Function
    Public Overrides Function CanConvertFrom(context As ITypeDescriptorContext, sourceType As Type) As Boolean
        Return sourceType Is GetType(ToggleState) OrElse sourceType Is GetType(Boolean)
    End Function
    Public Overrides Function ConvertFrom(context As ITypeDescriptorContext, culture As CultureInfo, value As Object) As Object
        Dim state As ToggleState
        Dim boolValue As Boolean
        If TypeOf value Is ToggleState Then
            state = CType(value, ToggleState)
            Select Case state
                Case ToggleState.On
                    Return "Y"c
                Case ToggleState.Off
                    Return "N"c
                Case Else
                    Return "M"c
            End Select
        ElseIf TypeOf value Is Boolean Then
            boolValue = CBool(value)
            Select Case boolValue
                Case True
                    Return "Y"c
                Case False
                    Return "N"c
                Case Else
                    Return "M"c
            End Select
        End If
        Return MyBase.ConvertFrom(context, culture, value)
    End Function
End Class

````

{{endregion}}

## Applying Type Converters

There are two ways to apply converters to the RadGridView conversion layer:

__Setting the DataTypeConverter property of the column__

The first approach to apply type converters is to create the desired column and assign its DataTypeConverter property. This approach is handy when you using non-business objects (such as  DataTable) or your business objects’ properties  do not have TypeConverterAttribute applied.

#### Applying TypeConverter

{{source=..\SamplesCS\GridView\Columns\ConvertingDataTypes.cs region=applyingTypeConverters}} 
{{source=..\SamplesVB\GridView\Columns\ConvertingDataTypes.vb region=applyingTypeConverters}} 

````C#
    
private void ConvertingDataTypes_Load(object sender, EventArgs e)
{
    GridViewCheckBoxColumn checkBox = new GridViewCheckBoxColumn("Organic", "IsOrganic");
    checkBox.DataTypeConverter = new ToggleStateConverter();
    this.radGridView1.Columns.Add(checkBox);
}

````
````VB.NET
Private Sub ConvertingDataTypes_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
    Dim checkBox As New GridViewCheckBoxColumn("Organic", "IsOrganic")
    checkBox.DataTypeConverter = New ToggleStateConverter()
    Me.RadGridView1.Columns.Add(checkBox)
End Sub

````

{{endregion}}

__Applying System.ComponentModel.TypeConverterAttribute to the incompatible property of the business object used as a data source__

The second way to add type converters is to use the __TypeConverterAttribute__, which allows you to specify the TypeConverter for any property in your business object. When you set it as a data source for RadGridView, you create GridViewCheckBoxColumn instead of GridViewTextBoxColumn. This approach is handy when you are creating your own business objects with TypeConverter attribute applied.

#### Custom class with TypeConverter attribute

{{source=..\SamplesCS\GridView\Columns\ConvertingDataTypes.cs region=classProduct}} 
{{source=..\SamplesVB\GridView\Columns\ConvertingDataTypes.vb region=classProduct}} 

````C#
    
public class Product
{
    public int ProductID { get; set; }
    
    public string ProductName { get; set; }
    
    public string Category { get; set; }
    
    public int UnitsInStock { get; set; }
    public double UnitPrice { get; set; }
        
    [TypeConverter(typeof(ToggleStateConverter))]
    public char IsOrganic { get; set; }
    public double DeliveryDate { get; set; }
}

````
````VB.NET
Public Class Product
    Public Property ProductID() As Integer
        Get
            Return m_ProductID
        End Get
        Set(ByVal value As Integer)
            m_ProductID = value
        End Set
    End Property
    Private m_ProductID As Integer
    Public Property ProductName() As String
        Get
            Return m_ProductName
        End Get
        Set(ByVal value As String)
            m_ProductName = value
        End Set
    End Property
    Private m_ProductName As String
    Public Property Category() As String
        Get
            Return m_Category
        End Get
        Set(ByVal value As String)
            m_Category = value
        End Set
    End Property
    Private m_Category As String
    Public Property UnitsInStock() As Integer
        Get
            Return m_UnitsInStock
        End Get
        Set(ByVal value As Integer)
            m_UnitsInStock = value
        End Set
    End Property
    Private m_UnitsInStock As Integer
    Public Property UnitPrice() As Double
        Get
            Return m_UnitPrice
        End Get
        Set(ByVal value As Double)
            m_UnitPrice = value
        End Set
    End Property
    Private m_UnitPrice As Double
    <TypeConverter(GetType(ToggleStateConverter))> _
    Public Property IsOrganic() As Char
        Get
            Return m_IsOrganic
        End Get
        Set(ByVal value As Char)
            m_IsOrganic = value
        End Set
    End Property
    Private m_IsOrganic As Char
    Public Property DeliveryDate() As Double
        Get
            Return m_DeliveryDate
        End Get
        Set(ByVal value As Double)
            m_DeliveryDate = value
        End Set
    End Property
    Private m_DeliveryDate As Double
End Class

````

{{endregion}}

## Handling Null Values

The RadGridView’s conversation layer can handle null values. You can specify the default value that is committed to the source if the cell value is changed to null. GridViewDataColumn’s __DataSourceNullValue__ property can be set using the following code snippet:

#### Handling null values

{{source=..\SamplesCS\GridView\Columns\ConvertingDataTypes.cs region=handlingNullValues}} 
{{source=..\SamplesVB\GridView\Columns\ConvertingDataTypes.vb region=handlingNullValues}} 

````C#
            
this.radGridView1.Columns["ProductName"].DataSourceNullValue = "ENTER PRODUCT NAME";

````
````VB.NET
Me.RadGridView1.Columns("ProductName").DataSourceNullValue = "ENTER PRODUCT NAME"

````

{{endregion}}

## Using the TypeConverter when sorting.

The type converter can be used when the column is sorted as well. To enable this functionality you should set the __UseDataTypeConverterWhenSorting__ property of the column.

>caution You should consider that the column can contain null values and handle this in the custom type converter class as well. The following code snipped shows a custom float type converter that handles null values:
>

#### Handling null values when sorting

{{source=..\SamplesCS\GridView\Columns\ConvertingDataTypes.cs region=Float}} 
{{source=..\SamplesVB\GridView\Columns\ConvertingDataTypes.vb region=Float}} 

````C#
public class CustomFloatConverter : TypeConverter
{
    public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
    {
        return destinationType == typeof(float);
    }
        
    public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
    {
        if (destinationType == typeof(float) && (value == null || value is DBNull))
        {
            return float.MinValue;
        }
        return value;
    }
}

````
````VB.NET
Public Class CustomFloatConverter
    Inherits TypeConverter
    Public Overrides Function CanConvertTo(ByVal context As ITypeDescriptorContext, ByVal destinationType As Type) As Boolean
        Return destinationType Is GetType(Single)
    End Function
    Public Overrides Function ConvertTo(ByVal context As ITypeDescriptorContext, ByVal culture As CultureInfo, ByVal value As Object, ByVal destinationType As Type) As Object
        If destinationType Is GetType(Single) AndAlso (value Is Nothing OrElse TypeOf value Is DBNull) Then
            Return Single.MinValue
        End If
        Return value
    End Function
End Class

````

{{endregion}}
# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%})

* [Pinning and Unpinning Columns]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%})

* [How to Show DateTime Values Stored in a UNIX Format with Filtering Still Working in RadGridView]({%slug gridview-datetimecolumn-unix-format%})

