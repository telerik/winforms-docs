---
title: Check only one checkbox in GridViewCheckBoxColumn
description: Check only one checkbox in GridViewCheckBoxColumn. Check it now!
type: how-to
page_title: Check only one checkbox in GridViewCheckBoxColumn
slug: check-only-one-checkbox-in-gridviewcheckboxcolumn
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q3 2009 SP1|RadGridView for WinForms|Nikolay Diyanov|Jan 13, 2009|
 

**INTRODUCTION**  
   
By default, GridViewCheckBoxColumn allows for multiple checked checkboxes. However, in certain cases you may want to use it as a kind of RadioButton column - i.e. allow the user to check only one checkbox at a time.  
   
**SOLUTION**  

In order to implement the desired requirement, first subscribe to the ValueChanged event and then execute the following code snippet in the ValueChanged event handler:  
   
````C#
void radGridView1_ValueChanged(object sender, EventArgs e)
{
    RadCheckBoxEditor editor = sender as RadCheckBoxEditor;
    if (editor != null && (bool)editor.Value == true)
    {
        this.radGridView1.GridElement.BeginUpdate();
        foreach (GridViewDataRowInfo row in this.radGridView1.Rows)
        {
            if (row != this.radGridView1.CurrentRow)
            {
                row.Cells["Bool"].Value = false;
            }
        }
        this.radGridView1.GridElement.EndUpdate();
    }
}

````
````VB.NET
Private Sub radGridView1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim editor As RadCheckBoxEditor = TryCast(sender, RadCheckBoxEditor)
    If Not editor Is Nothing AndAlso CBool(editor.Value) = True Then
        Me.radGridView1.GridElement.BeginUpdate()
        For Each row As GridViewDataRowInfo In Me.radGridView1.Rows
            If Not row Is Me.radGridView1.CurrentRow Then
                row.Cells("Bool").Value = False
            End If
        Next row
        Me.radGridView1.GridElement.EndUpdate()
    End If
End Sub

````   

Basically, we first check if the current editor is RadCheckBoxEditor and if the editor's value is *true*. If this case is true, we set the value of all the cells contained in the current column, but not contained in the current row to *false*.

