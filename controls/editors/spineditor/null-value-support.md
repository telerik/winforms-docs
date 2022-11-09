---
title: Null Value Support
page_title: Null Value Support - RadSpinEditor 
description: RadSpinEditor is a themable alternative to the standard Windows Numeric Up Down control.
slug: winforms/editors/spineditor/null-value-support
tags: spineditor
published: True
position: 6 
---

# Null Value Support

Since R1 2017 **RadSpinEditor** supports *null* value. In order to enable this functionality it is necessary to set the **EnableNullValueInput** property to *true*. Thus, when the text is cleared and **RadSpinEditor** looses focus, *null* value will be set. The default **Value** property is of type *int* and it cannot be set to *null*. A new property,called **NullableValue**, is introduced for this purpose and it can be set to *null*. The **NullableValueChanged** event is fired when the **NullableValue** property is changed.

## Simple Data Binding

You can find below a sample code snippet demonstrating how to use the **NullableValue** property with simple data binding:

#### Simple data binding with null value

{{source=..\SamplesCS\Editors\SpinEditor1.cs region=NullableValue}} 
{{source=..\SamplesVB\Editors\SpinEditor1.vb region=NullableValue}} 

````C#
public void InitializeNullableSpinEditor()
{ 
        
    this.radSpinEditor1.EnableNullValueInput = true;
    this.radSpinEditor1.NullableValueChanged += radSpinEditor1_NullableValueChanged;
    Item item = new Item("Apple", 2);
    this.radSpinEditor1.DataBindings.Add("NullableValue", item, "Id", true, DataSourceUpdateMode.OnPropertyChanged);
}
private void radSpinEditor1_NullableValueChanged(object sender, EventArgs e)
{
    RadMessageBox.Show("NullableValue is changed "+ this.radSpinEditor1.NullableValue);
}
public class Item : System.ComponentModel.INotifyPropertyChanged
{
    private string _name;
    private int? _id;
    public Item(string name, int? id)
    {
        this._name = name;
        this._id = id;
    }
    public string Name
    {
        get
        {
            return this._name;
        }
        set
        {
            this._name = value;
            OnPropertyChanged("Name");
        }
    }
    public int? Id
    {
        get
        {
            return this._id;
        }
        set
        {
            this._id = value;
            OnPropertyChanged("Id");
        }
    }
    public event PropertyChangedEventHandler PropertyChanged;
    protected virtual void OnPropertyChanged(string propertyName)
    {
        if (PropertyChanged != null)
        {
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

````
````VB.NET
Public Sub InitializeNullableSpinEditor()
    Me.RadSpinEditor1.EnableNullValueInput = True
    AddHandler Me.RadSpinEditor1.NullableValueChanged, AddressOf radSpinEditor1_NullableValueChanged
    Dim item As New Item("Apple", 2)
    Me.RadSpinEditor1.DataBindings.Add("NullableValue", item, "Id", True, Windows.Forms.DataSourceUpdateMode.OnPropertyChanged)
End Sub
Private Sub radSpinEditor1_NullableValueChanged(sender As Object, e As EventArgs)
    RadMessageBox.Show("NullableValue is changed " & Me.RadSpinEditor1.NullableValue)
End Sub
Public Class Item
    Implements System.ComponentModel.INotifyPropertyChanged
    Private _name As String
    Private _id As System.Nullable(Of Integer)
    Public Sub New(name As String, id As System.Nullable(Of Integer))
        Me._name = name
        Me._id = id
    End Sub
    Public Property Name() As String
        Get
            Return Me._name
        End Get
        Set(value As String)
            Me._name = value
            OnPropertyChanged("Name")
        End Set
    End Property
    Public Property Id() As System.Nullable(Of Integer)
        Get
            Return Me._id
        End Get
        Set(value As System.Nullable(Of Integer))
            Me._id = value
            OnPropertyChanged("Id")
        End Set
    End Property
    Public Event PropertyChanged As PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
    Protected Overridable Sub OnPropertyChanged(ByVal propertyName As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
    End Sub
End Class

````

{{endregion}} 

# See Also

* [Getting Started]({%slug winforms/editors/spineditor/getting-started%})
* [Properties and Events]({%slug winforms/editors/spineditor/working-with-radspineditor%})

