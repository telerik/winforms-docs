---
title: Binding to Array and ArrayList
page_title: Binding to Array and ArrayList - WinForms GridView Control
description: Learn how you can bind WinForms GridView to an Array or ArrayList.
slug: winforms/gridview/populating-with-data/binding-to-array-and-arraylist
tags: binding,to,array,and,arraylist
published: True
position: 2
previous_url: gridview-populating-with-data-binding-to-array-and-arraylist
---

# Binding to Array and ArrayList

The examples below demonstrate binding to a generic list, an arrays of custom objects, and an `ArrayList` of custom objects. This collections have limitations when used as a data source in which case a __BindingList__ must be used. 

>note Note: BindingList is the preferred collection since its changes are automatically reflected on the data-bound control.
>

## Binding to a Array List

The example below creates an __ArrayList__ of generic objects initialized with five values and assigned as a __DataSource__ to the __RadGridView__.

![WinForms RadGridView gridview-populating-with-data-binding-to-array-and-arraylist 001](images/gridview-populating-with-data-binding-to-array-and-arraylist001.png)

{{source=..\SamplesCS\GridView\PopulatingWithData\BindingToArrayAndArrayList.cs region=bindingToSimpleArrayClass}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\BindingToArrayAndArrayList.vb region=bindingToSimpleArrayClass}} 

````C#
public class ValueType<T>
{
    T item;
    public ValueType() { }
    public ValueType(T item)
    {
        this.item = item;
    }
    public T ItemProperty
    {
        get { return this.item; }
        set { this.item = value; }
    }
}

````
````VB.NET
Public Class ValueType(Of T)
    Private item As T
    Public Sub New()
    End Sub
    Public Sub New(ByVal item As T)
        Me.item = item
    End Sub
    Public Property ItemProperty() As T
        Get
            Return Me.item
        End Get
        Set(ByVal value As T)
            Me.item = value
        End Set
    End Property
End Class

````

{{endregion}} 

{{source=..\SamplesCS\GridView\PopulatingWithData\BindingToArrayAndArrayList.cs region=bindingToSimpleArray}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\BindingToArrayAndArrayList.vb region=bindingToSimpleArray}} 

````C#
ArrayList list = new ArrayList();
for (int i = 0; i < 5; i++)
{
    list.Add(new ValueType<string>("string " + (i + 1).ToString()));
}
this.radGridView1.DataSource = list;

````
````VB.NET
Dim list As New ArrayList()
Dim i As Integer = 0
While i < 5
    list.Add(New ValueType(Of String)("string " + (i + 1).ToString()))
    System.Math.Max(System.Threading.Interlocked.Increment(i), i - 1)
End While
Me.RadGridView1.DataSource = list

````

{{endregion}} 

## Binding to an Array of Objects

Arrays of objects containing [bindable types]({%slug winforms/gridview/populating-with-data/bindable-types%}) can be bound to RadGridView by assigning the array to the __DataSource__ property of the grid. 
        

The example below defines a "MyObject" class containing one integer and one string property. The snippet of code at end of the example creates an array of MyObject, initializes the array with two objects and assigns the array to the __DataSource__. The MyObject class would typically be placed in its own separate class file and the array creation, initialization and assignment code might be placed in a form's `Load` event handler.

 ![WinForms RadGridView gridview-populating-with-data-binding-to-array-and-arraylist 002](images/gridview-populating-with-data-binding-to-array-and-arraylist002.png)

{{source=..\SamplesCS\GridView\PopulatingWithData\BindingToArrayAndArrayList.cs region=bindingToArrayOfObjectsClass}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\BindingToArrayAndArrayList.vb region=bindingToArrayOfObjectsClass}} 

````C#
public class MyObject
{
    public MyObject(int myInt, string myString)
    {
        _myInt = myInt;
        _myString = myString;
    }
    private int _myInt;
    public int MyInt
    {
        get { return _myInt; }
        set { _myInt = value; }
    }
    private string _myString;
    public string MyString
    {
        get { return _myString; }
        set { _myString = value; }
    }
}

````
````VB.NET
Public Class MyObject
    Public Sub New(ByVal myInt As Integer, ByVal myString As String)
        _myInt = myInt
        _myString = myString
    End Sub
    Private _myInt As Integer
    Public Property MyInt() As Integer
        Get
            Return _myInt
        End Get
        Set(ByVal value As Integer)
            _myInt = value
        End Set
    End Property
    Private _myString As String
    Public Property MyString() As String
        Get
            Return _myString
        End Get
        Set(ByVal value As String)
            _myString = value
        End Set
    End Property
End Class

````

{{endregion}} 

{{source=..\SamplesCS\GridView\PopulatingWithData\BindingToArrayAndArrayList.cs region=bindingToArrayOfObjects}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\BindingToArrayAndArrayList.vb region=bindingToArrayOfObjects}} 

````C#
MyObject[] myArray = new MyObject[2] { new MyObject(1, "object one"), new MyObject(2, "object two") };
radGridView1.DataSource = myArray;

````
````VB.NET
Dim myArray As MyObject() = New MyObject(1) {New MyObject(1, "object one"), New MyObject(2, "object two")}
        RadGridView1.DataSource = myArray

````

{{endregion}} 





# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

