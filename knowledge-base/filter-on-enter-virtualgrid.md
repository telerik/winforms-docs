---
title: Filter when Enter is pressed in RadVirtualGrid
description: This article shows how you can filter when Enter is presses instead on every keystroke.
type: how-to
page_title: Filter on Enter in RadVirtualGrid
slug: filter-on-enter-virtualgrid
position: 0
tags: RadVirtualGrid, filter
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2019.3.917|RadVirtualGrid for WinForms|[Nadya Karaivanova]|

## Description

By default, the filtering operation is performed on every keystroke. However, a common case is to perform the filtering operation after the value is entered, for example when Enter is pressed.

## Solution 

 To achieve this you need to handle the **CellEditorInitialized** event and get access to the **VirtualGridTextBoxEditor**. Then, check if Enter is pressed in order to perform the filtering operation. The **SynchronizeRows** method will fire the **CellValueNeeded** event, and all the cells will be populated again with data. This is demonstrated in the following code snippet.

#### Filter on Enter

````C#
 BindingSource bs = new BindingSource();
 private void RadVirtualGrid1_CellEditorInitialized(object sender, VirtualGridCellEditorInitializedEventArgs e)
 {
     if (e.RowIndex == RadVirtualGrid.FilterRowIndex)
     {
         VirtualGridTextBoxEditor editor = e.ActiveEditor as VirtualGridTextBoxEditor;
         RadTextBoxEditorElement el = editor.EditorElement as RadTextBoxEditorElement;
         el.KeyDown -= El_KeyDown;
         el.KeyDown += El_KeyDown;
     }
 }

private void El_KeyDown(object sender, KeyEventArgs e)
{
    if (e.KeyCode == Keys.Enter)
    {
        bs.Filter = this.radVirtualGrid1.FilterDescriptors.Expression;
        radVirtualGrid1.RowCount = bs.List.Count;
        radVirtualGrid1.VirtualGridElement.TableElement.SynchronizeRows();
    }
}

````
````VB.NET
Private bs As BindingSource = New BindingSource()
Private Sub RadVirtualGrid1_CellEditorInitialized(ByVal sender As Object, ByVal e As VirtualGridCellEditorInitializedEventArgs)
        If e.RowIndex = RadVirtualGrid.FilterRowIndex Then
            Dim editor As VirtualGridTextBoxEditor = TryCast(e.ActiveEditor, VirtualGridTextBoxEditor)
            Dim el As RadTextBoxEditorElement = TryCast(editor.EditorElement, RadTextBoxEditorElement)
            el.KeyDown -= AddressOf El_KeyDown
            el.KeyDown += AddressOf El_KeyDown
        End If
    End Sub

    Private Sub El_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
        If e.KeyCode = Keys.Enter Then
            bs.Filter = Me.radVirtualGrid1.FilterDescriptors.Expression
            radVirtualGrid1.RowCount = bs.List.Count
            radVirtualGrid1.VirtualGridElement.TableElement.SynchronizeRows()
        End If
    End Sub

```` 
{{endregion}} 

# See Also

* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})