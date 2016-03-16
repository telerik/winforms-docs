---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/forms-and-dialogs/shapedform/getting-started
tags: getting,started
published: True
position: 1
previous_url: forms-and-dialogs-shapedform-getting-started
---

# Getting Started



## 

To add a __ShapedForm__ to your project: 

1\. Create a new Windows Application in Visual Studio.

2\. Make sure your project includes a reference to __Telerik.WinControls__ and __Telerik.WinControls.UI__ libraries.
			

>note You can add these references automatically by adding any RadControl to the form.
>


3\. Right-click the default form and select __View Code__.

4\. __If you are working in C#:__ Change the declaration of the form so that it derives from the __Telerik.WinControls.UI.ShapedForm__ class.

5\. __If you are working in Visual Basic:__

1. Click the __Show All Files__ button in Solution Explorer.

1. Expand the Form1.vb node in Solution Explorer. 

1. Open the Form1.Designer.vb file by double-clicking it.

1. Change the declaration in the Form1.Designer.vb file so that it derives from the __Telerik.WinControls.UI.ShapedForm__ class: 
      			
#### Changing WinForms form to Telerik ShapedForm 

{{source=..\SamplesCS\Forms and Dialogs\ShapedForm1.Designer.cs region=shapedForm}} 
{{source=..\SamplesVB\Forms and Dialogs\ShapedForm1.Designer.vb region=shapedForm}} 

````C#
partial class ShapedForm1 : Telerik.WinControls.UI.ShapedForm

````
````VB.NET
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ShapedForm1
    Inherits Telerik.WinControls.UI.ShapedForm

````

{{endregion}} 

10\. Return to the design view of the form. Visual Studio will repaint the form without a title bar, indicating that it is now being derived from the __ShapedForm__ class.

11\. Press __F5__ to run the project.
