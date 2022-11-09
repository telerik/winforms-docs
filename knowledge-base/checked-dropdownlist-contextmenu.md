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
 
![checked-dropdownlist-add-tokens](images/checked-dropdownlist-contextmenu.png)


````C#

public Form1()
{
	InitializeComponent();
	this.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ContextMenuOpening += this.AutoCompleteTextBox_ContextMenuOpening;            
}

private void AutoCompleteTextBox_ContextMenuOpening(object sender, TreeBoxContextMenuOpeningEventArgs e)
{
    RadMenuItem menuItem1 = new RadMenuItem();
    menuItem1.Click += MenuItem1_Click;
    menuItem1.Text = "Show";
	
    RadMenuItem menuItem2 = new RadMenuItem();
    menuItem2.Click += MenuItem2_Click;
    menuItem2.Text = "Hide";
	
	e.ContextMenu.Items.Add(menuItem1);
	e.ContextMenu.Items.Add(menuItem2);

}
private void MenuItem1_Click(object sender, EventArgs e)
{
    // TODO
}

private void MenuItem2_Click(object sender, EventArgs e)
{
    //TODO
}

````
````VB.NET

Public Sub New()
	Me.radCheckedDropDownList1.CheckedDropDownListElement.AutoCompleteEditableAreaElement.AutoCompleteTextBox.ContextMenuOpening += AddressOf Me.AutoCompleteTextBox_ContextMenuOpening
End Sub

Private Sub AutoCompleteTextBox_ContextMenuOpening(ByVal sender As Object, ByVal e As TreeBoxContextMenuOpeningEventArgs)
	Dim menuItem1 As RadMenuItem = New RadMenuItem()
	AddHandler menuItem1.Click, AddressOf MenuItem1_Click
	menuItem1.Text = "Show"
	
	Dim menuItem2 As RadMenuItem = New RadMenuItem()
	AddHandler menuItem2.Click, AddressOf MenuItem2_Click
	menuItem2.Text = "Hide"
	
	e.ContextMenu.Items.Add(menuItem1)
	e.ContextMenu.Items.Add(menuItem2)
End Sub

Private Sub MenuItem1_Click(ByVal sender As Object, ByVal e As EventArgs)
'TODO
End Sub

Private Sub MenuItem2_Click(ByVal sender As Object, ByVal e As EventArgs)
'TODO
End Sub


````

# See Also

* [Adding Items Programmatically]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically%})