---
title: Bind GridViewComboBoxColumn to Enum Type Property
description: This article shows how to shows enum values in GridViewComboBoxColumn.
type: how-to
page_title: How to shows enum values in GridViewComboBoxColumn.
slug: gridview-comboboxcolumn-enum
position: 0
tags: gridview, comboboxcolumn, enum, enumwrapper
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.3.914|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

A common requirement is to show enum values in GridViewComboBoxColumn. To do that we can create a custom wrapper class that will return a collection holding all values of an Enum. Then we can create a custom Enum type object.

##  Generic Enum Wrapper Class

````C#
public class EnumWrapper<T>
{
    public int ID
    {
        get;
        set;
    }

    public string Name
    {
        get { return Enum.GetName(typeof(T), ID); }
        set { ID = (int)Enum.Parse(typeof(T), value); }
    }

    public EnumWrapper(T value)
    {
        ID = (int)Enum.Parse(typeof(T), value.ToString());
    }

    public static List<EnumWrapper<T>> EnumToList<T>()
    {

        Type enumType = typeof(T);

        if (enumType.BaseType != typeof(Enum))
            throw new ArgumentException("T must be of type System.Enum");

        Array enumValArray = Enum.GetValues(enumType);
        List<EnumWrapper<T>> enumValList = new List<EnumWrapper<T>>();
        foreach (int val in enumValArray)
        {
            enumValList.Add(new EnumWrapper<T>((T)Enum.Parse(enumType, val.ToString())));
        }
        return enumValList;
    }
}

enum EnumResultType
{
	A,B,C
}

````
````VB.NET
Public Class EnumWrapper(Of T)
    Public Property ID As Integer

    Public Property Name As String
        Get
            Return [Enum].GetName(GetType(T), ID)
        End Get
        Set(ByVal value As String)
            ID = CInt([Enum].Parse(GetType(T), value))
        End Set
    End Property

    Public Sub New(ByVal value As T)
        ID = CInt([Enum].Parse(GetType(T), value.ToString()))
    End Sub

    Public Shared Function EnumToList(Of T)() As List(Of EnumWrapper(Of T))
        Dim enumType As Type = GetType(T)
        If enumType.BaseType <> GetType([Enum]) Then Throw New ArgumentException("T must be of type System.Enum")
        Dim enumValArray As Array = [Enum].GetValues(enumType)
        Dim enumValList As List(Of EnumWrapper(Of T)) = New List(Of EnumWrapper(Of T))()

        For Each val As Integer In enumValArray
            enumValList.Add(New EnumWrapper(Of T)(CType([Enum].Parse(enumType, val.ToString()), T)))
        Next

        Return enumValList
    End Function
End Class

Enum EnumResultType
    A
    B
    C
End Enum     
    
````

What's left is to create some dummy data and set our GridViewComboBoxColumn to show enum values of custom Enum type.

####  Bind GridViewComboBoxColumn To Enum Type

````C#
DataTable table = new DataTable();
table.Columns.Add("Value", typeof(int));

table.Rows.Add((int)EnumResultType.A);
table.Rows.Add((int)EnumResultType.B);
table.Rows.Add((int)EnumResultType.C);

GridViewComboBoxColumn col = new GridViewComboBoxColumn("Value");
col.DataSource = EnumWrapper<EnumResultType>.EnumToList<EnumResultType>(); ;
col.DisplayMember = "Name";
col.ValueMember = "ID";

radGridView1.Columns.Add(col);
radGridView1.DataSource = table;


````
````VB.NET
Dim table As DataTable = New DataTable()
table.Columns.Add("Value", GetType(Integer))
table.Rows.Add(CInt(EnumResultType.A))
table.Rows.Add(CInt(EnumResultType.B))
table.Rows.Add(CInt(EnumResultType.C))
Dim col As GridViewComboBoxColumn = New GridViewComboBoxColumn("Value")
col.DataSource = EnumWrapper(Of EnumResultType).EnumToList(Of EnumResultType)()
col.DisplayMember = "Name"
col.ValueMember = "ID"
radGridView1.Columns.Add(col)
radGridView1.DataSource = table
    
````





    
   
  
    
 
