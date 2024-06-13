---
title: Hide expand/collapse image in hierarchical RadGridView
description: Hide expand/collapse image in hierarchical RadGridView. Check it now!
type: how-to
page_title: Hide expand/collapse image in hierarchical RadGridView
slug: hide-expand-collapse-image-in-hierarchical-radgridview
tags: gridview, hierarchical, expand, collapse
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2010 SP1|RadGridView for WinForms|Nikolay Diyanov|July 27, 2010|
 

## PROBLEM  
   
When RadGridView displays hierarchical data, you expand/collapse child levels in the hierarchy with the help of GridGroupExpanderCellElement containing an expand/collapse image. However, when you do not have child data for certain rows, you may not want to show the expand/collapse images in the GridGroupExpanderCellElement.  
   
## SOLUTION
   
First of all, we will create a method which returns *true* if there is child data and *false* if there is no child data for a parent row:  
 
 
````C#
private bool IsExpandable(GridViewRowInfo rowInfo)
{
    if (rowInfo.ChildRows != null && rowInfo.ChildRows.Count > 0)
    {
        return true;
    }
 
    return false;
}

````
````VB.NET
Private Function IsExpandable(ByVal rowInfo As GridViewRowInfo) As Boolean
    If rowInfo.ChildRows IsNot Nothing AndAlso rowInfo.ChildRows.Count > 0 Then
        Return True
    End If

    Return False
End Function

````
   
Next, we will subscribe to the [ViewCellFormatting](https://docs.telerik.com/devtools/winforms/gridview/cells/formatting-cells) and ChildViewExpanding events of RadGridView. In ViewCellFormatting we will hide the expand/collapse image while in the ChildViewExpanding we will prevent a row from being expanded if there is no child data:  
 

````C#
private void radGridView1_ViewCellFormatting(object sender, CellFormattingEventArgs e)
{
    GridGroupExpanderCellElement cell = e.CellElement as GridGroupExpanderCellElement;
    if (cell != null && e.CellElement.RowElement is GridDataRowElement)
    {
        if (!IsExpandable(cell.RowInfo))
        {
            cell.Expander.Visibility = Telerik.WinControls.ElementVisibility.Hidden;
        }
        else
        {
            cell.Expander.Visibility = Telerik.WinControls.ElementVisibility.Visible;
        }
    }
}
  
private void radGridView1_ChildViewExpanding(object sender, ChildViewExpandingEventArgs e) 
{ 
    e.Cancel = !IsExpandable(e.ParentRow); 
}

````
````VB.NET
Private Sub radGridView1_ViewCellFormatting(ByVal sender As Object, ByVal e As CellFormattingEventArgs)
        Dim cell As GridGroupExpanderCellElement = TryCast(e.CellElement, GridGroupExpanderCellElement)

        If cell IsNot Nothing AndAlso TypeOf e.CellElement.RowElement Is GridDataRowElement Then

            If Not IsExpandable(cell.RowInfo) Then
                cell.Expander.Visibility = Telerik.WinControls.ElementVisibility.Hidden
            Else
                cell.Expander.Visibility = Telerik.WinControls.ElementVisibility.Visible
            End If
        End If
    End Sub

    Private Sub radGridView1_ChildViewExpanding(ByVal sender As Object, ByVal e As ChildViewExpandingEventArgs)
        e.Cancel = Not IsExpandable(e.ParentRow)
End Sub

````


