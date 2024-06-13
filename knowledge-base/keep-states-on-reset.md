---
title: Save and Restore the rows states when resetting. 
description: This article show how you can sava an restore the row states when expanding or collapsing. 
type: how-to
page_title: Save and Restore the rows states when resetting. 
slug: keep-states-on-reset
position: 0
tags: gridview, save, restore, load 
ticketid: 1414148
res_type: kb
---

## Environment
<table>
    <tr>
        <td>Product Version</td>
        <td>2018.1 220</td>
    </tr>
    <tr>
        <td>Product</td>
        <td>RadGridView for WinForms</td>
    </tr>
</table>

# Description

There are cases where you need to reset or rebind the grid which will reset the expanded rows and the position of the scrollbar. 

# Solution

This article shows how you can save/restore the sates and the scrollbar position.

1\. First you need a class to store the state of each row. 

````C#
struct State
{
    public bool Expanded { get; set; }

    public bool Selected { get; set; }

    public State(bool expanded, bool selected) : this()
    {
        this.Expanded = expanded;
        this.Selected = selected;
    }
}

````
````VB.NET
Friend Structure State
	Public Property Expanded() As Boolean

	Public Property Selected() As Boolean

	Public Sub New(ByVal expanded As Boolean, ByVal selected As Boolean)
		Me.New()
		Me.Expanded = expanded
		Me.Selected = selected
	End Sub
End Structure
````

2\. Now you can create the methods that will save and then restore the grid state: 

````C#
Dictionary<object, State> nodeStates = new Dictionary<object, State>();
private void SaveExpandedStates(GridViewDataRowInfo rowToSave)
{
    if (rowToSave != null && rowToSave.DataBoundItem != null)
    {
        if (!nodeStates.ContainsKey(rowToSave.DataBoundItem))
        {
            nodeStates.Add(rowToSave.DataBoundItem, new State(rowToSave.IsExpanded, rowToSave.IsCurrent));
        }
        else
        {
            nodeStates[rowToSave.DataBoundItem] = new State(rowToSave.IsExpanded, rowToSave.IsCurrent);
        }
    }
    foreach (GridViewDataRowInfo childRow in rowToSave.ChildRows)
    {
        SaveExpandedStates(childRow);
    }
}

private void RestoreExpandedStates(GridViewDataRowInfo rowToRestore)
{
    if (rowToRestore != null && rowToRestore.DataBoundItem != null &&
        nodeStates.ContainsKey(rowToRestore.DataBoundItem))
    {
        rowToRestore.IsExpanded = nodeStates[rowToRestore.DataBoundItem].Expanded;
        rowToRestore.IsCurrent = nodeStates[rowToRestore.DataBoundItem].Selected;
        rowToRestore.IsSelected = nodeStates[rowToRestore.DataBoundItem].Selected;
    }

    foreach (GridViewDataRowInfo childRow in rowToRestore.ChildRows)
    {
        RestoreExpandedStates(childRow);
    }
}

````
````VB.NET
Private nodeStates As New Dictionary(Of Object, State)()
Private Sub SaveExpandedStates(ByVal rowToSave As GridViewDataRowInfo)
	If rowToSave IsNot Nothing AndAlso rowToSave.DataBoundItem IsNot Nothing Then
		If Not nodeStates.ContainsKey(rowToSave.DataBoundItem) Then
			nodeStates.Add(rowToSave.DataBoundItem, New State(rowToSave.IsExpanded, rowToSave.IsCurrent))
		Else
			nodeStates(rowToSave.DataBoundItem) = New State(rowToSave.IsExpanded, rowToSave.IsCurrent)
		End If
	End If
	For Each childRow As GridViewDataRowInfo In rowToSave.ChildRows
		SaveExpandedStates(childRow)
	Next childRow
End Sub

Private Sub RestoreExpandedStates(ByVal rowToRestore As GridViewDataRowInfo)
	If rowToRestore IsNot Nothing AndAlso rowToRestore.DataBoundItem IsNot Nothing AndAlso nodeStates.ContainsKey(rowToRestore.DataBoundItem) Then
		rowToRestore.IsExpanded = nodeStates(rowToRestore.DataBoundItem).Expanded
		rowToRestore.IsCurrent = nodeStates(rowToRestore.DataBoundItem).Selected
		rowToRestore.IsSelected = nodeStates(rowToRestore.DataBoundItem).Selected
	End If

	For Each childRow As GridViewDataRowInfo In rowToRestore.ChildRows
		RestoreExpandedStates(childRow)
	Next childRow
End Sub

````

3\. The final step is to use the above methods, this snippet show how restore the scrollbar position as well:

````C#
private void RadButton1_Click(object sender, EventArgs e)
{
    int scrollBarValue = radGridView1.TableElement.VScrollBar.Value;
    foreach (GridViewDataRowInfo rowToSave in radGridView1.Rows)
    {
        SaveExpandedStates(rowToSave);
    }


    radGridView1.DataSource = null;
    radGridView1.DataSource = master;


    foreach (GridViewDataRowInfo rowToRestore in radGridView1.Rows)
    {
        RestoreExpandedStates(rowToRestore);
    }

    radGridView1.TableElement.VScrollBar.Value = scrollBarValue;

}

````
````VB.NET
Private Sub RadButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
	Dim scrollBarValue As Integer = radGridView1.TableElement.VScrollBar.Value
	For Each rowToSave As GridViewDataRowInfo In radGridView1.Rows
		SaveExpandedStates(rowToSave)
	Next rowToSave


	radGridView1.DataSource = Nothing
	radGridView1.DataSource = master


	For Each rowToRestore As GridViewDataRowInfo In radGridView1.Rows
		RestoreExpandedStates(rowToRestore)
	Next rowToRestore

	radGridView1.TableElement.VScrollBar.Value = scrollBarValue

End Sub
````

