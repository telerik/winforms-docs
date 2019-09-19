---
title: StartsWith search in RadGridView
description: This article shows how you can perform StartsWith search in RadGridView
type: how-to
page_title: StartsWith search in RadGridView
slug: starts-with-search-in-radgridview
position: 0
tags: gridview, search
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

By default, **RadGridView** searches for cell values that '*Contain*' the search criteria. 

![starts-with-search-in-radgridview001](images/starts-with-search-in-radgridview001.png)

This article demonstrates how to search only for the cells that '*StartsWith*' the search criteria.

![starts-with-search-in-radgridview002](images/starts-with-search-in-radgridview002.png)

## Solution 

All you need to do, is to create a custom **GridViewSearchRowInfo**. Subscribe to the **CreateRowInfo** event **at design** time and use the following code snippet:


````C#

private void radGridView1_CreateRowInfo(object sender, GridViewCreateRowInfoEventArgs e)
{
    if (e.RowInfo is GridViewSearchRowInfo)
    {
         e.RowInfo = new CustomSearchRow(e.ViewInfo);
    }
}

public class CustomSearchRow : GridViewSearchRowInfo
{
    public CustomSearchRow(GridViewInfo viewInfo) : base(viewInfo)
    {
    }

    protected override bool MatchesSearchCriteria(string searchCriteria, GridViewRowInfo row, GridViewColumn col)
    {
        return (row.Cells[col.Name].Value + "").StartsWith(searchCriteria); 
    }
}
        

````
````VB.NET

 Private Sub RadGridView1_CreateRowInfo(sender As Object, e As Telerik.WinControls.UI.GridViewCreateRowInfoEventArgs) _
    Handles RadGridView1.CreateRowInfo
    If TypeOf e.RowInfo Is GridViewSearchRowInfo Then
        e.RowInfo = New CustomSearchRow(e.ViewInfo)
    End If
End Sub
Public Class CustomSearchRow
    Inherits GridViewSearchRowInfo

    Public Sub New(ByVal viewInfo As GridViewInfo)
        MyBase.New(viewInfo)
    End Sub

    Protected Overrides Function MatchesSearchCriteria(ByVal searchCriteria As String, ByVal row As GridViewRowInfo, _
                                                       ByVal col As GridViewColumn) As Boolean
        Return (row.Cells(col.Name).Value & "").StartsWith(searchCriteria)
    End Function
End Class
     

```` 
 

# See Also

* [Search Row]({%slug winforms/gridview/rows/search-row%}) 





    
   
  
    
 
