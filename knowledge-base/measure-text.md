---
title: How to Measure Text
description: Learn how to measure text in WinForms.
type: how-to
page_title: How to Measure Text
slug: measure-text
position: 5
tags: common, text, measure, font
ticketid: 1521435
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.2.511|Telerik UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

There are different approaches for measuring some text considering the font family and font size. That is why it is important to know first how the [text is being rendered]({%slug winforms/telerik-presentation-framework/text-rendering%}) in order to measure it correctly.

## Solution

By default, Telerik Presentation Framework uses **GDI+** to measure and render the text. You can easily switch to **GDI** instead by setting the **UseCompatibleTextRendering** property to **false** for the respective control:

* [Draw text with GDI: TextRenderer.DrawText](https://docs.microsoft.com/en-us/dotnet/desktop/winforms/advanced/how-to-draw-text-with-gdi?view=netframeworkdesktop-4.8) 

* [Draw text with GDI+: Graphics.DrawString](https://docs.microsoft.com/en-us/windows/win32/gdiplus/-gdiplus-drawing-text-use) 

That is why when using **GDI** for rendering the text, it is suitable to use the TextRenderer.[MeasureText](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textrenderer.measuretext?redirectedfrom=MSDN&view=net-5.0#overloads) method for measuring it. And for **GDI+**, feel free to use the Graphics.[MeasureString](https://docs.microsoft.com/en-us/dotnet/api/system.drawing.graphics.measurestring?view=net-5.0) method. Both methods offer different overloads allowing you to measure the text in a precise manner according to different criteria that you may have, e.g. format flags, font, available width, etc.

# See Also

* [Text Rendering]({%slug winforms/telerik-presentation-framework/text-rendering%})

