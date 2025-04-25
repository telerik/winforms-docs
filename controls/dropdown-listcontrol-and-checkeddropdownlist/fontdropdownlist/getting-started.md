---
title: Getting Started
page_title: Getting Started - RadFontDropDownList
description: RadDropDownList is an enhanced alternative to the standard Windows Forms combo box control.
slug: winforms/editors/fontdropdownlist/getting-started
tags: getting,started
published: True
position: 3 
---

# Getting Started with WinForms FontDropDownList

This article shows how you can start using **RadFontDropDownList**.

## Adding Telerik Assemblies Using NuGet

To use `RadFontDropDownList` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadFontDropDownList

The following tutorial demonstrates how to add a **RadFontDropDownList** and how to retrieve the selected font.

1. Add a **RadFontDropDownList** and a **RadLabel** to a form. 
2. Set some text to the **RadLabel** via the Properties section in Visual Studio.

	![WinForms RadFontDropDownList Getting Started](images/fontdropdownlist-getting-started001.png)

3. Set the **DropDownStyle** property for the **RadFontPopupEditorElement** via the *Element hierrachy editor*:
 
	![WinForms RadFontDropDownList DropDownStyle](images/fontdropdownlist-getting-started002.png)

5. Subscribe to the **SelectedFontChanged** event and use the following code snippet:
            
{{source=..\SamplesCS\Editors\FontDropDownList.cs region=ChangeFont}} 
{{source=..\SamplesVB\Editors\FontDropDownList.vb region=ChangeFont}} 

````C#
private void radFontDropDownList1_SelectedFontChanged(object sender, EventArgs e)
{
    FontFamily ff = new FontFamily(this.radFontDropDownList1.SelectedFont);
    if (ff.IsStyleAvailable(FontStyle.Regular))
    {
        Font font = new Font(ff.Name, 10, FontStyle.Regular);
        this.radLabel1.Font = font;
    }
    else
    {
        foreach (FontStyle style in Enum.GetValues(typeof(FontStyle)))
        {
            if (ff.IsStyleAvailable(style))
            {
                Font font = new Font(ff.Name, 10, style);
                this.radLabel1.Font = font;
                break;
            }
        }
    }
}

````
````VB.NET
Private Sub radFontDropDownList1_SelectedFontChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim ff As FontFamily = New FontFamily(Me.RadFontDropDownList1.SelectedFont)
    If ff.IsStyleAvailable(FontStyle.Regular) Then
        Dim font As Font = New Font(ff.Name, 10, FontStyle.Regular)
        Me.radLabel1.Font = font
    Else
        For Each style As FontStyle In [Enum].GetValues(GetType(FontStyle))
            If ff.IsStyleAvailable(style) Then
                Dim font As Font = New Font(ff.Name, 10, style)
                Me.radLabel1.Font = font
                Exit For
            End If
        Next
    End If
End Sub

````

{{endregion}} 

![WinForms RadFontDropDownList SelectedFont](images/fontdropdownlist-getting-started003.gif)
 
This is it! Now, the change in the selection of the **RadFontDropDownList** instance will be reflected on **RadLabel**'s font.

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms FontDropDownList Component](https://www.telerik.com/products/winforms/fontdropdownlist.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

