---
title: Getting Started
page_title: Getting Started - WinForms AutoCompleteBox Control
description: WinForms AutoCompleteBox can automatically complete the input string by comparing the prefix being entered to the prefix of all strings in the maintained source.
slug: winforms/editors/autocompletebox/getting-started
tags: getting,started
published: True
position: 3
previous_url: editors-autocompletebox-getting-started
---

# Getting Started with WinForms AutoCompleteBox

This article shows how you can start using **RadAutoCompleteBox**.

| RELATED VIDEOS |  |
| ------ | ------ |
|[Getting Started with RadAutoCompleteBox for WinForms](http://tv.telerik.com/watch/radcontrols-for-winforms/getting-started-with-radautocompletebox-for-winforms)<br>RadAutoCompleteBox allows the end-user to easily fill-in text thanks to auto-complete functionality and tokens of text. This behavior is similar to the “To” field of Outlook and Facebook where you are filling-in the recipients to which you are going to send a new message.|![WinForms RadAutoCompleteBox Getting Started Tutorial](images/editors-autocompletebox-getting-started004.png)|

## Adding Telerik Assemblies Using NuGet

To use `RadAutoCompleteBox` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadAutoCompleteBox

The __RadAutoCompleteBox__ allows your users to select multiple items from a predefined list, using auto completion as they type. You may have seen a similar type of text entry when filling in the recipient’s field, while sending messages on Facebook. __RadAutoCompleteBox__ inherits all features of [RadTextBoxControl]({%slug winforms/editors/textboxcontrol%}).
        

Each tokenized text block is separated by character, specified by the __Delimiter__ property. You can change the __Delimiter__ at any time.
         
The code below sets text in the control at run time: 

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=SetText}} 
{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=SetText}} 

````C#
private void SetText()
{
    this.radAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;";
}

````
````VB.NET
Private Sub SetText()
    Me.RadAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;"
End Sub

````

{{endregion}} 
 
>caption Figure 1: Set the text of RadAutoCompleteBox.

![WinForms RadAutoCompleteBox Text of RadAutoCompleteBox](images/editors-autocompletebox-getting-started001.png)

You can determine the visibility of the remove button by changing the __ShowRemoveButton__ property: 

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=ShowRemoveButton}} 
{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=ShowRemoveButton}} 

````C#
this.radAutoCompleteBox1.ShowRemoveButton = false;

````
````VB.NET
Me.RadAutoCompleteBox1.ShowRemoveButton = False

````

{{endregion}} 

>caption Figure 2: The Tokenized items are not showing the close button.

![WinForms RadAutoCompleteBox Tokenized Items Not showing the Close Button](images/editors-autocompletebox-getting-started002.png)


## See Also

* [Caret Positioning and Selection]({%slug winforms/editors/autocompletebox/caret-positioning-and-selection%})
* [Creating Custom Blocks]({%slug winforms/editors/autocompletebox/creating-custom-blocks%})
* [Element Structure and Document Object Model]({%slug winforms/editors/autocompletebox/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/autocompletebox/formatting-blocks%})
* [Text Editing]({%slug winforms/editors/autocompletebox/text-editing%})
* [Auto-Complete]({%slug winforms/editors/autocompletebox/auto-complete%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms AutoCompleteBox Component](https://www.telerik.com/products/winforms/autocompletebox.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

