---
title: Getting Started
page_title: Getting Started - WinForms BulletGraph Control
description: WinForms BulletGraph control is a variation of linear gauge. It combines a number of indicators, as well as the data indicator into one control, which is light weight, easily customizable and straightforward to setup and use.
slug: winforms/gauges/bulletgraph/getting-started
tags: getting,started
published: True
position: 3
previous_url: bulletgraph-getting-started
---

# Getting Started with WinForms BulletGraph

This article shows how you can start using **RadBulletGraph**.

## Adding Telerik Assemblies Using NuGet

To use `RadBulletGraph` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadBulletGraph

When you drag a __RadBulletGraph__ from the Toolbox and drop it onto the form, the gauge gallery will offer you to pick up the desired type:

>caption Figure 1: Gallery Types
![WinForms RadGauges Gallery Types](images/bulletgraph-getting-started001.png)

>note If you do not choose a gauge's style and just close the gallery, an empty __RadBulletGraph__ will be created.
>

You can change the gauge's style via the Smart tag's option Open Gallery as well.

>caption Figure 2: Smart Tag Gallery Options
![WinForms RadGauges Smart Tag Gallery Options](images/bulletgraph-getting-started002.png)

Once the control is added to the form you just need to synchronize the __FeaturedMeasure__ and __ComparativeMeasure__ values with your business logic values. For example you can see how the controls work with the following code:      

>caption Figure 3: Update Properties
![WinForms RadGauges Update Properties](images/bulletgraph-getting-started003.gif)

#### Update Properties

{{source=..\SamplesCS\Gauges\BulletGraphCode.cs region=test}} 
{{source=..\SamplesVB\Gauges\BulletGraphCode.vb region=test}}
````C#
Timer timer;
Random rand;
        
public BulletGraphCode()
{
    InitializeComponent();
    timer = new Timer();
    rand = new Random();
    timer.Interval = 1000;
    timer.Tick += timer_Tick;
    timer.Start();
}
     
void timer_Tick(object sender, EventArgs e)
{
    this.radBulletGraph1.FeaturedMeasure = rand.Next(100);
    this.radBulletGraph1.ComparativeMeasure = rand.Next(100);
}

````
````VB.NET
Private timer As Timer
Private rand As Random
Public Sub New()
    InitializeComponent()
    timer = New Timer()
    rand = New Random()
    timer.Interval = 1000
    AddHandler timer.Tick, AddressOf timer_Tick
    timer.Start()
End Sub
Private Sub timer_Tick(ByVal sender As Object, ByVal e As EventArgs)
    radBulletGraph1.FeaturedMeasure = rand.Next(100)
    radBulletGraph1.ComparativeMeasure = rand.Next(100)
End Sub

```` 



{{endregion}}  

>important Please note that when you select the style all elements will be automatically created and you can directly access them. You can create the control in code as well. More information is available in the following article:[Getting Started]({%slug winforms/gauges/lineargauge/getting-started%})
>

# See Also

* [Structure]({%slug winforms/gauges/bulletgraph/structure%})
* [Smart Tag]({%slug winforms/gauges/bulletgraph/smart-tag%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms BulletGraph Component](https://www.telerik.com/products/winforms/bulletgraph.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

