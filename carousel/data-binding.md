---
title: Data Binding
page_title: Data Binding | UI for WinForms Documentation
description: Data Binding
slug: winforms/carousel/using-radcarousel/data-binding
tags: data,binding
published: True
position: 3
previous_url: carousel-using-radcarousel-data-binding, carousel/using-radcarousel/data-binding
---

# Data Binding

To bind data to __RadCarousel__:

* Set the __DataSource__ property.
          
* Handle the __NewCarouselItemCreating__ event. In the event handler, create a __RadItem__ descendant instance.
          
* Handle the __ItemDataBound__ event. In this event you have access to both the data item and to the __RadItem__ instance.
          
This same pattern holds true, regardless of the type of data being bound to.

## Example

The example below creates a generic list of an object called "Feature". "Feature" has "ID" and "Name" properties. In the __NewCarouselItemCreating__ event handler, `RadButtonElement` instances are created. In the __ItemDataBound__ event handler, the button text is assigned the "Name" property of the "Feature" object. The "ID" property of the "Feature" object is stored in the `RadButtonElement` __Tag__ property for later use in the `Click` event handler.

![carousel-using-radcorousel-carousel-data-binding 001](images/carousel-using-radcorousel-carousel-data-binding001.png)

#### The Features Object

{{source=..\SamplesCS\Carousel\CarouselDataBinding.cs region=createGenericListClass}} 
{{source=..\SamplesVB\Carousel\CarouselDataBinding.vb region=createGenericListClass}} 

````C#
public class Features
{
    public Features(int id, string name)
    {
        _id = id;
        _name = name;
    }
    private int _id;
    public int ID
    {
        get
        {
            return _id;
        }
        set
        {
            _id = value;
        }
    }
    private string _name;
    public string Name
    {
        get
        {
            return _name;
        }
        set
        {
            _name = value;
        }
    }
}

````
````VB.NET
Public Class Features
    Public Sub New(ByVal id As Integer, ByVal name As String)
        _id = id
        _name = name
    End Sub
    Private _id As Integer
    Public Property ID() As Integer
        Get
            Return _id
        End Get
        Set(ByVal value As Integer)
            _id = value
        End Set
    End Property
    Private _name As String
    Public Property Name() As String
        Get
            Return _name
        End Get
        Set(ByVal value As String)
            _name = value
        End Set
    End Property
End Class

````

{{endregion}} 


#### Binding RadCarousel to Generic List

{{source=..\SamplesCS\Carousel\CarouselDataBinding.cs region=bindingCarousel}} 
{{source=..\SamplesVB\Carousel\CarouselDataBinding.vb region=bindingCarousel}} 

````C#
private void CarouselDataBinding_Load(object sender, EventArgs e)
{
    // Describe the carousel path
    CarouselBezierPath path = new CarouselBezierPath();
    path.CtrlPoint1 = new Telerik.WinControls.UI.Point3D(86, 76, 70);
    path.CtrlPoint2 = new Telerik.WinControls.UI.Point3D(10, 20, 0);
    path.FirstPoint = new Telerik.WinControls.UI.Point3D(14, 77, 70);
    path.LastPoint = new Telerik.WinControls.UI.Point3D(90, 20, 0);
    path.ZScale = 500;
    this.radCarousel1.CarouselPath = path;
    radCarousel1.ItemDataBound += new ItemDataBoundEventHandler(radCarousel1_ItemDataBound);
    radCarousel1.NewCarouselItemCreating += new NewCarouselItemCreatingEventHandler(radCarousel1_NewCarouselItemCreating);
    this.Click += new EventHandler(CarouselDataBinding_Click);
    // Create a generic list of Feature objects and bind it
    List<Features> products = new List<Features>();
    products.Add(new Features(1, "Products"));
    products.Add(new Features(2, "Services"));
    products.Add(new Features(3, "Consulting"));
    radCarousel1.DataSource = products;
}
private void radCarousel1_ItemDataBound(object sender, ItemDataBoundEventArgs e)
{
    if (e.DataBoundItem is RadButtonElement)
    {
        // get the RadButtonElement created in the NewCarouselItemCreating event.
        // The RadItem is represented by the e.DataBoundItem property.
        // Assign properties based on bound data - represented by e.DataItem
        RadButtonElement button = (e.DataBoundItem as RadButtonElement);
        button.Text = (e.DataItem as Features).Name;
        button.Tag = (e.DataItem as Features).ID;
        button.Font = new Font("Arial", 20);
        button.Click += new EventHandler(CarouselDataBinding_Click);
    }
}
private void radCarousel1_NewCarouselItemCreating(object sender, NewCarouselItemCreatingEventArgs e)
{
    e.NewCarouselItem = new RadButtonElement();
}
void CarouselDataBinding_Click(object sender, EventArgs e)
{
    MessageBox.Show("You clicked ID " + (sender as RadButtonElement).Tag.ToString());
}

