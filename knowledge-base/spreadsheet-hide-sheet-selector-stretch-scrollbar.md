---
title: Hiding Sheet Selector and Stretching Scrollbar in UI for WinForms Spreadsheet
description: Learn how to hide the sheet selector bar in the RadSpreadsheet for Windows Forms and make the scrollbar occupy the entire width.
type: how-to
page_title: How to Hide Sheet Selector and Adjust Scrollbar Width in RadSpreadsheet for WinForms
meta_title: Hide Sheet Selector and Adjust Scrollbar Width in RadSpreadsheet for Windows Forms
slug: spreadsheet-hide-sheet-selector-stretch-scrollbar
tags: spreadsheet, ui-for-winforms, sheet-selector, scrollbar, customization
res_type: kb
ticketid: 1530391
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

This article will show how to hide the sheet selector and make the horizontal scrollbar fill the entire space.

## Solution

To hide the sheet selector and stretch the scrollbar in RadSpreadsheet, follow these steps:

1. Remove all elements inside the sheet selector except for the scrollbar.
2. Adjust the left margin of the scrollbar to make it span the entire width of the Spreadsheet in the SizeChanged event of the control.

Use the following code snippets:

````C#
private void radSpreadsheet1_SizeChanged(object sender, EventArgs e)
{            
	this.radSpreadsheet1.SpreadsheetElement.SheetSelector.ScrollBar.Margin = new Padding(-1 * this.radSpreadsheet1.SpreadsheetElement.Size.Width / 2 - 20, -2, 0, 0);
}

private void RadForm1_Load(object sender, EventArgs e)
{
	while (this.radSpreadsheet1.SpreadsheetElement.SheetSelector.Children.Count>1)
	{
		this.radSpreadsheet1.SpreadsheetElement.SheetSelector.Children.RemoveAt(0);
	}
	
	this.radSpreadsheet1.SpreadsheetElement.SheetSelector.ScrollBar.MinSize = new Size(0, 20);
	this.radSpreadsheet1.SpreadsheetElement.SheetSelector.ScrollBar.Margin = new Padding(-1 * this.radSpreadsheet1.Size.Width / 2 -20,-2, 0, 0);
}

````

## See Also

* [RadSpreadsheet Overview](https://docs.telerik.com/devtools/winforms/controls/spreadsheet/overview)
