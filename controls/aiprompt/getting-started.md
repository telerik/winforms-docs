---
title: Getting Started
page_title: Getting Started - WinForms AIPrompt Control
description: AIPrompt
slug: aiprompt-getting-started
tags: aiprompt, getting-started, design, programmatically
published: True
position: 3 
---

# Getting Started with WinForms AIPrompt

This article shows how you can start using RadAIPrompt. The following result will be achieved at the end of this tutorial:

![WinForms RadAIPrompt Getting Started](images/aiprompt-getting-started001.png)

>note The design may vary according to the applied theme to the application. 

## Adding Telerik Assemblies Using NuGet

To use `RadAIPrompt` when working with NuGet packages, install the `UI.for.WinForms.AllControls.{.Net version}` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When drag-droping a control from the Visual Studio (VS) ToolBox to the Form designer, VS will automatically add the required assemblies. In a case, you are manually adding the control programmatically, the following assemblies will need to be added manually:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Using RadAIPrompt

Follow the steps:

1\. Go ahead and add a __RadAIPrompt__ from the Visual Studio Toolbox.

2\. Subscribe to the **PromptRequest** event: When the user press the **Generate** input button, the PromptRequest event will be triggered. In the event handler, you can connect to a AI model API to generate a response. The event arguments in the event handler provide information about the input text and if the request is generate for the first time or initiated to retry an already generated response. 

You can create a new __AIPromptOutputItem__ instance and fill it with returned response from the AI model. Then, you can populate the __OutputItems__ collection of RadAIPrompt. This will create a new AIPromptOutputVisualItem in the Output view where you can interact with the response.

````C#
private void RadAIPrompt1_PromptRequest(object sender, Telerik.WinControls.UI.AIPrompt.PromptRequestEventArgs e)
{
    AIPromptOutputItem responseAIPromptOutputItemModel = new AIPromptOutputItem()
    {
        Title = "Response from your AI model",
        InputText = e.InputText,
        ResponseText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", // Here you can set the string value returned from your AI model
    };

    this.radAIPrompt1.OutputItems.Add(responseAIPromptOutputItemModel);
}

````
````VB.NET
Private Sub RadAIPrompt1_PromptRequest(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.AIPrompt.PromptRequestEventArgs)
    Dim responseAIPromptOutputItemModel As AIPromptOutputItem = New AIPromptOutputItem() With {
        .Title = "Response from your AI model",
        .InputText = e.InputText,
        .ResponseText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    }
    Me.radAIPrompt1.OutputItems.Add(responseAIPromptOutputItemModel)
End Sub

````

## User Interaction

The __AIPromptOutputItem__ element gives the end user ability to interact with the response of the AI model. The end user can copy the response, generate again the response or vote for it. When the user use one of these interaction options, the __OutputItemAction__ event will be called. Thus allowing the developer to catch the moment of the user interaction and pass it to the AI model.

````C#
private void AIPrompt_OutputItemAction(object sender, OutputItemActionEventArgs e)
{
    if (e.OutputItem.Rating != 0)
	{
		MyAIService.UpVoteResponse(e.OutputItem.Rating);
	}
}

````
````VB.NET

Private Sub AIPrompt_OutputItemAction(ByVal sender As Object, ByVal e As OutputItemActionEventArgs)
    If e.OutputItem.Rating <> 0 Then
        MyAIService.UpVoteResponse(e.OutputItem.Rating)
    End If
End Sub

````

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms AIPrompt Component](https://www.telerik.com/products/winforms/aiprompt.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

## See Also

* [AIPrompt Button]({%slug aiprompt-prompt-button%})
