---
title: Data Binding
page_title: Data Binding - PipsPager
description: This article describes how to bind RadPipsPager control.
slug: pipspager-data-binding
tags: pipspager
published: True
position: 4
---

# Data Binding

## Bound mode

**RadPipsPager** provides built-in option to bind the control to any collection by using the **BindingSource** property. When in bound mode the **RadPipsPager** automatically changes the **Position** of the **BindingSource**. The number of the pips is also calculated automatically based on the used data.

The following example demonstrates a basic scenario where **RadPipsPager** is used with **RadSlideView**. Here, **RadPipsPager** is bound to a BindingList<T> of a custom object:

#### Bind RadPipsPager

{{source=..\SamplesCS\PipsPager\PipsPagerGettingStarted.cs region=BindingPipsPager}} 
{{source=..\SamplesVB\PipsPager\PipsPagerGettingStarted.vb region=BindingPipsPager}}

````C#
BindingSource bindingSource = new BindingSource();
BindingList<Person> list = new BindingList<Person>()
{
new Person("1", "Nancy Davolio"),
new Person("2", "Andrew Fuller"),
new Person("3", "Janet Leverling"),
new Person("4", "Margaret Peacock")
};
bindingSource.DataSource = list;
this.radPipsPager1.BindingSource = bindingSource;

//bind slide view to show data
LightVisualElement template = new LightVisualElement();
this.radSlideView1.Mappings.Add(new Mapping(template, LightVisualElement.TextProperty, nameof(Person.Name)));
this.radSlideView1.TemplateElement = template;
this.radSlideView1.BindingSource = bindingSource;

````
````VB.NET
Dim bindingSource As BindingSource = New BindingSource()
Dim list As BindingList(Of Person) = New BindingList(Of Person)() From {
    New Person("1", "Nancy Davolio"),
    New Person("2", "Andrew Fuller"),
    New Person("3", "Janet Leverling"),
    New Person("4", "Margaret Peacock")
}
bindingSource.DataSource = list
Me.radPipsPager1.BindingSource = bindingSource

'bind slide view to show data
Dim template As LightVisualElement = New LightVisualElement()
Me.radSlideView1.Mappings.Add(New Mapping(template, LightVisualElement.TextProperty, NameOf(Person.Name)))
Me.radSlideView1.TemplateElement = template
Me.radSlideView1.BindingSource = bindingSource

```` 

#### Sample Data Object

{{source=..\SamplesCS\PipsPager\PipsPagerGettingStarted.cs region=SampleDataObject}} 
{{source=..\SamplesVB\PipsPager\PipsPagerGettingStarted.vb region=SampleDataObject}}

````C#
public class Person : INotifyPropertyChanged
{
    private string id;
    private string name;
    public event PropertyChangedEventHandler PropertyChanged;
    public Person(string id, string name)
    {
        this.id = id;
        this.name = name;
    }
    public string Id
    {
        get
        {
            return this.id;
        }
        set
        {
            if (this.id != value)
            {
                this.id = value;
                OnPropertyChanged("Id");
            }
        }
    }
    public string Name
    {
        get
        {
            return this.name;
        }
        set
        {
            if (this.name != value)
            {
                this.name = value;
                OnPropertyChanged("Name");
            }
        }
    }
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

    Public Class Person
        Inherits INotifyPropertyChanged

        Private id As String
        Private name As String
        Public Event PropertyChanged As PropertyChangedEventHandler

        Public Sub New(ByVal id As String, ByVal name As String)
            Me.id = id
            Me.name = name
        End Sub

        Public Property Id As String
            Get
                Return Me.id
            End Get
            Set(ByVal value As String)

                If Me.id <> value Then
                    Me.id = value
                    OnPropertyChanged("Id")
                End If
            End Set
        End Property

        Public Property Name As String
            Get
                Return Me.name
            End Get
            Set(ByVal value As String)

                If Me.name <> value Then
                    Me.name = value
                    OnPropertyChanged("Name")
                End If
            End Set
        End Property

        Protected Overridable Sub OnPropertyChanged(ByVal propertyName As String)
            RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
        End Sub
    End Class
End Class

```` 

![WinForms RadPipsPager Bounding](images/pipspager-data-binding.png)

## Unbound mode

In unbound mode, the **NumberOfPages** property determines the amount of pips items that are shown. 

{{source=..\SamplesCS\SlideView\GettingStartedGallery.cs region=BindingPipsPager}} 
{{source=..\SamplesVB\SlideView\GettingStartedGallery.vb region=BindingPipsPager}}

````C#
this.radPipsPager1.NumberOfPages = 2;
        
````
````VB.NET
Me.radPipsPager1.NumberOfPages = 2

```` 

Then, you can handle the **SelectedIndexChanged** event to get notified when the user changes the selected **PipsPagerItem**. The **SelectedPipChangedEventArgs** gives access to the new and old pip.

````C#
private void RadPipsPager1_SelectedIndexChanged(object sender, Telerik.WinControls.UI.PipsPager.SelectedPipChangedEvent
{

    this.source.Position = e.NewIndex;
}     

````
````VB.NET
Private Sub RadPipsPager1_SelectedIndexChanged(ByVal sender As Object, ByVal _ As Telerik.WinControls.UI.PipsPager.SelectedPipChangedEvent)
    Me.source.Position = e.NewIndex
End Sub

```` 


## See Also
* [Overview]({%slug pipspager-overview%}) 
* [Getting Started]({%slug pipspager-getting-started%}) 
