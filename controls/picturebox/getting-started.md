---
title: Getting Started
page_title: Getting Started - WinForms PictureBox Control
description: WinForms PictureBox is a control used to display images in different formats. Powered by Telerik UI for WinForms vector images engine and supports both raster & vector (SVG) images.
slug: radpicturebox-getting-started
tags: getting-started
published: True
position: 2
---

# Getting Started with WinForms PictureBox

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadPictureBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadPictureBox

To start using the control you only need to add a **RadPictureBox** control to the form either at design time by dragging it from the toolbox and dropping it into the form or via code. From the smart tag you can dock the control in parent's container.

By default, the control is shown with no image icon:

![WinForms RadPictureBox Default View](images/picturebox-getting-started001.png)

### Customize Default Look When there is No Image

You can use the **DefaultSvgImage/DefaultImage** and **DefaultText** properties to customize both the image icon and text according to your needs:

{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=DefaultImageAndText}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=DefaultImageAndText}} 

````C#
this.radPictureBox1.DefaultSvgImage = RadSvgImage.FromFile(@"..//..//PictureBox//noimage.svg");
this.radPictureBox1.DefaultText = "No image available";

````
````VB.NET
Me.RadPictureBox1.DefaultSvgImage = RadSvgImage.FromFile("..//..//PictureBox//noimage.svg")
Me.RadPictureBox1.DefaultText = "No image available"

````

{{endregion}}

![WinForms RadPictureBox Customize Default Look](images/picturebox-getting-started003.png)

### Load an Image

To load an image in **RadPictureBox** control you can use **SvgImage** or **Image** property:

-  **Load an image**:

{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=LoadImage}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=LoadImage}} 

````C#
this.radPictureBox1.Image = Image.FromFile(@"..//..//PictureBox//emoticon-happy.png");

````
````VB.NET
Me.RadPictureBox1.Image = Image.FromFile("..//..//PictureBox//emoticon-happy.png")

````

{{endregion}}

- **Load SVG image**:

{{source=..\SamplesCS\PictureBox\PictureBoxGettingStarted.cs region=LoadSvgImage}} 
{{source=..\SamplesVB\PictureBox\PictureBoxGettingStarted.vb region=LoadSvgImage}} 

````C#
this.radPictureBox1.SvgImage = RadSvgImage.FromFile(@"..//..//PictureBox//emoticon-happy.svg");

````
````VB.NET
Me.RadPictureBox1.SvgImage = RadSvgImage.FromFile("..//..//PictureBox//emoticon-happy.svg")

````

{{endregion}}

![WinForms RadPictureBox Load an Image](images/picturebox-getting-started002.png)


## See Also

* [Overview]({%slug radpicturebox-overview%})
* [Structure]({%slug radpicturebox-structure%})


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Picturebox Component](https://www.telerik.com/products/winforms/picturebox.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

