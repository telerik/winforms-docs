---
title: Properties, Methods, and Events
page_title: WinForms Inline AI Assistant - Properties, Methods, and Events
description: Explore Telerik UI for WinForms RadInlineAIAssistant properties, methods, and events for popup configuration, host integration, request handling, and response actions.
components: ["inlineaiassistant"]
slug: inlineaiassistant-properties
tags: winforms,inlineaiassistant,radinlineaiassistant,properties,methods,events,prompt,streaming,cancellation
published: True
position: 5
---

# WinForms Inline AI Assistant Properties, Methods, and Events

The Telerik UI for WinForms `RadInlineAIAssistant` API configures the popup, connects it to a text control, and manages the request and response lifecycle. The component raises `PromptRequest`; your application supplies the AI service integration.

## Popup and Host Properties

| Property | Description |
| --- | --- |
| `Commands` | Gets the collection of commands and command groups shown in the dropdown. Add entries to the collection; do not replace the collection itself. |
| `NullText` | Gets or sets the prompt placeholder. The default localization provider supplies "Ask AI anything...". |
| `PopupWidth` | Gets or sets the popup width in logical pixels. Defaults to `460`; values below `100` are clamped to `100`. The width is applied when the popup opens. |
| `ResponseMaxHeight` | Gets or sets the maximum height of the scrollable response area in pixels. Defaults to `250`. Changing it updates the layout of an open popup. |
| `ThemeName` | Inherited from `RadComponent`. Sets the popup theme. When unset, the assistant uses the attached `RadControl` host's theme when opening. |
| `OpeningEventName` | Gets or sets the name of a public instance event on the attached control that opens the assistant. Defaults to `null`. The event must have a compatible handler signature; missing or incompatible events are ignored. |
| `AutoCloseOnFocusLost` | Gets or sets whether the popup closes when another application is activated. Defaults to `true`. This setting does not disable all other closing triggers. |
| `AutoCloseOnHostChanged` | Gets or sets whether host size changes and provider-reported viewport changes close the popup. Defaults to `true`. Movement or resizing of the containing form still requests a close regardless of this setting. |
| `InteractionProvider` | Gets or sets the `IInlineAIAssistantInteractionProvider` that supplies host text, anchor coordinates, and editing operations. Not exposed in the designer. |
| `AttachedControl` | Gets the control passed to `AttachTo`. Read-only. |
| `Popup` | Gets the `InlineAIAssistantPopup` instance. Read-only and hidden from designer serialization. |
| `InlineAIAssistantElement` | Gets the root `RadInlineAIAssistantElement` for access to the assistant's element hierarchy. Read-only. |

The popup also uses the host's right-to-left layout when it opens.

## Response and State Properties

| Property | Description |
| --- | --- |
| `IsOpen` | Gets whether the popup is currently open. Read-only; use `Show` and `Close` to change visibility. |
| `IsProcessing` | Gets or sets the element's processing state. Setting this property is not a substitute for starting or canceling a request through the request methods. |
| `ResponseText` | Gets or sets the response text. Setting it cancels the current request. A nonempty value displays a completed response; a null or empty value clears the response and returns the element to its idle state. |

For asynchronous requests, use the `PromptRequest` event data's `SetResponse`, `AppendResponse`, `CompleteResponse`, and `FailResponse` methods instead of assigning `ResponseText`. These methods retain the originating request's identity and reject stale updates.

## Attachment and Popup Methods

| Method | Description |
| --- | --- |
| `AttachTo(Control host)` | Attaches the assistant to a host. Creates a built-in provider for `TextBoxBase`, `RadTextBox`, or `RadTextBoxControl` when no provider is assigned. Passing `null` throws `ArgumentNullException`. |
| `Detach()` | Detaches from the current host, requests that the popup close, and releases a provider owned by the assistant. |
| `Show()` | Opens at the anchor reported by the provider. Does nothing when no provider exists or the provider cannot supply a visible anchor. |
| `Show(Rectangle screenAnchor)` | Opens at an explicit rectangle in screen coordinates. A provider is still required to apply responses to a host. |
| `Close()` | Requests that the popup close. A `Closing` handler can cancel the close. |
| `ClearResponse()` | Clears the response text and hides the response area. This method does not cancel an active request; use `CancelRequest` when necessary. |

Both `Show` overloads do nothing if the assistant is already open or disposed. For `RadRichTextEditor`, assign the editor's `InlineAIAssistant` property to attach the component and configure the editor-specific provider.

## Request and Response Methods

