---
title: Create a custom context menu with copy cell/row functionality in RadGridView
description: This article shows how to create a custom context menu with copy cell/row functionality in RadGridView
type: how-to
page_title: How to create a custom context menu with copy cell/row functionality in RadGridView
slug: gridview-copy-cell-row
position: 0
tags: gridview, copy, cell, row
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadGridView for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|


## Description

A common requirement is to copy the selected cell value or to copy the selected row value in **RadGridView**. This article shows how to achieve this funcionality in a custom context menu, so when right click in the **RadGridView**, the context menu opens, and you have copy cell/row functionality implemented. After selecting one of these, you can paste the content anywhere you need to (in Notepad or Excel, for example).

![radgridview-copy-cell-row](images/radgridview-copy-cell-row.gif)

## Solution 

To achieve this functionality, you should create a [custom context menu]({%slug winforms/gridview/context-menus/custom-context-menus%}) in **RadGridView** and add two **RadMenuItems**. Once the menu object has been initialized and populated with menu items, it is ready to be attached to the **RadGridView**. To do that, you should subscribe to the **ContextMenuOpening** event and set the custom context menu to be displayed instead of the default one.

####  Setup the Context Menu

````C#

 private RadContextMenu contextMenu;
 private void RadForm1_Load(object sender, EventArgs e)
 {

     contextMenu = new RadContextMenu();
     RadMenuItem copyCellItem = new RadMenuItem("Copy Cell");
     copyCellItem.ForeColor = Color.Red;
     copyCellItem.Click += CopyCellItem_Click;
     RadMenuItem copyRowItem = new RadMenuItem("Copy Row");
     copyRowItem.ForeColor = Color.Red;
     copyRowItem.Click += CopyRowItem_Click;
     contextMenu.Items.Add(copyCellItem);
     contextMenu.Items.Add(copyRowItem);
 }

 private void RadGridView1_ContextMenuOpening(object sender, ContextMenuOpeningEventArgs e)
 {
     e.ContextMenu = contextMenu.DropDown;
 }          

````
````VB.NET
Private contextMenu As RadContextMenu

    Private Sub RadForm1_Load(ByVal sender As Object, ByVal e As EventArgs)
        contextMenu = New RadContextMenu()
        Dim copyCellItem As RadMenuItem = New RadMenuItem("Copy Cell")
        copyCellItem.ForeColor = Color.Red
        AddHandler copyCellItem.Click, AddressOf CopyCellItem_Click
        Dim copyRowItem As RadMenuItem = New RadMenuItem("Copy Row")
        copyRowItem.ForeColor = Color.Red
        AddHandler copyRowItem.Click, AddressOf CopyRowItem_Click
        contextMenu.Items.Add(copyCellItem)
        contextMenu.Items.Add(copyRowItem)
    End Sub    
     
Private Sub RadGridView1_ContextMenuOpening(ByVal sender As Object, ByVal e As ContextMenuOpeningEventArgs)
    e.ContextMenu = contextMenu.DropDown
End Sub     
    
````

Thanks to the build-in [Copy/Paste functionality]({%slug winforms/gridview/cut-copy-paste%}) which **RadGridView** supports, you can store the text in the Clipboard and then paste it in a different location. **RadGridView** copies the selected data considering the **SelectionMode**. If the **SelectionMode** property is set to *FullRowSelect*, the entire row will be copied. If it is set to *CellSelect* only the selected cell will be copied. 

In the *CopyCellItem_Click* event handler you should first store the **GridViewSelectionMode**, set the **SelectionMode** to *CellSelect*, execute the **Copy** method, and then restore the **SelectionMode**. 

In the *CopyRowItem_Click* event handler you should do the same, but set the **SelectionMode** to *FullRowSelect*. Here is the code snippet:

####  Copy cell/row functionality

````C#

private void CopyCellItem_Click(object sender, EventArgs e)
{
    GridViewSelectionMode selecionMode = this.radGridView1.SelectionMode;
    this.radGridView1.SelectionMode = GridViewSelectionMode.CellSelect;
    this.radGridView1.CurrentRow.Cells[this.radGridView1.CurrentColumn.Name].IsSelected = true;
    this.radGridView1.Copy();
    this.radGridView1.SelectionMode = selecionMode;
    this.radGridView1.CurrentRow.IsSelected = true;
}

private void CopyRowItem_Click(object sender, EventArgs e)
{
    GridViewSelectionMode selecionMode = this.radGridView1.SelectionMode;
    this.radGridView1.SelectionMode = GridViewSelectionMode.FullRowSelect;
    this.radGridView1.CurrentRow.IsSelected = true;
    this.radGridView1.Copy();
    this.radGridView1.SelectionMode = selecionMode;
    this.radGridView1.CurrentRow.IsSelected = true; 
}

````
````VB.NET
Private Sub CopyCellItem_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim selecionMode As GridViewSelectionMode = Me.radGridView1.SelectionMode
    Me.radGridView1.SelectionMode = GridViewSelectionMode.CellSelect
    Me.radGridView1.CurrentRow.Cells(Me.radGridView1.CurrentColumn.Name).IsSelected = True
    Me.radGridView1.Copy()
    Me.radGridView1.SelectionMode = selecionMode
    Me.radGridView1.CurrentRow.IsSelected = True
End Sub

Private Sub CopyRowItem_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim selecionMode As GridViewSelectionMode = Me.radGridView1.SelectionMode
    Me.radGridView1.SelectionMode = GridViewSelectionMode.FullRowSelect
    Me.radGridView1.CurrentRow.IsSelected = True
    Me.radGridView1.Copy()
    Me.radGridView1.SelectionMode = selecionMode
    Me.radGridView1.CurrentRow.IsSelected = True
End Sub
    
````





    
   
  
    
 
