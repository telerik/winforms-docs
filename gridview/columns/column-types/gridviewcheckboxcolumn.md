---
title: GridViewCheckBoxColumn
page_title: GridViewCheckBoxColumn
description: GridViewCheckBoxColumn
slug: gridview-columns-gridviewcheckboxcolumn
tags: gridviewcheckboxcolumn
published: True
position: 4
---

# GridViewCheckBoxColumn



__GridViewCheckBoxColumn__ displays and allows editing of boolean data. The values are shown as
        check boxes and allow the user to set or clear the check boxes to toggle the underlying boolean data values.
        __GridViewCheckBoxColumn__ inherits from __GridViewDataColumn.__![gridview-columns-gridviewcheckboxcolumn 001](images/gridview-columns-gridviewcheckboxcolumn001.png)

#### __[C#] Create and add GridViewCheckBoxColumn__

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=addCheckBoxColumn}}
	            GridViewCheckBoxColumn checkBoxColumn = new GridViewCheckBoxColumn();
	            checkBoxColumn.DataType = typeof(int);
	            checkBoxColumn.Name = "DiscontinuedColumn";
	            checkBoxColumn.FieldName = "Discontinued";
	            checkBoxColumn.HeaderText = "Discontinued?";
	            radGridView1.MasterTemplate.Columns.Add(checkBoxColumn);
	{{endregion}}



#### __[VB.NET] Create and add GridViewCheckBoxColumn__

{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=addCheckBoxColumn}}
	        Dim checkBoxColumn As New GridViewCheckBoxColumn()
	        checkBoxColumn.DataType = GetType(Integer)
	        checkBoxColumn.Name = "DiscontinuedColumn"
	        checkBoxColumn.FieldName = "Discontinued"
	        checkBoxColumn.HeaderText = "Discontinued?"
	        RadGridView1.MasterTemplate.Columns.Add(checkBoxColumn)
	{{endregion}}



The column has also a built-in functionality for checking all check boxes in it, via check box placed in the column header cell.
        By setting the __EnableHeaderCheckBox__ property to *true* you will 
        enable the embedded in header cell RadCheckBoxElement. 
      ![gridview-columns-gridviewcheckboxcolumn 002](images/gridview-columns-gridviewcheckboxcolumn002.png)

#### __[C#] Create and add GridViewCheckBoxColumn__

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=EnableHeaderCheckBox}}
	            checkBoxColumn.EnableHeaderCheckBox = true;
	{{endregion}}



#### __[VB.NET] Create and add GridViewCheckBoxColumn__

{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=EnableHeaderCheckBox}}
	        checkBoxColumn.EnableHeaderCheckBox = True
	{{endregion}}



## ValueChanged event

__ValueChanged__ event can be used in particular about check box
          state change. You have to check the active editor type as in the example below:
        

#### __[C#] __

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=valueChanged}}
	        void radGridView1_ValueChanged(object sender, EventArgs e)
	        {
	            if (this.radGridView1.ActiveEditor is RadCheckBoxEditor)
	            {
	                Console.WriteLine(this.radGridView1.CurrentCell.RowIndex);
	                Console.WriteLine(this.radGridView1.ActiveEditor.Value);
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=valueChanged}}
	    Private Sub RadGridView1_ValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadGridView1.ValueChanged
	        If TypeOf Me.RadGridView1.ActiveEditor Is RadCheckBoxEditor Then
	            Console.WriteLine(Me.RadGridView1.CurrentCell.RowIndex)
	            Console.WriteLine(Me.RadGridView1.ActiveEditor.Value)
	        End If
	    End Sub
	{{endregion}}



## HeaderCellToggleStateChanged event

To handle the toggle state change of the embedded check box in the header cell you should use 
          the __HeaderCellToggleStateChanged__ event of RadGridView.
        

#### __[C#] __

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=HeaderCellToggleStateChanged}}
	        void radGridView1_HeaderCellToggleStateChanged(object sender, GridViewHeaderCellEventArgs e)
	        {
	            Console.WriteLine(e.Column.Name);
	            Console.WriteLine(e.State);
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=HeaderCellToggleStateChanged}}
	    Private Sub radGridView1_HeaderCellToggleStateChanged(sender As Object, e As GridViewHeaderCellEventArgs)
	        Console.WriteLine(e.Column.Name)
	        Console.WriteLine(e.State)
	    End Sub
	{{endregion}}



## EditMode

The __EditMode__ property controls when the value of the editor will be submitted to the cell. By default, the current behavior 
          is kept (OnValidate) and the value will  be submitted only when the current cell changes or the grid looses focus. The new value (OnValueChange) will 
          submit the value immediately after the editor value changes.         
        

#### __[C#] __

{{source=..\SamplesCS\GridView\Columns\GridViewCheckBoxColumn1.cs region=EditMode}}
	            checkBoxColumn.EditMode = EditMode.OnValueChange;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\GridView\Columns\GridViewCheckBoxColumn1.vb region=EditMode}}
	        checkBoxColumn.EditMode = EditMode.OnValueChange
	{{endregion}}


