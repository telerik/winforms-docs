---
title: Getting Started
page_title: Getting Started - WinForms Carousel Control
description: WinForms Carousel is a navigation control that animates a series of elements either by the user clicking a particular element or by clicking the forward and back arrows.
slug: winforms/carousel/getting-started
tags: carousel
published: True
position: 2
previous_url: carousel-getting-started
---

# Getting Started with WinForms Carousel

The minimum required to use __RadCarousel__ is:

* Create a path instance and assign it. The path defines the route, in three dimensions, that the carousel elements will appear to animate through. For example, you can have an elliptical path thats tilted back on a 45 degree angle. 
* Add some items to the carousel Items collection.


The example below demonstrates creating an elliptical path and populating the carousel items with button and label elements.

1\. In a new WinForms project, add a __RadCarousel__ to the default form. Set its __Dock__ property to *Fill*.
2\. Add the following code to the form's `Load` event handler:

{{source=..\SamplesCS\Carousel\CarouselGettingStarted.cs region=carouselGettingStarted}}
{{source=..\SamplesVB\Carousel\CarouselGettingStarted.vb region=carouselGettingStarted}}
````C#
private void CarouselGettingStarted_Load(object sender, EventArgs e)
{
    // define an elliptical path
    CarouselEllipsePath path = new CarouselEllipsePath();
    // put the center point of the path in the center of the form
    path.Center = new Telerik.WinControls.UI.Point3D(50, 50, 0);
    path.FinalAngle = -100;
    path.InitialAngle = -90;
    path.U = new Telerik.WinControls.UI.Point3D(-20, -17, -50);
    path.V = new Telerik.WinControls.UI.Point3D(30, -25, -60);
    this.radCarousel1.CarouselPath = path;
    // populate carousel items
    radCarousel1.Items.Add(new RadButtonElement("Products"));
    radCarousel1.Items.Add(new RadButtonElement("Services"));
    radCarousel1.Items.Add(new RadButtonElement("Consulting"));
    radCarousel1.Items.Add(new RadButtonElement("Support"));
    RadLabelElement label = new RadLabelElement();
    label.Text = "Preferences";
    label.Font = new Font("Arial", 7, FontStyle.Italic | FontStyle.Bold);
    radCarousel1.Items.Add(label);
}

````
````VB.NET
Private Sub CarouselGettingStarted_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    ' define an elliptical path
    Dim path As New CarouselEllipsePath()
    ' put the center point of the path in the center of the form
    path.Center = New Point3D(50, 50, 0)
    path.InitialAngle = -100
    path.FinalAngle = -90
    path.U = New Point3D(-20, -17, -50)
    path.V = New Point3D(30, -25, -60)
    RadCarousel1.CarouselPath = path
    ' populate carousel items
    RadCarousel1.Items.Add(New RadButtonElement("Products"))
    RadCarousel1.Items.Add(New RadButtonElement("Services"))
    RadCarousel1.Items.Add(New RadButtonElement("Consulting"))
    RadCarousel1.Items.Add(New RadButtonElement("Support"))
    Dim label As New RadLabelElement()
    label.Text = "Preferences"
    label.Font = New Font("Arial", 7, FontStyle.Italic Or FontStyle.Bold)
    RadCarousel1.Items.Add(label)
End Sub

````

{{endregion}}

3\. Press `F5` to run the application. You can use the button or directly click the items in order to select particular item.

![WinForms RadCarousel Getting Started](images/carousel-getting-started001.gif)

# See Also

 * [RadCarousel Properties]({%slug winforms/carousel/properties%})
 * [Working with items]({%slug  winforms/carousel/using-radcarousel/carousel-items%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
 * [Carousel Path]({%slug winforms/carousel/using-radcarousel/carousel-path%})


