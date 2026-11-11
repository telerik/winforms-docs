---
title: Events
page_title: WinForms Inline AI Assistant - Prompt, Popup, and Response Events
description: Handle Telerik UI for WinForms RadInlineAIAssistant events to supply responses, intercept commands, cancel popup opening or closing, and validate response actions before editing.
components: ["inlineaiassistant"]
slug: inlineaiassistant-events
tags: winforms,inlineaiassistant,radinlineaiassistant,events,prompt,commands,opening,closing,responses
published: True
position: 5
---

# Inline AI Assistant Events

Telerik UI for WinForms `RadInlineAIAssistant` exposes .NET events for popup visibility, prompt requests, command submission, and response actions. For cancelable events, set `Cancel` to `true` to prevent the operation.

## Handling Prompt Requests

`PromptRequest` is raised for a submitted prompt, a selected command, or a call to `SubmitPrompt`. Its `InlineAIAssistantPromptRequestEventArgs` provides:

| Member | Description |
| --- | --- |
| `Prompt` | The submitted instruction. |
| `SelectedText` | The host selection captured when the request starts. |
| `FullText` | The full host text, computed on first access. Read it on the UI thread. |
| `Command` | The command that submitted the prompt, or `null` for a free-form prompt. |
| `CancellationToken` | The token for stopping asynchronous service work. |
| `SetResponse(string)` | Displays the complete response and ends processing. |
| `AppendResponse(string)` | Appends a chunk to the current request's response. |
| `CompleteResponse()` | Marks a streamed response as complete. |
| `FailResponse(Exception)` | Ends processing and displays a localized generic error. |

The event-data methods retain the originating request identity and ignore stale updates. They support asynchronous handlers, including `SetResponse` after an `await`. See [Handling Responses]({%slug inlineaiassistant-handling-responses%}) for complete examples.

## Controlling Popup Visibility

Use the following events to observe or prevent popup visibility changes.

| Event | Event data | Behavior |
| --- | --- | --- |
| `Opening` | `InlineAIAssistantOpeningEventArgs` | Raised before opening. Provides read-only `Host`, `AnchorRectangle`, and `SelectedText`. Set `Cancel` to keep the popup closed. |
| `Opened` | `EventArgs` | Raised after opening. |
| `Closing` | `RadPopupClosingEventArgs` | Raised before an allowed close operation. Inspect `CloseReason` and set `Cancel` to keep the popup open. |
| `Closed` | `RadPopupClosedEventArgs` | Raised after closing. The assistant cancels the request before raising this event. |

`Opening` applies to the component's `Show` methods, including calls made through an attached host event. The `IsOpen` property is read-only; use `Show` and `Close` to change popup visibility.

The following example allows opening only when text is selected. It assumes an existing `assistant` field and the `Telerik.WinControls.UI` namespace.

**Registering the opening handler**

```C#
this.assistant.Opening += this.OnAssistantOpening;
```

```VB.NET
AddHandler Me.assistant.Opening, AddressOf Me.OnAssistantOpening
```

**Requiring a selection**

```C#
private void OnAssistantOpening(object sender, InlineAIAssistantOpeningEventArgs e)
{
    e.Cancel = string.IsNullOrEmpty(e.SelectedText);
}
```

```VB.NET
Private Sub OnAssistantOpening(sender As Object, e As InlineAIAssistantOpeningEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.SelectedText)
End Sub
```

The popup ignores ordinary outside mouse clicks. It can close on `Escape`, a call to `Close`, an application focus change, or host changes. `AutoCloseOnFocusLost` controls application activation changes; `AutoCloseOnHostChanged` controls host-size and provider-reported viewport changes. Moving, resizing, or closing the containing form still requests a close. Outside mouse-wheel closing also depends on the popup manager's settings.

Canceling `Closing` prevents the close and leaves an active request running. Closing does not automatically clear the response; call `ClearResponse` in a `Closed` handler if each opening must start without the previous response.

## Intercepting Commands

`CommandExecuting` is raised before a dropdown command submits its prompt. `InlineAIAssistantCommandEventArgs` exposes `Command`, a writable `Prompt`, and `Cancel`. Change the prompt or cancel submission in this event.

The selected command's `Executed` event signals submission, not completion of the AI response. See [Configuring Commands]({%slug inlineaiassistant-configuring-commands%}) for an example.

## Intercepting Response Actions

`ResponseActionExecuting` is raised before Insert, Replace, or Discard. `InlineAIAssistantResponseActionEventArgs` exposes `Action`, writable `ResponseText`, and `Cancel`. Use it to validate or change the text before the provider applies it.

**Registering the response-action handler**

```C#
this.assistant.ResponseActionExecuting += this.OnResponseActionExecuting;
```

```VB.NET
AddHandler Me.assistant.ResponseActionExecuting, AddressOf Me.OnResponseActionExecuting
```

**Rejecting empty edits while allowing Discard**

```C#
private void OnResponseActionExecuting(
    object sender, InlineAIAssistantResponseActionEventArgs e)
{
    if (e.Action != InlineAIAssistantResponseAction.Discard)
    {
        e.Cancel = string.IsNullOrWhiteSpace(e.ResponseText);
    }
}
```

```VB.NET
Private Sub OnResponseActionExecuting(
    sender As Object, e As InlineAIAssistantResponseActionEventArgs)

    If e.Action <> InlineAIAssistantResponseAction.Discard Then
        e.Cancel = String.IsNullOrWhiteSpace(e.ResponseText)
    End If
End Sub
```

The provider's capability checks run after this event and use the potentially modified response. `ResponseActionExecuted` is raised after the action is applied. For Insert and Replace, it occurs before the subsequent close request. Setting `Cancel` after execution cannot undo an edit.

## See Also

* [Getting Started]({%slug inlineaiassistant-getting-started%})
* [Handling Responses]({%slug inlineaiassistant-handling-responses%})
* [Properties, Methods, and Events]({%slug inlineaiassistant-properties%})