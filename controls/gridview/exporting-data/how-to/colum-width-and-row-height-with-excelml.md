---
title: Set Column Width and Row Height with ExcelML format 
page_title: Set Column Width and Row Height with ExcelML format  | RadGridView
description: This article shows how on can set the cells size with ExcelML format is used.
slug: winforms/gridview/exporting-data/how-to/column-width-row-height
tags: row,column,height,width
published: True
position: 1
---

# Set Column Width and Row Height with ExcelML format 

### Columns Width

You can set the columns with by using the __ExcelTableCreated__ event. This event allows you to access the the column attributes and set the columns width.

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ColumnWidth}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ColumnWidth}}
````C#
private void Exporter_ExcelTableCreated(object sender, Telerik.WinControls.UI.Export.ExcelML.ExcelTableCreatedEventArgs e)
{
    foreach (ColumnElement item in e.ExcelTableElement.Columns)
    {
        item.Attributes["ss:Width"] = "300";
    }
}

````
````VB.NET
Private Sub Exporter_ExcelTableCreated1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.ExcelML.ExcelTableCreatedEventArgs)
    For Each item As ColumnElement In e.ExcelTableElement.Columns
        item.Attributes("ss:Width") = "300"
    Next item
End Sub

````


{{endregion}} 


### Rows Height

You can set the rows height by using the __ExcelRowFormating__ event. This event allows you to access the the row attributes and set the height.

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=RowHeight}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=RowHeight}}
````C#
private void Exporter_ExcelRowFormatting(object sender, ExcelRowFormattingEventArgs e)
{
    if (e.ExcelRowElement.Attributes.Contains("ss:Height"))
    {
        var att = e.ExcelRowElement.Attributes["ss:Height"];
        if (Convert.ToInt32(att) > 400)
        {
            e.ExcelRowElement.Attributes["ss:Height"] = "400";
        }
    }
}

````
````VB.NET
Private Sub Exporter_ExcelRowFormatting(ByVal sender As Object, ByVal e As ExcelRowFormattingEventArgs)
    If e.ExcelRowElement.Attributes.Contains("ss:Height") Then
        Dim att = e.ExcelRowElement.Attributes("ss:Height")
        If Convert.ToInt32(att) > 400 Then
            e.ExcelRowElement.Attributes("ss:Height") = "400"
        End If
    End If
End Sub

````



{{endregion}} 




