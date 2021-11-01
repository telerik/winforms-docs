---
title: How to Save/Load Layout with Custom Columns in RadGridView
description: Learn how to properly save/load with custom columns in RadGridView.
type: how-to
page_title: How to Save/Load Layout with Custom Columns in RadGridView
slug: gridview-save-layout-with-custom-columns
position: 0
tags: gridview, custom, column, xml, save, load, layout
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.3.914|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

**RadGridView** provides a convenient API for creating [custom columns]({%slug winforms/gridview/cells/creating-custom-cells%}) with custom cell elements. However, the XML layout appears to be removing all the columns and related grid data after adding the custom column.

A common requirement is to save the layout with all the columns in the grid and restore this layout at a later moment together with the custom columns. 

## Solution 

For the serialization, the custom column needs to have a parameterless constructor in order to be able to load the layout later:
  

````C#
    public class ProgressBarColumn : GridViewDataColumn
    {
        public ProgressBarColumn()
        {
        }

        public ProgressBarColumn(string fieldName) : base(fieldName)
        {
        }

        public override Type GetCellType(GridViewRowInfo row)
        {
            if (row is GridViewDataRowInfo)
            {
                return typeof(ProgressBarCellElement);
            }
            return base.GetCellType(row);
        }
    }

````
````VB.NET

     Public Class ProgressBarColumn
        Inherits GridViewDataColumn

        Public Sub New()
        End Sub

        Public Sub New(ByVal fieldName As String)
            MyBase.New(fieldName)
        End Sub

        Public Overrides Function GetCellType(ByVal row As GridViewRowInfo) As Type
            If TypeOf row Is GridViewDataRowInfo Then
                Return GetType(ProgressBarCellElement)
            End If

            Return MyBase.GetCellType(row)
        End Function
    End Class

```` 

# See Also

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%}) 
* [Save and Load Layout]({%slug winforms/gridview/save-and-load-layout/overview%})





    
   
  
    
 
