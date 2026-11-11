---
title: Customizing Appearance
page_title: WinForms Inline AI Assistant - Themes and Element Customization
description: Customize Telerik UI for WinForms RadInlineAIAssistant placeholder text, popup dimensions, themes, and response elements through the Telerik Presentation Framework.
components: ["inlineaiassistant"]
slug: inlineaiassistant-customizing-appearance
tags: winforms,inlineaiassistant,radinlineaiassistant,appearance,themes,elements,placeholder,popup
published: True
position: 9
---

# Customizing Inline AI Assistant Appearance

Telerik UI for WinForms `RadInlineAIAssistant` exposes component properties for common appearance settings and a Telerik Presentation Framework (TPF) element hierarchy for finer customization.

The examples assume an existing `assistant` field configured as shown in [Getting Started]({%slug inlineaiassistant-getting-started%}).

## Setting the Placeholder and Dimensions

Use `NullText` for the empty prompt's placeholder, `PopupWidth` for the popup width, and `ResponseMaxHeight` for the scrollable response area.

**Configuring the prompt popup**

```C#
this.assistant.NullText = "Ask AI to edit the selected text...";
this.assistant.PopupWidth = 520;
this.assistant.ResponseMaxHeight = 300;
```
```VB.NET
Me.assistant.NullText = "Ask AI to edit the selected text..."
Me.assistant.PopupWidth = 520
Me.assistant.ResponseMaxHeight = 300
```

`PopupWidth` is measured in logical pixels and defaults to `460`; values below `100` are clamped to `100`. Set it before opening because it is applied when the popup is shown. `ResponseMaxHeight` defaults to `250` pixels and updates the layout when the popup is already open.

`NullText` sets the prompt placeholder and defaults to the localized "Ask AI anything..." string.

## Applying a Theme

Set the inherited `ThemeName` property to a theme available in your application. Ensure that the theme is loaded through your normal Telerik theme setup.

If the assistant's `ThemeName` is unset, it uses the host `RadControl` theme when opening. It also reads the host's right-to-left layout. A standard Windows Forms `TextBox` does not supply a Telerik theme name.

The **Theming** demo uses the assistant element with sample response text to preview its appearance. For application use, configure the component and open its popup through the host.

## Customizing the Response Elements

Access the root through `InlineAIAssistantElement`. Its `ResponseElement` exposes the response text, scroll viewer, and action buttons. The following example changes the response background and text color.

Add the `System.Drawing`, `Telerik.WinControls`, and `Telerik.WinControls.UI` namespaces.

**Changing response colors**

```C#
InlineAIAssistantResponseElement response = this.assistant.InlineAIAssistantElement.ResponseElement;
response.DrawFill = true;
response.GradientStyle = GradientStyles.Solid;
response.BackColor = Color.WhiteSmoke;
response.ResponseTextElement.ForeColor = Color.DarkGreen;
```
```VB.NET
Dim response As InlineAIAssistantResponseElement = Me.assistant.InlineAIAssistantElement.ResponseElement
response.DrawFill = True
response.GradientStyle = GradientStyles.Solid
response.BackColor = Color.WhiteSmoke
response.ResponseTextElement.ForeColor = Color.DarkGreen
```

These are local element settings and can override the corresponding theme values. Check contrast and visual consistency with the themes used by your application. Keep response delivery through `ResponseText` or the request event data; changing a text element directly bypasses the component's response lifecycle.

For input customization, access `InlineAIAssistantElement.PromptInputElement`, a `RadPromptInputElement`. The component manages its command button and processing behavior. See [Visual Structure]({%slug inlineaiassistant-visual-structure%}) for the public element access paths.

## Extending the Element Hierarchy

Use TPF element properties, themes, or a derived component when replacing part of the visual structure.

The protected virtual factory methods form this extension path: `RadInlineAIAssistant.CreatePopup`, `InlineAIAssistantPopup.CreateAssistantElement`, and `RadInlineAIAssistantElement.CreateResponseElement`. Preserve the component's request and action wiring when customizing the hierarchy.

## See Also

* [Visual Structure]({%slug inlineaiassistant-visual-structure%})
* [Handling Responses]({%slug inlineaiassistant-handling-responses%})
* [Design Time]({%slug inlineaiassistant-design-time%})