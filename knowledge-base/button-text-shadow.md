---
title: Adding a Shadow Beneath RadButton Text
description: Learn how to add a shadow beneath RadButton text in WinForms with ShadowSettings, adjust its offset and color, and enable GDI+ rendering.
components: ["buttons"]
type: how-to
page_title: Adding a Text Shadow to RadButton in WinForms
slug: button-text-shadow
tags: buttons, radbutton, text, shadow, shadowsettings, rendering
res_type: kb
---

# Adding a Shadow Beneath RadButton Text

## Environment

| Version | Product | Author | 
| ---- | ---- | ---- | 
| 2026.3.1007| RadButton |[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)| 

## Description

How can I add a shadow beneath the text on a button?

This article explains how to add an offset shadow to the plain-text caption of a **RadButton**. The shadow applies to the text, not the button background or outline.

![RadButton with a shadow beneath its text](images/button-text-shadow.png)

## Solution

Set the `Shadow` property of `ButtonElement.TextElement` to a `Telerik.WinControls.Paint.ShadowSettings` instance. Its constructor accepts a `System.Drawing.Point` for the offset and a `System.Drawing.Color` for the shadow color.

Use GDI+ text rendering for this effect. The plain-text GDI rendering path does not draw the text shadow.

1. Add a **RadButton** named `radButton1` to your form and set its `Text` to a plain-text caption, such as `Save`.
1. After `InitializeComponent()`, set the text element's `UseCompatibleTextRendering` property to `true`.
1. Assign the shadow settings to the text element.

The following code adds a gray shadow directly below the caption:

````C#
this.radButton1.ButtonElement.TextElement.UseCompatibleTextRendering = true;
this.radButton1.ButtonElement.TextElement.Shadow =
    new Telerik.WinControls.Paint.ShadowSettings(
        new System.Drawing.Point(0, 2),
        System.Drawing.Color.Gray);
````

The offset `(0, 2)` leaves the shadow aligned horizontally and moves it two pixels down. Use `(2, 2)` to move it right and down. Change `Color.Gray` to customize the shadow color.

To remove the text shadow, clear the `Shadow` property:

````C#
this.radButton1.ButtonElement.TextElement.Shadow = null;
````

>note The `EnableElementShadow`, `ShadowColor`, and `ShadowDepth` settings described in the [control and element shadow guide]({%slug winforms/tpf/shadows%}) configure a different effect. Use `TextElement.Shadow` for the caption shadow shown here.

## See Also

* [Accessing the button's nested elements]({%slug winforms/buttons/button/customizing-appearance/accessing-and-customizing-elements%})
* [Understanding the button's visual structure]({%slug winforms/buttons/button/structure%})
* [Choosing GDI or GDI+ text rendering]({%slug winforms/telerik-presentation-framework/text-rendering%})
