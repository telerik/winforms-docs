---
title: Aligning Text in RadTitleBar
description: Learn how to change the text position in the RadTitleBar control for WinForms applications.
type: how-to
page_title: How to Center Text on RadTitleBar in WinForms
slug: form-titlebar-align-text-winforms
tags: formsanddialogs,radtitlebar, winforms, text-alignment, contentalignment, middlecenter
res_type: kb
ticketid: 1667619
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1113|RadForm/RadTitleBar for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

This example demonstrates how to align the text in the title bar of a RadForm or in a stand-alone RadTitleBar control.

## Solution

To center the text in the RadForm title bar, set the `Alignment` property of the `CaptionElement` to `ContentAlignment.MiddleCenter`. This adjustment aligns the title bar text to the middle center. 

````C#

this.FormElement.TitleBar.CaptionElement.Alignment = ContentAlignment.MiddleCenter;
 
````

To center the text in the RadTitleBar as a stand-alone control, set the `Alignment` property of the `CaptionElement` to `ContentAlignment.MiddleCenter`. This adjustment aligns the title bar text to the middle center. 

````C#
this.radTitleBar1.TitleBarElement.CaptionElement.Alignment = ContentAlignment.MiddleCenter;

```

By applying this code, the text in the RadTitleBar will be centered, providing a visually appealing and balanced appearance for the title bar of your WinForms application.

## See Also

* [RadTitleBar Overview](https://docs.telerik.com/devtools/winforms/controls/titlebar/overview)