````
````VB.NET
Private Sub CarouselDataBinding_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Me.Load
    ' Describe the carousel path
    Dim CarouselBezierPath1 As Telerik.WinControls.UI.CarouselBezierPath = New Telerik.WinControls.UI.CarouselBezierPath
    CarouselBezierPath1.CtrlPoint1 = New Telerik.WinControls.UI.Point3D(86, 76, 70)
    CarouselBezierPath1.CtrlPoint2 = New Telerik.WinControls.UI.Point3D(10, 20, 0)
    CarouselBezierPath1.FirstPoint = New Telerik.WinControls.UI.Point3D(14, 77, 70)
    CarouselBezierPath1.LastPoint = New Telerik.WinControls.UI.Point3D(90, 20, 0)
    CarouselBezierPath1.ZScale = 500
    Me.RadCarousel1.CarouselPath = CarouselBezierPath1
    AddHandler RadCarousel1.ItemDataBound, AddressOf radCarousel1_ItemDataBound
    AddHandler RadCarousel1.NewCarouselItemCreating, AddressOf radCarousel1_NewCarouselItemCreating
    AddHandler Me.Click, AddressOf Form1_Click
    ' Create a generic list of Feature objects and bind it
    Dim products As New List(Of Features)()
    products.Add(New Features(1, "Products"))
    products.Add(New Features(2, "Services"))
    products.Add(New Features(3, "Consulting"))
    RadCarousel1.DataSource = products
End Sub
Private Sub radCarousel1_ItemDataBound(ByVal sender As Object, ByVal e As ItemDataBoundEventArgs)
    If TypeOf e.DataBoundItem Is RadButtonElement Then
        ' get the RadButtonElement created in the NewCarouselItemCreating event.
        ' The RadItemis represented by the e.DataBoundItem property.
        ' Assign properties based on bound data - represented by e.DataItem
        Dim button As RadButtonElement = (TryCast(e.DataBoundItem, RadButtonElement))
        button.Text = (TryCast(e.DataItem, Features)).Name
        button.Tag = (TryCast(e.DataItem, Features)).ID
        button.Font = New Font("Arial", 20)
        AddHandler button.Click, AddressOf Form1_Click
    End If
End Sub
Private Sub radCarousel1_NewCarouselItemCreating(ByVal sender As Object, ByVal e As NewCarouselItemCreatingEventArgs)
    e.NewCarouselItem = New RadButtonElement()
End Sub
Sub Form1_Click(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("You clicked ID " + (TryCast(sender, RadButtonElement)).Tag.ToString())
End Sub

````

{{endregion}} 


# See Also

 * [Customize Appearance]({%slug winforms/carousel/customizing-appearance%})
 * [Working with items]({%slug  winforms/carousel/using-radcarousel/carousel-items%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
 * [Carousel Path]({%slug winforms/carousel/using-radcarousel/carousel-path%})
