---
title: Filter on Enter
page_title: Filter on Enter - RadGridView
description: This article shows how you can filter when Enter is presses instead on every keystroke.
slug: winforms/gridview/filtering/basic-filtering
tags: basic,filtering
published: True
position: 0
---

# Filter when Enter is pressed

By default the filtering operation is performed on every keystroke. However a common case is to perform the filtering operation after the value is entered, for example when Enter is pressed. To achieve this you need to cancel the filtering operation until Enter is pressed. This is demonstrated in the following code snippet.

>note The __AutoFilterDelay__ property gets or sets a value in milliseconds that indicates the delay between the last key press and the filtering operation (available since R1 2019 SP1).

#### Cancel filtering until Enter is pressed. 

{{source=..\SamplesCS\GridView\Filtering\FilterOnEnter.cs region=FilterCode}} 
{{source=..\SamplesVB\GridView\Filtering\FilterOnEnter.vb region=FilterCode}}
````C#
private bool EnterPress = false;
private void radGridView1_FilterChanging(object sender, GridViewCollectionChangingEventArgs e)
{
    if (!EnterPress)
    {
        e.Cancel = true;
    }
    EnterPress = false;
}
private void radGridView1_CellBeginEdit(object sender, GridViewCellCancelEventArgs e)
{
    if (e.Row is GridViewFilteringRowInfo)
    {
        RadTextBoxEditor ed = e.ActiveEditor as RadTextBoxEditor;
        RadTextBoxEditorElement el = ed.EditorElement as RadTextBoxEditorElement;
        el.KeyDown -= el_KeyDown;
        el.KeyDown += el_KeyDown;
    }
}
private void el_KeyDown(object sender, KeyEventArgs e)
{
    if (e.KeyCode == Keys.Enter)
    {
        EnterPress = true;
    }
}

````
````VB.NET
Private EnterPress As Boolean = False
Private Sub radGridView1_FilterChanging(ByVal sender As Object, ByVal e As GridViewCollectionChangingEventArgs)
    If Not EnterPress Then
        e.Cancel = True
    End If
    EnterPress = False
End Sub
Private Sub radGridView1_CellBeginEdit(ByVal sender As Object, ByVal e As GridViewCellCancelEventArgs)
    If TypeOf e.Row Is GridViewFilteringRowInfo Then
        Dim ed As RadTextBoxEditor = TryCast(e.ActiveEditor, RadTextBoxEditor)
        Dim el As RadTextBoxEditorElement = TryCast(ed.EditorElement, RadTextBoxEditorElement)
        RemoveHandler el.KeyDown, AddressOf el_KeyDown
        AddHandler el.KeyDown, AddressOf el_KeyDown
    End If
End Sub
Private Sub el_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
    If e.KeyCode = Keys.Enter Then
        EnterPress = True
    End If
End Sub

```` 


{{endregion}} 

# See Also

* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})
