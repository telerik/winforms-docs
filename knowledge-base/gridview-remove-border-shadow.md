---
title: Removing the RadGridView Border and Shadow
description: Learn how to remove the control border and shadow of RadGridView in UI for WinForms
type: how-to
page_title: How to Remove RadGridView Control Border and Shadow in UI for WinForms
meta_title: How to Remove RadGridView Control Border and Shadow in UI for WinForms
slug: gridview-remove-border-shadow
tags: gridview, ui-for-winforms, enableelementshadow, draw,border
res_type: kb
ticketid: 1684037
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

By default, a border surrounds the RadGridView control. This border is not related to the cell border but is the outermost border of the control itself. In this article, we will show how to remove that border.

If a MaterialBlueGrey theme is used, you will need to remove the shadow. In this theme, a shadow is drawn around the control, not a border.

## Solution

To remove the control border of the RadGridView:

1. If using the **MaterialBlueGrey** theme, the border is not enabled, but its shadow may appear. Disable the shadow by setting the `EnableElementShadow` property to `false`:

````C#

this.radGridView1.RootElement.EnableElementShadow = false;

````

2. If using a different theme, remove the border by setting the `DrawBorder` property to `false`:

````C#

this.radGridView1.GridViewElement.DrawBorder = false;

````

## See Also

- [RadGridView Overview](https://docs.telerik.com/devtools/winforms/controls/gridview/overview)
