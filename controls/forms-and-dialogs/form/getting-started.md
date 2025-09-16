---
title: Getting Started
page_title: Getting Started - WinForms Form
description: Learn different ways to utilize the RadForm control.
slug: winforms/forms-and-dialogs/form/getting-started
tags: getting,started
published: True
position: 2
previous_url: forms-and-dialogs-form-getting-started
---

# Getting Started with WinForms Form
 
This article shows how you can start using **RadForm**.

## Adding Telerik Assemblies Using NuGet

To use `RadForm` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadForm
 
### Adding RadForm to your Project

The following tutorial shows the different ways to utilize the __RadForm__ control.
        

To add a __RadForm__ control to your project you can either choose the __RadForm Template__ from the project's *'Add New Item...'* dialog or create a standard Windows Form and change its base class to __Telerik.WinControls.UI.RadForm__. In the following example we will create a __RadForm__ by manually changing the base class of a standard Windows Form:
        

Changing the base class of a standard Windows Form to RadForm in C#:

1. Create a new Windows Forms Application in Visual Studio

1. Make sure that your project includes references to the following assemblies:

* **Telerik.WinControls**
	
* **Telerik.WinControls.UI**

1. Right-click the default form created in the project and select the __View Code__ option.
            

1. If you are working in C#: Change the declaration of the form so that it derives from the __Telerik.WinControls.UI.RadForm__ class
        
````C#
partial class Form1 : Telerik.WinControls.UI.RadForm

````

Changing the base class of a standard Windows Form to **RadForm** in VB.NET:

1. Click the __Show All Files__ button in the Solution Explorer
            

1. Expand the __Form1.vb__ node in the Solution Explorer
            

1. Open the __Form1.Designer.vb__ file by double-clicking it
            

1. Change the declaration in the __Form1.Designer.vb__ file so that it derives from the __Telerik.WinControls.UI.RadForm__ class:

````VB.NET
		Partial Class Form1
    		Inherits Telerik.WinControls.UI.RadForm
````

Return to the __Design View__ of the form. Visual Studio will repaint the form and the __ControlDefault (Office2007Blue)__ theme will be applied to the form. __RadForm__ is ready for use:

	![WinForms RadForm Design View](images/forms-and-dialogs-form-getting-started001.png)

### Applying a Theme to your Form

To apply a theme to RadForm, you should first drag-and-drop the desired Theme Component from the Visual Studio Toolbox onto your form. By doing this, the new theme will automatically become available for all Telerik UI for WinForms controls including __RadForm:__

1. From the Visual Studio Toolbox drag the __Office2007Black__ component and drop it on your __RadForm__ 
	
	![WinForms RadForm VS Toolbox Office2007Black](images/forms-and-dialogs-form-getting-started002.png)

1. In the Properties Window set the __ThemeName__ property of the Form to *'Office2007Black'*
	
	![WinForms RadForm ThemeName](images/forms-and-dialogs-form-getting-started003.png)


## See Also 

* [Accessing RadForm Elements]({%slug winforms/forms-and-dialogs/form/accessing-radform-elements%})
* [Properties, Methods and Events]({%slug winforms/forms-and-dialogs/form/properties-methods-events%})

## Telerik UI for WinForms Learning Resources

* [Telerik UI for WinForms Form Component](https://www.telerik.com/products/winforms/form.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

