---
title: Export Selected Rows in RadGridView
description: This article shows how to export only selected rows in RadGridView.
type: how-to
page_title: How to export only selected rows in RadGridView.
slug: gridview-export-selected-rows
position: 0
tags: gridview, export, selected, rows ,DoNotExport,HiddenOption
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.2.606|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|


## Description

A common requirement is to export only the selected rows in **RadGridView**. This article shows how to achieve this functionality. The __GridViewSpreadExport__ exposes a __HiddenRowOption__ property which determines whether to export hidden rows. We can use this option for our scenario.  

![radgridview-copy-cell-row](images/radgridview-copy-cell-row.gif)

## Solution 

To achieve this functionality, you can first set the __HiddenRowOption__ to ignore exporting hidden rows (HiddenOption.DoNotExport). Then you can hide the unselected rows before exporting. After the RadGridView control is exported, you can show the rows again.

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    List<GridViewRowInfo> list = new List<GridViewRowInfo>();
    foreach (GridViewRowInfo rowInfo in this.radGridView1.Rows)
    {
        if (rowInfo.IsSelected == false)
        {
            rowInfo.IsVisible = false;
            list.Add(rowInfo);
        }
    }

    GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.radGridView1);         
    ISpreadExportRenderer spreadExportRenderer = new SpreadExportRenderer();
    spreadExporter.ExportFormat = SpreadExportFormat.Xlsx;
    spreadExporter.HiddenRowOption = HiddenOption.DoNotExport;
    spreadExporter.ExportVisualSettings = true;
    spreadExporter.RunExport("../../exportedFile.xlsx", spreadExportRenderer, "SheetName");
	
    foreach (GridViewRowInfo rowInfo in list)
    {
            rowInfo.IsVisible = true;
    }
}

      

````
````VB.NET

Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim list As List(Of GridViewRowInfo) = New List(Of GridViewRowInfo)()

    For Each rowInfo As GridViewRowInfo In Me.radGridView1.Rows

        If rowInfo.IsSelected = False Then
            rowInfo.IsVisible = False
            list.Add(rowInfo)
        End If
    Next

    Dim spreadExporter As GridViewSpreadExport = New GridViewSpreadExport(Me.radGridView1)
    Dim spreadExportRenderer As ISpreadExportRenderer = New SpreadExportRenderer()
    spreadExporter.ExportFormat = SpreadExportFormat.Xlsx
    spreadExporter.HiddenRowOption = HiddenOption.DoNotExport
    spreadExporter.ExportVisualSettings = True
    spreadExporter.RunExport("../../exportedFile.xlsx", spreadExportRenderer, "SheetName")

    For Each rowInfo As GridViewRowInfo In list
        rowInfo.IsVisible = True
    Next
End Sub

    
````







    
   
  
    
 
