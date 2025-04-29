---
title: Getting Started (RadMenuItems)
page_title: Getting Started (RadMenuItems) - RadShortcut
description: Almost each application uses the so called “Shortcuts” – a keyboard combination that triggers a specific action.
slug: winforms/shortcuts/getting-started-(radmenuitems)
tags: getting,started,(radmenuitems)
published: True
position: 1
previous_url: shortcuts-getting-started-(radmenuitems)
---

# Getting Started with WinForms Shortcuts (RadMenuItems)

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadShortcut` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadShortcut

1\. In a new Windows Application add a **RadMenu** to the form.

2\. On the **RadMenu** that reads "*Type here*" enter "*New*". This will automatically create a menu item object "radMenuItem1":

![WinForms RadShortcuts Design Time](images/shortcuts-getting-started-(radmenuitems)001.png)

3\. Click and the newly created item to open the drop down menu and create a sub menu item. By default, the text of the new item will be set to *radMenuItem2*. Change it to *File*:

![WinForms RadShortcuts Created MenuItem Design Time](images/shortcuts-getting-started-(radmenuitems)002.png)

4\. In the *Properties* Window locate the **Click** events for **radMenuItem1** and **radMenuItem2** and double-click them to create event handlers.

5\. Inside the event handlers add the following code:

{{source=..\SamplesCS\Shortcuts\Form2.cs region=handlingClickEvent}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=handlingClickEvent}} 

````C#
void radMenuItem1_Click(object sender, EventArgs e)
{
    MessageBox.Show("New");
}
void radMenuItem2_Click(object sender, EventArgs e)
{
    MessageBox.Show("File");
}

````
````VB.NET
Private Sub radMenuItem1_Click(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("New")
End Sub
Private Sub radMenuItem2_Click(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("File")
End Sub

````

{{endregion}} 

6\. Now, all you have to do is to add the shortcuts to the desired items

{{source=..\SamplesCS\Shortcuts\Form2.cs region=menuShortcuts}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=menuShortcuts}} 

````C#
this.radMenuItem1.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.N));
this.radMenuItem2.Shortcuts.Add(new RadShortcut(Keys.Shift, Keys.F, Keys.K));

````
````VB.NET
Me.RadMenuItem1.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.N))
Me.RadMenuItem2.Shortcuts.Add(New RadShortcut(Keys.Shift, Keys.F, Keys.K))

````

{{endregion}} 

>note In the constructor of **RadShortcut**, you should first pass the key modifier as a parameter and then an array of the key mappings.
>

As a result, you will get this picture at run time. As you can see, the shortcuts are automatically displayed for the **RadMenuItems**:

![WinForms RadShortcuts Add Shortcut](images/shortcuts-getting-started-(radmenuitems)003.png)

Interesting functionality to mention is the ability to set your own custom text to describe the shortcut added. This can be achieved via the __HintText__ property of the menu item:

#### Specifying HintText

{{source=..\SamplesCS\Shortcuts\Form2.cs region=SetHintText}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=SetHintText}} 

````C#
radMenuItem2.HintText = "Custom Text";

````
````VB.NET
RadMenuItem2.HintText = "Custom Text"

````

{{endregion}} 

![WinForms RadShortcuts Specifying HintText](images/shortcuts-getting-started-(radmenuitems)004.png)

# See Also

* [Getting Started (RadButtons)]({%slug winforms/shortcuts/getting-started-(radbuttons)%})	
* [Assigning Global RadShortcuts]({%slug winforms/shortcuts/assigning-global-radshortcuts%})	

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Shortcuts Component](https://www.telerik.com/products/winforms/shortcuts.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

