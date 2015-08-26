---
title: Iterating Rows
page_title: Iterating Rows | UI for WinForms Documentation
description: Iterating Rows
slug: winforms/gridview/rows/iterating-rows
tags: iterating,rows
published: True
position: 1
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
        '
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
        '
````

{{endregion}} 

## Iterating all rows in a hierarchical RadGridView

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
        '
````

{{endregion}} 



