---
title: End-user Support
page_title: End-user Support | UI for WinForms Documentation
description: End-user Support
slug: winforms/gridview/expression-editor/end-user-support
tags: end-user,support
published: True
position: 1
previous_url: gridview-expressioneditor-end-user-support
---

# End-user Support



End-users have two options for getting the RadExpressionEditor shown at run time:
      

## Showing RadExpressionEditor from RadGridView User Interface

End-users can open the editor by navigating to a built-in menu item from the context menu of RadGridView. In order to enable this menu item, the developer has to set the __EnableExpressionEditor__ property *true*. Please note that the expression column should be an unbound column:<br>![gridview-expressioneditor-end-user-support 001](images/gridview-expressioneditor-end-user-support001.png)

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=enableExpressionEditor}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=enableExpressionEditor}} 

````C#
GridViewTextBoxColumn col = new GridViewTextBoxColumn();
col.Name = "expression";
col.HeaderText = "My Expression";
col.Width = 150;
col.EnableExpressionEditor = true;
this.radGridView1.Columns.Add(col);

````
````VB.NET
Dim col As GridViewTextBoxColumn = New GridViewTextBoxColumn()
col.Name = "expression"
col.HeaderText = "My Expression"
col.Width = 150
col.EnableExpressionEditor = True
Me.RadGridView1.Columns.Add(col)

````

{{endregion}} 

## Showing RadExpressionEditor on a custom user action

The developer can show RadExpressionEditor on a custom user action, for example on a button click, without using the standard UI of RadGridView. To do so, the developer should just call the static Show method of the RadExpressionEditorForm class:

{{source=..\SamplesCS\GridView\ExpressionEditor\CustomFunctions.cs region=expressionFormShow}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomFunctions.vb region=expressionFormShow}} 

````C#
RadExpressionEditorForm.Show(this.radGridView1, this.radGridView1.Columns["expression"]);

````
````VB.NET
RadExpressionEditorForm.Show(Me.RadGridView1, Me.RadGridView1.Columns("expression"))

````

{{endregion}} 



