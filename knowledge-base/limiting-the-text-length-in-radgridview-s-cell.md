---
title: Limiting the text length in RadGridView's cell
description: Limiting the text length in RadGridView's cell. Check it now!
type: how-to
page_title: Limiting the text length in RadGridView's cell
slug: limiting-the-text-length-in-radgridview-s-cell
tags: gridview, limit, text, length
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2009 SP1|RadGridView for WinForms|Nikolay Diyanov|May 23, 2012|

  
## PROBLEM 
   
Limit the text length in RadGridView's text column when it is in edit mode  
  
## SOLUTION  
   
If you need to limit the text length when typing a new value in a text column cell, the best way is to prevent the user from typing more symbols than allowed. This can be done by setting the **MaxLength** propertyof RadTextBoxEditor's RadTextBoxEditorElement:  

````C#
void radGridView1_CellEditorInitialized(object sender, GridViewCellEventArgs e)     
{     
    if (e.ColumnIndex == 4)  
    {  
        if (e.Column is GridViewTextBoxColumn)     
        {     
            ((RadTextBoxEditorElement)((RadTextBoxEditor)this.radGridView1.ActiveEditor).EditorElement).MaxLength = 30;     
        }     
    }  
} 

````
````VB.NET
Private Sub radGridView1_CellEditorInitialized(ByVal sender As Object, ByVal e As GridViewCellEventArgs)  
    If e.ColumnIndex = 4 Then 
        If TypeOf e.Column Is GridViewTextBoxColumn Then 
            CType((CType(Me.radGridView1.ActiveEditor, RadTextBoxEditor)).EditorElement, RadTextBoxEditorElement).MaxLength = 30  
        End If 
    End If 
End Sub 

````

