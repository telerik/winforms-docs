---
title: CheckBoxEditor - submit value change
page_title: CheckBoxEditor - submit value change | UI for WinForms Documentation
description: CheckBoxEditor - submit value change
slug: winforms/gridview/editors/how-to/checkboxeditor---submit-value-change
tags: checkboxeditor,-,submit,value,change
published: False
position: 1
---

# CheckBoxEditor - submit value change



## 

[GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})
          uses permanent editors for its cells, which means that the editor is always visible and the cell should not have to
          be brought to edit mode in order to change its value. The specific thing about the permanent editors is that their
          value will not be submitted to the underlying cell until the current cell is being changed.
        

Of course, there are cases where immediate value submission is needed. In this case all you have to do is to subscribe to
          the __ValueChanged__ event of RadGridView, which will get triggered when an editor value is being 
          changed and call the grid's __EndEdit__ method, which will submit the editor value to its cell.
        #_[C#] _

	



{{source=..\SamplesCS\GridView\Editors\How-To\CheckBoxEditorSubmitValueChange.cs region=ValueChanged}} 
{{source=..\SamplesVB\GridView\Editors\How-To\CheckBoxEditorSubmitValueChange.vb region=ValueChanged}} 

````C#
        private void RadGridView1_ValueChanged(object sender, EventArgs e)
        {
            if (radGridView1.CurrentColumn.Name == "MyCheckBoxColumnName")
            {
                radGridView1.EndEdit();
            }
        }
````
````VB.NET
    Private Sub RadGridView1_ValueChanged(sender As Object, e As EventArgs) Handles RadGridView1.ValueChanged
        If RadGridView1.CurrentColumn.Name = "MyCheckBoxColumnName" Then
            RadGridView1.EndEdit()
        End If
    End Sub
    '
````

{{endregion}} 



