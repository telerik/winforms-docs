---
title: Getting Started
page_title: Getting Started - WinForms ColorDialog
description: WinForms ColorDialog is a lightweight UI component that allows users to select from RGB or HEX color models.
slug: winforms/forms-and-dialogs/colordialog/getting-started
tags: getting,started
published: True
position: 3
previous_url: forms-and-dialogs-colordialog-getting-started
---

# Getting Started with WinForms ColorDialog

The following tutorial demonstrates configuring the __RadColorDialog__, localizing tab labeling and responding to the __OK__ button click.

>caption Figure 1: Getting Started with RadColorDialog

![WinForms RadColorDialog Getting Started](images/forms-and-dialogs-colordialog-getting-started001.png)

1\. Drop a __RadColorDialog__ on the form.

2\. Set the ColorDialogForm.__ShowBasicColors__ property to *false*.

3\. Set the ColorDialogForm.__ShowProfessionalColors__ property to *false*.

4\. Set the ColorDialogForm.__ShowHEXColorsValue__ property to *false*. 

5\. Set the ColorDialogForm.__AllowPickColorFromScreen__ property to *false*.

6\. Set the ColorDialogForm.__ShowCustomColors__ property to *false*.

7\. Change the ColorDialogForm.__WebTabHeading__ property to read *Named Web Colors*.

8\. Get the __SelectedColor__ or __SelectedHlsColor__, check the returned __DialogResult__:

#### Check the selected values in RadColorDialog 

{{source=..\SamplesCS\Forms and Dialogs\ColorDialog1.cs region=getTheSelectedColors}} 
{{source=..\SamplesVB\Forms and Dialogs\ColorDialog1.vb region=getTheSelectedColors}} 

````C#
if (radColorDialog1.ShowDialog() == DialogResult.OK)
{
    Color color = radColorDialog1.SelectedColor;
    HslColor hslColor = radColorDialog1.SelectedHslColor;
}

````
````VB.NET
If RadColorDialog1.ShowDialog() = DialogResult.OK Then
    Dim color As Color = RadColorDialog1.SelectedColor
    Dim hslColor As Telerik.WinControls.HslColor = RadColorDialog1.SelectedHslColor
End If

````

{{endregion}} 

9\. Press __F5__ to run the application.

# See Also

* [Usability]({%slug winforms/forms-and-dialogs/colordialog/usability%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms ColorDialog Component](https://www.telerik.com/products/winforms/colordialog.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