| Method | Description |
| --- | --- |
| `SubmitPrompt(string prompt)` | Cancels any previous request, clears its response, enters the processing state, and raises `PromptRequest`. |
| `AppendResponse(string chunk)` | Appends a chunk to the current active request. Does not complete the request. |
| `CompleteResponse()` | Marks the current active request as complete and updates the available response actions. |
| `FailResponse(Exception error)` | Fails the current active request and displays a localized generic error. The exception message is not displayed. |
| `CancelRequest()` | Cancels the current request token and exits processing. It does not close the popup or discard text already received. |
| `CanInsert()` | Asks the interaction provider whether it can insert the current response. |
| `CanReplace()` | Asks the interaction provider whether it can replace the selection with the current response. |
| `Insert()` | Applies the response through the provider and requests that the popup close. |
| `Replace()` | Replaces the selection through the provider and requests that the popup close. |
| `Discard()` | Cancels the request, clears the response, and returns focus to the prompt without closing the popup. |

`AppendResponse`, `CompleteResponse`, and `FailResponse` also have overloads that take the `CancellationToken` from the request event. Use these overloads, or the corresponding event-data methods, when work can outlive a request. The tokenless overloads target whichever request is current when called.

Call setup, opening, and prompt-submission APIs on the UI thread. The response-delivery methods support asynchronous callbacks and marshal updates through the synchronization context captured when the request starts.

`Insert` and `Replace` require the element to be in its response state and the provider to allow the operation. Error text and text still being generated cannot be applied through these methods. Canceling a request can leave received text available as a response.

## Events

| Event | Description |
| --- | --- |
| `Opening` | Raised before opening. Provides the host, screen anchor, and selected text. Set `Cancel` to keep the popup closed. |
| `Opened` | Raised after the popup opens. |
| `Closing` | Raised before closing. Inspect `CloseReason` and set `Cancel` to keep the popup open. |
| `Closed` | Raised after closing. The assistant cancels the current request before raising this event. Closing does not automatically clear the response. |
| `PromptRequest` | Raised when the user submits a prompt, selects a command, or the application calls `SubmitPrompt`. Supply the response through the event data. |
| `CommandExecuting` | Raised before a selected command submits its prompt. Modify `Prompt` or set `Cancel` to prevent submission. |
| `ResponseActionExecuting` | Raised before Insert, Replace, or Discard. Inspect `Action`, modify `ResponseText`, or set `Cancel` to skip the action. |
| `ResponseActionExecuted` | Raised after the response action is applied. For Insert and Replace, this occurs before the subsequent close request. |

`PromptRequest` exposes `Prompt`, `SelectedText`, `FullText`, `Command`, and `CancellationToken`. `SelectedText` is captured at submission; `FullText` is retrieved on first access. Use `SetResponse` for a complete response or `AppendResponse` followed by `CompleteResponse` for streaming. See [Getting Started]({%slug inlineaiassistant-getting-started%}) for examples.

## Command Types

| Type | Description |
| --- | --- |
| `InlineAIAssistantCommand` | A selectable entry with `Text`, `Prompt`, `Icon`, and `Tag`. Its `Executed` event signals prompt submission, not completion of the AI response. |
| `InlineAIAssistantCommandGroup` | A group with `Text`, `Icon`, `Tag`, and a child `Commands` collection. |

The command's `Prompt` is submitted when provided; otherwise, its display `Text` is used. Commands describe requests; the application implements the service call that performs them.

## Custom Interaction Providers

Implement `IInlineAIAssistantInteractionProvider` for a host that does not have a built-in integration. Provide `TargetControl`, `FullText`, and `SelectedText`; implement `TryGetAnchorRectangle` in screen coordinates; and implement the capability checks and insertion and replacement methods.

Assign the provider to `InteractionProvider` before opening the assistant. To report scrolling or other viewport changes that invalidate the anchor, also implement `IInlineAIAssistantViewportChangeNotifier`. The assistant listens for `ViewportChanged` while open when deciding whether to close.

The assistant disposes providers it creates through `AttachTo`. Your application is responsible for disposing a custom provider it assigns, if that provider implements `IDisposable`.

## See Also

* [Overview]({%slug inlineaiassistant-overview%})
* [Getting Started]({%slug inlineaiassistant-getting-started%})
* [Design Time]({%slug inlineaiassistant-design-time%})
* [Events]({%slug inlineaiassistant-events%})
* [Handling Responses]({%slug inlineaiassistant-handling-responses%})


 


