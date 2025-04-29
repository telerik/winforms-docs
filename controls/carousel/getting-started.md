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

This article shows how you can start using **RadCarousel**.

## Adding Telerik Assemblies Using NuGet

To use `RadCarousel` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadCarousel

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



## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Carousel Component](https://www.telerik.com/products/winforms/carousel.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

