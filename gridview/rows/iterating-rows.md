---
title: Iterating Rows
page_title: Iterating Rows | RadGridView
description: This article shows how you can iterate all rows in regular and hierarchical grid.
slug: winforms/gridview/rows/iterating-rows
tags: iterating,rows
published: True
position: 1
previous_url: gridview-rows-iterating-rows
---

# Iterating Rows

You can iterate through grid rows using the __Rows__ collection of __GridViewRowInfo__ objects. The example below selects the last row, then iterates looking for selected rows. When the selected row is found, the __GridViewRowInfo.EnsureVisible()__ method scrolls the row into view:

{{source=..\SamplesCS\GridView\Rows\IteratingRows.cs region=iteratingRows}} 
{{source=..\SamplesVB\GridView\Rows\IteratingRows.vb region=iteratingRows}} 

````C#
GridViewRowInfo lastRow1 = radGridView1.Rows[radGridView1.Rows.Count - 1];
lastRow1.IsSelected = true;
foreach (GridViewRowInfo rowInfo in radGridView1.Rows)
{
    if (rowInfo.IsSelected)
    {
        rowInfo.EnsureVisible();
    }
}

````
````VB.NET
Dim lastRow As GridViewRowInfo = RadGridView1.Rows(RadGridView1.Rows.Count - 1)
lastRow.IsSelected = True
For Each rowInfo As GridViewRowInfo In RadGridView1.Rows
    If rowInfo.IsSelected Then
        rowInfo.EnsureVisible()
    End If
Next

````

{{endregion}} 

## Finding a grid row by a value of one of its cells

You could search for specific value in __RadGridView__ by iterating through the rows and compare cells value. In the example below, you search for __searchedStr__ in __MyColumnName__ column:

{{source=..\SamplesCS\GridView\Rows\IteratingRows.cs region=findAGridRowByCellValue}} 
{{source=..\SamplesVB\GridView\Rows\IteratingRows.vb region=findAGridRowByCellValue}} 

````C#
string searchedStr = "Picture 2";
for (int r = 0; r < radGridView1.RowCount; r++)
{
    if (radGridView1.Rows[r].Cells["Picture Name"].Value.ToString().ToUpper().Equals(searchedStr.ToUpper()))
    {
        MessageBox.Show("Found a match");
        //do something 
    }
}

````
````VB.NET
Dim searchedStr As String = "Picture 2"
For row As Integer = 0 To RadGridView1.RowCount - 1
    If RadGridView1.Rows(row).Cells("Picture Name").Value.ToString().ToUpper().Equals(searchedStr.ToUpper()) Then
        'do something 
        MessageBox.Show("Found a match")
    End If
Next

````

{{endregion}} 

## Iterating all rows in a self-reference hierarchy

When you have a hierarchical grid with many templates you can use a recursive method to iterate trough all rows:

{{source=..\SamplesCS\GridView\Rows\IteratingRows.cs region=hierarchy}} 
{{source=..\SamplesVB\GridView\Rows\IteratingRows.vb region=hierarchy}} 

````C#
public void IterateAllRows(IEnumerable<GridViewRowInfo> rowsCollection)
{
    foreach (GridViewDataRowInfo row in rowsCollection)
    {
        Debug.WriteLine(row.Cells[0].Value);//This rows is used for demonstration only!
        if (row.HasChildRows())
        {
            IterateAllRows(row.ChildRows);
        }
    }
}

````
````VB.NET
Public Sub IterateAllRows(rowsCollection As IEnumerable(Of GridViewRowInfo))
    For Each row As GridViewDataRowInfo In rowsCollection
        Debug.WriteLine(row.Cells(0).Value)
        If row.HasChildRows() Then
            IterateAllRows(row.ChildRows)
        End If
    Next
End Sub

````

{{endregion}}


## Iterating hierarchical grid.

You can iterate through grid rows using the __Rows__ collection of __RadGridView__ objects. The example below cycles through the rows of the grid, modifies the values for certain cells in the different hierarchy levels and counts the rows and cells in the whole RadGridView.

{{source=..\SamplesCS\GridView\Rows\IteratingRows.cs region=IteratingHierarchicalRows}} 
{{source=..\SamplesVB\GridView\Rows\IteratingRows.vb region=IteratingHierarchicalRows}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    int count = 0;
    int i = 0;
    foreach (GridViewDataRowInfo dataRow in this.GetAllRows(this.radGridView1.MasterTemplate))
    {
        count++;
        foreach (GridViewCellInfo cell in dataRow.Cells)
        {
            if (cell.ColumnInfo.Name == "CompanyName" || cell.ColumnInfo.Name == "ShipCountry")
            {
                cell.Value = "TEST";
            }
            if (cell.ColumnInfo.Name == "UnitPrice")
            {
                cell.Value = 1.11111;
            }
            i++;
        }
    }
}
public List<GridViewRowInfo> GetAllRows(GridViewTemplate template)
{
    List<GridViewRowInfo> allRows = new List<GridViewRowInfo>();
    allRows.AddRange(template.Rows);
    foreach (GridViewTemplate childTemplate in template.Templates)
    {
        List<GridViewRowInfo> childRows = this.GetAllRows(childTemplate);
        allRows.AddRange(childRows);
    }
    return allRows;
}

````
````VB.NET
Private Sub radButton1_Click(sender As Object, e As EventArgs)
    Dim count As Integer = 0
    Dim i As Integer = 0
    For Each dataRow As GridViewDataRowInfo In Me.GetAllRows(Me.RadGridView1.MasterTemplate)
        count += 1
        For Each cell As GridViewCellInfo In dataRow.Cells
            If cell.ColumnInfo.Name = "CompanyName" OrElse cell.ColumnInfo.Name = "ShipCountry" Then
                cell.Value = "TEST"
            End If
            If cell.ColumnInfo.Name = "UnitPrice" Then
                cell.Value = 1.11111
            End If
            i += 1
        Next
    Next
End Sub
Public Function GetAllRows(template As GridViewTemplate) As List(Of GridViewRowInfo)
    Dim allRows As New List(Of GridViewRowInfo)()
    allRows.AddRange(template.Rows)
    For Each childTemplate As GridViewTemplate In template.Templates
        Dim childRows As List(Of GridViewRowInfo) = Me.GetAllRows(childTemplate)
        allRows.AddRange(childRows)
    Next
    Return allRows
End Function

````

{{endregion}}
# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

* [Painting Rows]({%slug winforms/gridview/rows/painting-rows%})

