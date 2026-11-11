---
title: Commands
page_title: WinForms Inline AI Assistant - Configuring Commands and Groups
description: Configure Telerik UI for WinForms RadInlineAIAssistant commands, group related prompts, set images and custom data, and intercept command execution before requesting a response.
components: ["inlineaiassistant"]
slug: inlineaiassistant-configuring-commands
tags: winforms,inlineaiassistant,radinlineaiassistant,commands,prompts,groups,dropdown,events
published: True
position: 7
---

# Configuring Inline AI Assistant Commands

Telerik UI for WinForms `RadInlineAIAssistant` displays application-defined commands in a dropdown beside the prompt input. A command submits a predefined prompt through the same `PromptRequest` event used for typed prompts. It does not call an AI service itself.

## Adding Commands and Groups

The read-only `Commands` property returns an `InlineAIAssistantCommandCollection`. Add entries to this collection rather than assigning a new collection.

The following entry types are supported:

| Type | Purpose |
| --- | --- |
| `InlineAIAssistantCommand` | A selectable item with a display `Text` and an optional `Prompt`. If `Prompt` is null or empty, the item submits its `Text`. |
| `InlineAIAssistantCommandGroup` | A submenu with a child `Commands` collection. Only one level of grouping is supported; nested groups are ignored. |

Both types expose `Icon`, a `System.Drawing.Image`, and `Tag` for application-specific data.

The following code assumes an existing `assistant` field configured as shown in [Getting Started]({%slug inlineaiassistant-getting-started%}). The command types are in `Telerik.WinControls.UI`.

**Adding a rewrite command and a tone group**

```C#
this.assistant.Commands.Clear();
this.assistant.Commands.Add(new InlineAIAssistantCommand
{
    Text = "Rewrite",
    Prompt = "Rewrite the selected text for clarity."
});

InlineAIAssistantCommandGroup toneGroup = new InlineAIAssistantCommandGroup
{
    Text = "Tone"
};
toneGroup.Commands.Add(new InlineAIAssistantCommand
{
    Text = "Friendly",
    Prompt = "Rewrite the selected text in a friendly tone."
});
toneGroup.Commands.Add(new InlineAIAssistantCommand
{
    Text = "Formal",
    Prompt = "Rewrite the selected text in a formal tone."
});
this.assistant.Commands.Add(toneGroup);
```

```VB.NET
Me.assistant.Commands.Clear()
Me.assistant.Commands.Add(New InlineAIAssistantCommand With {
    .Text = "Rewrite",
    .Prompt = "Rewrite the selected text for clarity."
})

Dim toneGroup As New InlineAIAssistantCommandGroup With {.Text = "Tone"}
toneGroup.Commands.Add(New InlineAIAssistantCommand With {
    .Text = "Friendly",
    .Prompt = "Rewrite the selected text in a friendly tone."
})
toneGroup.Commands.Add(New InlineAIAssistantCommand With {
    .Text = "Formal",
    .Prompt = "Rewrite the selected text in a formal tone."
})
Me.assistant.Commands.Add(toneGroup)
```

Selecting **Friendly** submits its full instruction, not its display label. Your `PromptRequest` handler decides how to send this instruction and the selected text to the AI service. The **First Look** demo uses this dropdown for rewriting, grammar, tone, length, and translation commands.

You can also configure entries with **Edit Commands** in the component's smart tag. See [Design Time]({%slug inlineaiassistant-design-time%}).

## Intercepting a Command

Handle `CommandExecuting` to inspect `Command`, modify `Prompt`, or set `Cancel` before the command starts a request. This event applies to dropdown commands, not free-form prompts.

For example, the following handler adds an output constraint to each command. Register it after creating the assistant.

```C#
this.assistant.CommandExecuting += this.OnCommandExecuting;
```

```VB.NET
AddHandler Me.assistant.CommandExecuting, AddressOf Me.OnCommandExecuting
```

**Changing the submitted instruction**

```C#
private void OnCommandExecuting(object sender, InlineAIAssistantCommandEventArgs e)
{
    e.Prompt += " Return only the edited text, without an explanation.";
}
```

```VB.NET
Private Sub OnCommandExecuting(sender As Object, e As InlineAIAssistantCommandEventArgs)
    e.Prompt &= " Return only the edited text, without an explanation."
End Sub
```

The subsequent `PromptRequest` event exposes the modified `Prompt` and the selected `Command`. A command's `Executed` event signals submission, not completion of the asynchronous AI response.

## Applying a Response

Prompt commands are separate from the response actions. Use the component's `Insert`, `Replace`, and `Discard` methods, or the corresponding buttons, to act on a response.

Insert and Replace request that the popup close after editing the host. Discard clears the response and keeps the assistant open. See [Handling Responses]({%slug inlineaiassistant-handling-responses%}).

## See Also

* [Getting Started]({%slug inlineaiassistant-getting-started%})
* [Events]({%slug inlineaiassistant-events%})
* [Visual Structure]({%slug inlineaiassistant-visual-structure%})