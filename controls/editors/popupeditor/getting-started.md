---
title: Getting Started
page_title: Getting Started - WinForms PopupEditor Control
description: WinForms PopupEditor allows you to show any predefined or custom controls in its popup. 
slug: winforms/editors/popupeditor/getting-started
tags: getting,started
published: True
position: 1
previous_url: eidtors-popupeditor-getting-started
---

# Getting Started with WinForms PopupEditor

This article shows how you can start using **RadPopupEditor**.

## Adding Telerik Assemblies Using NuGet

To use `RadPopupEditor` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadPopupEditor

This article shows how you can start using __RadPopupEditor__. Go ahead and add __RadPopupEditor__ and __RadPopupContainer__ to a form. The result should look like in Figure 1.
      
>caption Figure 1: RadPopupEditor and RadPopupCintainer at design time.

![WinForms RadPopupEditor and RadPopupCintainer at design time](images/eidtors-popupeditor-getting-started001.png)

Add three text boxes, four labels and two buttons to the __RadPopupContainer__. Arrange the controls like in Figure 2.
        
>caption Figure 2: Sample Layout.

![WinForms RadPopupEditor Sample Layout](images/eidtors-popupeditor-getting-started002.png)

Add __Click__ event handlers for the both buttons and then use the following code in them:

#### Buttons event handlers 

{{source=..\SamplesCS\Editors\PopupEditor\PopupEditorCode.cs region=EventHandlers}} 
{{source=..\SamplesVB\Editors\PopupEditor\PopupEditorCode.vb region=EventHandlers}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    this.radPopupEditor1.Text = radTextBox1.Text + " " + radTextBox2.Text;
    radPopupEditor1.PopupEditorElement.ClosePopup();
}
private void radButton2_Click(object sender, EventArgs e)
{
    this.radPopupEditor1.Text = "";
    radTextBox1.Text = "";
    radTextBox2.Text = "";
    radTextBox3.Text = "";
    radPopupEditor1.PopupEditorElement.ClosePopup();
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Me.radPopupEditor1.Text = radTextBox1.Text & " " & radTextBox2.Text
    radPopupEditor1.PopupEditorElement.ClosePopup()
End Sub
Private Sub radButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
    Me.radPopupEditor1.Text = ""
    radTextBox1.Text = ""
    radTextBox2.Text = ""
    radTextBox3.Text = ""
    radPopupEditor1.PopupEditorElement.ClosePopup()
End Sub

````

{{endregion}} 

This way when __Submit__ is pressed the name will be displayed in the control's text box.
        
>caption Figure 3: The final result.

![WinForms RadPopupEditor Getting Started](images/eidtors-popupeditor-getting-started003.gif)

## See Also

* [How to Use RadPopupEditor as a Custom Editor in RadGridView]({%slug use-popup-editor-as-gridview-editor%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms PopupEditor Component](https://www.telerik.com/products/winforms/popupeditor.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

