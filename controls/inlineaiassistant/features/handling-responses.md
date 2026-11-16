---
title: Handling Responses
page_title: WinForms Inline AI Assistant - Responses, Streaming, and Cancellation
description: Handle Telerik UI for WinForms RadInlineAIAssistant prompt requests, display complete or streamed responses, report service failures, and cancel asynchronous work safely.
components: ["inlineaiassistant"]
slug: inlineaiassistant-handling-responses
tags: winforms,inlineaiassistant,radinlineaiassistant,responses,streaming,cancellation,errors,prompt
published: True
position: 8
---

# Handling Inline AI Assistant Responses

Telerik UI for WinForms `RadInlineAIAssistant` raises `PromptRequest` when the user submits a prompt or selects a command. Your application calls its chosen AI service and supplies a response through the request event data.

The examples use the `Telerik.WinControls.UI` namespace and an assistant configured as shown in [Getting Started]({%slug inlineaiassistant-getting-started%}). Register one request handler for the response strategy you choose.

## Supplying a Complete Response

Call `e.SetResponse(string)` to display the result and end processing. The following handler supplies local sample text without contacting an AI service.

**Returning an immediate response**

```C#
private void OnPromptRequest(object sender, InlineAIAssistantPromptRequestEventArgs e)
{
    e.SetResponse("This is a local sample response.");
}
```
```VB.NET
Private Sub OnPromptRequest(sender As Object, e As InlineAIAssistantPromptRequestEventArgs)
    e.SetResponse("This is a local sample response.")
End Sub
```

The event data supports `SetResponse` after an `await`. Catch exceptions inside an asynchronous event handler and report failures through `e.FailResponse(error)`.

`Prompt` contains the submitted instruction. `SelectedText` is captured at submission; `FullText` is retrieved on first access. Read `FullText` on the UI thread before passing it to background work. Send only the host context your service requires.

## Streaming a Response

Call `e.AppendResponse(chunk)` for each chunk and `e.CompleteResponse()` after the last chunk. These request-specific methods ignore late updates after completion, failure, cancellation, or replacement by a newer request.

The following example simulates streaming with local chunks. Add `System` and `System.Threading.Tasks` imports. Replace the delay and sample chunks with your service integration.

**Appending response chunks asynchronously**

```C#
private async void OnPromptRequest(object sender, InlineAIAssistantPromptRequestEventArgs e)
{
    try
    {
        string[] chunks = { "This is ", "a streamed ", "sample response." };
        foreach (string chunk in chunks)
        {
            await Task.Delay(150, e.CancellationToken);
            e.AppendResponse(chunk);
        }

        e.CompleteResponse();
    }
    catch (OperationCanceledException) when (e.CancellationToken.IsCancellationRequested)
    {
        return;
    }
    catch (Exception error)
    {
        e.FailResponse(error);
    }
}
```
```VB.NET
Private Async Sub OnPromptRequest(sender As Object, e As InlineAIAssistantPromptRequestEventArgs)
    Try
        Dim chunks As String() = {"This is ", "a streamed ", "sample response."}
        For Each chunk As String In chunks
            Await Task.Delay(150, e.CancellationToken)
            e.AppendResponse(chunk)
        Next

        e.CompleteResponse()
    Catch canceled As OperationCanceledException When e.CancellationToken.IsCancellationRequested
        Return
    Catch requestError As Exception
        e.FailResponse(requestError)
    End Try
End Sub
```

Submit requests on the UI thread so the assistant captures the UI synchronization context. The event data's response methods can then deliver updates from asynchronous callbacks.

## Canceling and Reporting Errors

Pass `e.CancellationToken` to asynchronous service operations. The assistant cancels the request when the user stops generation, the popup closes, or another request starts. A vetoed close keeps the request running.

Use the following methods according to the intended action:

| Method | Effect |
| --- | --- |
| `e.FailResponse(error)` | Ends processing, displays a localized generic error, and disables Insert and Replace for that error response. It does not display the exception message. |
| `assistant.CancelRequest()` | Cancels active work without closing the popup. Text already received remains available and can become an actionable response. |
| `assistant.ClearResponse()` | Clears the text and hides the response area. It does not cancel an active request. |
| `assistant.Discard()` | Cancels the request, clears the response, and returns focus to the prompt while keeping the popup open. |

Prefer the event data's methods for asynchronous producers. The component's tokenless `AppendResponse`, `CompleteResponse`, and `FailResponse` methods target whichever request is current when called. Their token-bearing overloads are an alternative when you retain the original request token.

## Applying and Displaying a Response

The response area displays text above the prompt input, with **Insert**, **Replace**, and **Discard** actions. Insert and Replace require the response state and approval from the interaction provider. Error text and text still being generated cannot be applied through those actions.

Insert and Replace edit the host and request a close. Discard clears the response and keeps the assistant open. Handle `ResponseActionExecuting` to change the response text or cancel an action before it is applied.

Setting the component's `ResponseText` directly cancels the current request and displays a nonempty value as a completed response. Use this for application-supplied content outside a request, not for updates from an older asynchronous operation.

`ResponseMaxHeight` limits the scrollable response area. Customize its TPF elements through `InlineAIAssistantElement.ResponseElement`. See [Customizing Appearance]({%slug inlineaiassistant-customizing-appearance%}).

## See Also

* [Getting Started]({%slug inlineaiassistant-getting-started%})
* [Configuring Commands]({%slug inlineaiassistant-configuring-commands%})
* [Events]({%slug inlineaiassistant-properties%}#events)