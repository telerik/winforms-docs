---
title: Configuring Interaction Providers
page_title: WinForms Inline AI Assistant - Text Hosts and Interaction Providers
description: Attach Telerik UI for WinForms RadInlineAIAssistant to text controls, use the built-in RadRichTextEditor toolbar integration, and implement custom interaction providers.
components: ["inlineaiassistant"]
slug: inlineaiassistant-configuring-interaction-providers
tags: winforms,inlineaiassistant,radinlineaiassistant,providers,textbox,richtexteditor,selection,toolbar
published: True
position: 6
---

# Configuring Inline AI Assistant Interaction Providers

Telerik UI for WinForms `RadInlineAIAssistant` uses an `IInlineAIAssistantInteractionProvider` to read host text, position the popup, and apply responses. Built-in integrations cover text boxes and `RadRichTextEditor`; other hosts can supply a custom provider.

## Attaching to Text Boxes

Call `AttachTo` with a supported text box. If `InteractionProvider` is not already assigned, the component creates a provider for the host.

| Host | Provider |
| --- | --- |
| Windows Forms `TextBoxBase`, including `TextBox` and `RichTextBox` | `InlineAIAssistantTextBoxProvider` |
| `RadTextBox` | `InlineAIAssistantTextBoxProvider` |
| `RadTextBoxControl` | `InlineAIAssistantRadTextBoxControlProvider` |

The following code assumes an existing `assistant` field and a `RadTextBox` named `radTextBox1` on the form. Call it after `InitializeComponent`.

**Attaching to a RadTextBox**

```C#
this.assistant.AttachTo(this.radTextBox1);
```
```VB.NET
Me.assistant.AttachTo(Me.radTextBox1)
```

Open the assistant with `Show` when the host is visible. The provider reports a screen rectangle at the caret or selection. `Show()` does nothing when no provider exists or the provider cannot supply a visible anchor.

The text-box provider preserves the selected text when inserting a response: it inserts after the selection. Replacement requires a selection. Both operations require an enabled, editable text box.

## Integrating with the Rich Text Editor

For `RadRichTextEditor`, assign the editor's `InlineAIAssistant` property instead of using `AttachTo` alone. This attaches the component and creates an `InlineAIAssistantRadRichTextEditorProvider` when no custom provider is assigned.

The following assumes an existing editor named `radRichTextEditor1`. Add the editor's required assembly references as well as those for the assistant.

**Enabling the built-in rich-text integration**

```C#
this.radRichTextEditor1.InlineAIAssistant = this.assistant;
this.radRichTextEditor1.IsInlineAIAssistantEnabled = true;
```
```VB.NET
Me.radRichTextEditor1.InlineAIAssistant = Me.assistant
Me.radRichTextEditor1.IsInlineAIAssistantEnabled = True
```

This integration switches the selection mini toolbar to a compact layout and adds an AI assistant button. The mini toolbar must be enabled to display it. `IsInlineAIAssistantEnabled`, which defaults to `true`, controls the editor's assistant entry points. Your application still handles `PromptRequest` to supply responses.

You can also call `Show` from an application button, as the **First Look** demo does. A provider assigned before setting the editor's `InlineAIAssistant` property is preserved; the demo uses this to customize positioning.

The editor does not dispose the assistant. Use a component container, as shown in [Getting Started]({%slug inlineaiassistant-getting-started%}), or dispose it explicitly when the form no longer needs it. To remove the editor integration, set its `InlineAIAssistant` property to `null` (`Nothing` in VB.NET).

## Implementing a Custom Provider

Implement `IInlineAIAssistantInteractionProvider` from `Telerik.WinControls.UI` for an unsupported control. The interface contains these members:

| Member | Contract |
| --- | --- |
| `TargetControl` | Returns the Windows Forms control adapted by the provider. |
| `FullText` | Returns the host's complete plain text. |
| `SelectedText` | Returns the currently selected plain text. |
| `CanInsertText(string text)` | Reports whether insertion is allowed. Check host-specific constraints, such as read-only state. |
| `CanReplaceSelectedText(string text)` | Reports whether replacement is allowed for the current selection. |
| `InsertText(string text)` | Applies insertion according to the host's editing API. |
| `ReplaceSelectedText(string text)` | Replaces the selection through the host's editing API. |
| `TryGetAnchorRectangle(out Rectangle screenRectangle)` | Returns a rectangle in screen coordinates and `true` when the anchor is visible; otherwise returns `false`. |

Assign an instance to `InteractionProvider` before opening the assistant. Use `AttachTo` as well when you need `AttachedControl` and `OpeningEventName` to refer to the host. The assistant does not overwrite an explicitly assigned provider when attaching.

If scrolling, zooming, or another viewport change invalidates the anchor, also implement `IInlineAIAssistantViewportChangeNotifier`. Raise `ViewportChanged` when needed. While open, the assistant listens to this event and requests a close when `AutoCloseOnHostChanged` is `true`.

## Managing Provider Lifetime

The assistant owns and disposes providers it creates through `AttachTo`. It does not own custom providers assigned by application code. If your custom provider subscribes to host events, implement `IDisposable` and unsubscribe when it is no longer needed.

For direct attachments, `Detach` requests that the popup close and removes the attachment. For the rich-text integration, clear the editor's `InlineAIAssistant` property so the editor can release its own provider and integration state.

## See Also

* [Getting Started]({%slug inlineaiassistant-getting-started%})
* [Handling Responses]({%slug inlineaiassistant-handling-responses%})
* [Events]({%slug inlineaiassistant-events%})