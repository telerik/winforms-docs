---
title: Getting Started
meta_title: WinForms SmartPasteButton Documentation - Getting Started
description: Learn how to get started with the Telerik UI for WinForms SmartPasteButton, an AI service to extract clipboard content and populate form or fields.
tags: smart paste, ai, clipboard, button, winforms, .net
published: True
position: 1
slug: smartpastebutton-getting-started
---

## Getting started with the SmartPasteButton

The **SmartPasteButton** is designed to work in conjunction with data-bound components such as **RadDataLayout**, **RadGridView**. It enables users to populate form fields with structured data extracted from unstructured text, streamlining data entry and reducing manual input. This example shows integration of SmartPasteButton with RadDataLayout.

### __Example: Defining a SmartPasteButton for a DataLayout__

When the user clicks the `RadSmartPasteButton`, it reads the text clipboard content. The control obtains the fields from the provider and raises `SmartPasteRequest` with a `SmartPasteButtonRequestContextEventArgs` instance.

1. Add the SmartPasteButton control to your form

To start using the **RadSmartPasteButton** control, just drag it from the Toolbox and drop it onto your form. Alternatively, you can add the control programmatically in your form's constructor or Load event handler.

````C#
RadSmartPasteButton smartPasteButton = new RadSmartPasteButton();

````
````VB.NET
Dim smartPasteButton As New RadSmartPasteButton()

````

![WF RadSmartPasteButton](images/smart-paste.png)

2.  Add add a `RadDataLayout` to display the fields that the button will populate. Add a **Copy to Clipboard** button to place unstructured text on the clipboard for the Smart Paste operation.

3. Set the `Provider` property to the container whose fields you want to populate. Handle the `SmartPasteRequest` event to send the clipboard content and field information to your AI service.

````C#
this.radSmartPasteButton.Provider = this.radDataLayout;

````
````VB.NET
Me.radSmartPasteButton.Provider = Me.radDataLayout

````

4. Handle the `SmartPasteRequest` event

`SmartPasteRequest` event occurs when a smart paste operation is requested. Subscribe to this event to initiate the smart paste logic.

The event arguments provide the clipboard text through `Content` and the available target fields through `Fields`. Send that information to an AI service that can return values keyed by the `SmartPasteButtonField.Field` identifiers. When the service returns, call `SetResponse` with the extracted values.

````C#
private async void RadSmartPasteButton_SmartPasteRequest(object sender, SmartPasteButtonRequestEventArgs e)
{
    try
    {
        var request = new { Content = e.Content, FormFields = e.Fields };
        var httpResponse = await new HttpClient().PostAsJsonAsync(
            "https://demos.telerik.com/service/v2/ai/smartpaste/smartpaste",
            request,
            e.CancellationToken);
        httpResponse.EnsureSuccessStatusCode();

        var response = await httpResponse.Content.ReadFromJsonAsync<SmartPasteResponse>(e.CancellationToken);
        e.SetResponse(response.FieldValues);
    }
    catch (OperationCanceledException)
    {
        e.Cancel();
    }
    catch (Exception ex)
    {
        e.SetError(ex);
    }
}

````
````VB.NET
Private Async Sub RadSmartPasteButton_SmartPasteRequest(sender As Object, e As SmartPasteButtonRequestEventArgs)
    Try
        Dim request = New With {.Content = e.Content, .FormFields = e.Fields}
        Dim httpResponse = Await New HttpClient().PostAsJsonAsync(
            "https://demos.telerik.com/service/v2/ai/smartpaste/smartpaste",
            request,
            e.CancellationToken)
        httpResponse.EnsureSuccessStatusCode()

        Dim response = Await httpResponse.Content.ReadFromJsonAsync(Of SmartPasteResponse)(e.CancellationToken)
        e.SetResponse(response.FieldValues)
    Catch ex As OperationCanceledException
        e.Cancel()
    Catch ex As Exception
        e.SetError(ex)
    End Try
End Sub

````

>tip Runnable example with the SmartPasteButton integration with DataLayout is available in our [Telerik UI for WinForms Demo](https://demos.telerik.com/winforms/). 

## Processing the Request

The `SmartPasteButtonRequestContextEventArgs` instance provides the data that the `SmartPasteRequest` event and `SmartPasteRequestCommand` require to process a smart paste operation. Send the clipboard text from `Content` and the available target fields from `Fields` to your AI service. The service must return values keyed by the `SmartPasteButtonField.Field` identifiers.

The following table lists the members that support a smart paste request.

| Property | Description |
| --- | --- |
| `Content` | The untrusted text content from the clipboard. Treat it as data when you construct prompts for an AI service. |
| `Fields` | The fields that the AI service must extract values for. |
| `CancellationToken` | A token that is canceled when the user cancels the operation. Pass the token to asynchronous operations. |
| `SetResponse` | Completes the request with a dictionary that maps field identifiers to extracted values. The control converts and applies the values through the provider. |
| `SetError` | Completes the request with an error. |
| `Cancel` | Cancels the request without applying values. |

>important Call `SetResponse` when the AI service returns the extracted values. Call `SetError` when the request fails, or `Cancel` when the operation is canceled. A second click while the button is processing a request cancels the operation and signals `CancellationToken`.

## Describing SmartPasteButtonField

Each `SmartPasteButtonField` identifies a target field and gives the AI service context for extracting a value. The provider returns these fields through `GetFields` and receives the final values through `SetFieldValue`.

The following table lists the field metadata available to the AI service.

| Property | Description |
| --- | --- |
| `Field` | The unique identifier that the response dictionary uses to map a value to a target field. |
| `Description` | A human-readable label that helps the AI service identify the field. |
| `AllowedValues` | The values that the field accepts. |
| `Type` | The full CLR type name for the field value. |
| `FieldType` | The CLR `Type` that the control uses to convert the returned value before assignment. |

Use `FieldType` to enable type conversion for common .NET types, including numbers, Boolean values, dates, times, GUIDs, and enumerations.

## Next Steps

* [Customizing the SmartPasteButton]({%slug smartpastebutton-appearance%})

## See Also

* [SmartPasteButton Overview]({%slug smartpastebutton-overview%})
* [Customizing the SmartPasteButton Appearance]({%slug smartpastebutton-appearance%})
* [RadDataLayout]({%slug winforms/datalayout/overview%})
* [RadGridView]({%slug winforms/gridview%})
