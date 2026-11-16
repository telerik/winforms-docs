---
title: Design Time
page_title: WinForms Inline AI Assistant - Design Time and Command Editor
description: Configure Telerik UI for WinForms RadInlineAIAssistant in the Visual Studio component tray, edit prompt commands, and set placeholder and automatic closing options.
components: ["inlineaiassistant"]
slug: inlineaiassistant-design-time
tags: winforms,inlineaiassistant,radinlineaiassistant,designer,visual-studio,smart-tag,commands,placeholder
published: True
position: 3
---

# WinForms Inline AI Assistant Design Time

The Telerik UI for WinForms `RadInlineAIAssistant` component supports design-time configuration through the Visual Studio **Properties** window and its smart tag. Because it is nonvisual, it appears in the component tray below the form, not on the form surface.

## Adding the Component

1. Open the form in the Windows Forms Designer.
2. Drag **RadInlineAIAssistant** from the **Toolbox** onto the designer. Select the resulting component in the component tray.
3. Configure the component through its smart tag or the **Properties** window.
4. Open the **Events** view in the **Properties** window and create a handler for `PromptRequest`. Supply the response in this handler.

For text-box hosts, call `AttachTo` in code after `InitializeComponent`. `AttachedControl` is read-only and `InteractionProvider` is not exposed in the designer. For a `RadRichTextEditor`, select the editor and assign its `InlineAIAssistant` property to the component instead.

Adding the component does not connect it to an AI service. See [Getting Started]({%slug inlineaiassistant-getting-started%}) for host attachment, opening the popup, and response handling.

## Smart Tag Options

The component-specific smart-tag actions are:

| Option | Description |
| --- | --- |
| **Edit Commands** | Opens the collection editor for the commands dropdown. |
| **Prompt placeholder** | Sets `NullText`, the text displayed when the prompt input is empty. |
| **Close when another application is activated** | Sets `AutoCloseOnFocusLost`. The default is `true`. |

## Editing Commands

Select **Edit Commands** from the smart tag, or open the editor for `Commands` in the **Properties** window.

* Add an `InlineAIAssistantCommand` for a selectable prompt. Set `Text` to its display label and `Prompt` to the instruction it submits. If `Prompt` is not set, the command uses its `Text`.
* Add an `InlineAIAssistantCommandGroup` to organize related prompts. Set the group's `Text` and edit its `Commands` collection to add child commands. The designer supports one level of grouping: groups contain commands, not nested groups.
* Set `Icon` to display an image alongside a command or group. Use `Tag` for application-specific data.

For example, create a **Tone** group with **Friendly** and **Formal** commands. Set their prompts to instructions such as "Rewrite the selected text in a friendly tone." The application must send the prompt and relevant host text to its AI service; a command label alone does not implement that operation.

Handle `CommandExecuting` to change the prompt or cancel the command before `PromptRequest` is raised.

## Configuring Popup Properties

Use the **Properties** window to set `PopupWidth`, `ResponseMaxHeight`, `NullText`, `ThemeName`, and the automatic closing options. `PopupWidth` defaults to 460 logical pixels, and `ResponseMaxHeight` defaults to 250 pixels.

`OpeningEventName` can name a public event on the attached host that opens the assistant. For conditional triggers, such as a keyboard shortcut, handle the event in code and call `Show` only when the condition is met.

The popup appears at runtime when `Show` is called or a configured opening event is raised. See [Properties, Methods, and Events]({%slug inlineaiassistant-properties%}) for the complete configuration reference.

## See Also

* [Overview]({%slug inlineaiassistant-overview%})
* [Getting Started]({%slug inlineaiassistant-getting-started%})
* [Properties, Methods, and Events]({%slug inlineaiassistant-properties%})
* [Configuring Commands]({%slug inlineaiassistant-configuring-commands%})
