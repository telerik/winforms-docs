---
title: How to modify the default ContextMenu of the RadCheckedDropDownList
description: Modify the default ContextMenu of the RadCheckedDropDownList.
type: how-to
page_title: Modify the default ContextMenu of the RadCheckedDropDownList  
slug: checked-dropdownlist-contextmenu
position: 34
tags: checkeddropdownlist, 
ticketid: 1586242 
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadCheckedDropDownList for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

This tutorial demonstrates how to add custom menu items to the default RadContextMenu of the RadCheckedDropDownList.

## Solution

To add your custom RadMenuItems, you can subscribe to the __ContextMenuOpening__ event of the AutoCompleteTextBox element inside the control. The code snippet below demonstrates how to navigate to this element.
 
![checked-dropdownlist-add-tokens](images/checked-dropdownlist-contextmenu.gif)


````C#

public Form1()
{
	InitializeComponent();
	this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ContextMenuOpening += this.AutoCompleteTextBox_ContextMenuOpening;            
}

private void AutoCompleteTextBox_ContextMenuOpening(object sender, TreeBoxContextMenuOpeningEventArgs e)
{
	e.ContextMenu.DropDown.Items.Clear();
	e.ContextMenu.Items.Add(new RadMenuItem("Test item"));
}

````
````VB.NET

Public Sub New()
	Me.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ContextMenuOpening += AddressOf Me.AutoCompleteTextBox_ContextMenuOpening
End Sub

Private Sub AutoCompleteTextBox_ContextMenuOpening(ByVal sender As Object, ByVal e As TreeBoxContextMenuOpeningEventArgs)
	e.ContextMenu.DropDown.Items.Clear()
	e.ContextMenu.Items.Add(New RadMenuItem("Test item"))
End Sub


````

# See Also

* [Adding Items Programmatically]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically%})