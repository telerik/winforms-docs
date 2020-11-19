---
title: Set CharacterCasing for GridViewComboBoxColumn
description: This article shows you how to use editor initialized event to set the GridViewComboBoxColumn TextBox CharacterCasing
type: how-to
page_title: How to set GridViewComboBoxColumn characterCasing
slug: gridview-comboboxcolumn-charactercasing
position: 0
tags: GridView, GridViewComboBoxColumn, ComboBoxColumn, Default Editors, Custom Editors, TextBox, CharacterCasing
res_type: kb
---

## Environment
 
| Product Version | Product                  | Author           |
|-----------------|--------------------------|------------------|
| 2020.3.1020     | RadGridView for WinForms |[Lance McCarthy](https://www.telerik.com/blogs/author/lance-mccarthy)|
 

## Description

Currently, you cannot set **CharacterCasing** for a **GridViewComboBoxColumn**'s editor via a top-level property. 

## Solution 

You can use the **RadGridView** `CellEditorInitialized` event to access the **RadDropDownListEditor**. With that reference, you can set the internal TextBoxItem's **CharacterCasing** property directly.

Here is an example where we enforce Upper-Case:

````C#
private void RadGridView1_CellEditorInitialized(object sender, GridViewCellEventArgs e)
{
    var ddlEditor = e.ActiveEditor as RadDropDownListEditor;
    if (ddlEditor != null)
    {
        var element = ddlEditor.EditorElement as RadDropDownListEditorElement;
        element.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown;
        element.TextBox.TextBoxItem.CharacterCasing = CharacterCasing.Upper;
    }
}
````
````VB.NET
Private Sub RadGridView1_CellEditorInitialized(ByVal sender As Object, ByVal e As GridViewCellEventArgs)
    Dim ddlEditor = TryCast(e.ActiveEditor, RadDropDownListEditor)
    If ddlEditor IsNot Nothing Then
        Dim element = TryCast(ddlEditor.EditorElement, RadDropDownListEditorElement)
        element.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown
        element.TextBox.TextBoxItem.CharacterCasing = CharacterCasing.Upper
    End If
End Sub
````


# See Also

 * [RadGridView Default Editors]({%slug winforms/gridview/editors/default-editors%}) 





    
   
  
    
 
