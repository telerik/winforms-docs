---
title: Getting Started
page_title: Getting Started - WinForms SpellChecker Control
description: WinForms SpellChecker enables developers to add multilingual spell checking capabilities to their WinForms applications.
slug: winforms/spellchecker/getting-started
tags: getting,started
published: True
position: 1
previous_url: spellchecker-getting-started
---

# Getting Started with WinForms SpellChecker

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadSpellChecker` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.SpellChecker__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadSpellChecker

The following tutorial demonstrates how you can make **RadSpellChecker** check a simple text-editing control - **RadTextBox**.
       
>important Before executing the following steps, please make sure that the target framework of the project in which you are going to use **RadSpellChecker** is .NET Framework 4.0. This will allow you to see **RadSpellChecker** in your Toolbox and work with it.
>
 
1\. Drag and drop **RadTextBox** from your Toolbox to your form.

2\. Drag and drop **RadSpellChecker** from your Toolbox to your form.

3\. Drag and drop **RadButton** from your Toolbox to your form. When clicked this button will invoke the spell-checking capabilities of **RadSpellChecker**.       

4\. Set the text of **RadTextBox** so that it contains some typos, for example:

#### Initialize RadTextBox with some text

{{source=..\SamplesCS\SpellChecker\SpChGettingStarted.cs region=settingText}} 
{{source=..\SamplesVB\SpellChecker\SpChGettingStarted.vb region=settingText}} 

````C#
this.radTextBox1.Text = "The quik broun foxx jumpd ovur lasy dog";

````
````VB.NET
Me.RadTextBox1.Text = "The quik broun foxx jumpd ovur lasy dog"

````

{{endregion}} 


5\. Subscribe to the **Click** event of **RadButton**. In the event handler call the **Check** method of **RadSpellChecker** and pass the **RadTextBox** instance as a parameter:

#### Spellcheck the RadTextBox

{{source=..\SamplesCS\SpellChecker\SpChGettingStarted.cs region=callingCheck}} 
{{source=..\SamplesVB\SpellChecker\SpChGettingStarted.vb region=callingCheck}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    this.radSpellChecker1.Check(this.radTextBox1);
}

````
````VB.NET
Private Sub RadButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadButton1.Click
    Me.RadSpellChecker1.Check(Me.RadTextBox1)
End Sub

````

{{endregion}} 

Now when you press the button, **RadSpellChecker** form will appear with the appropriate suggestions for the mistaken words:

>caption Figure 1: Spellchecking Form

![WinForms RadSpellChecker Spellchecking Form](images/spellchecker-overview001.png)

## See Also

* [Spellchecking Modes]({%slug winforms/spellchecker/spellchecking-modes%})	



## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Spellchecker Component](https://www.telerik.com/products/winforms/spellchecker.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

