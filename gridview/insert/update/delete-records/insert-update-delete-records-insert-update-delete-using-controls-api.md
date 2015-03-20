---
title: Insert/Update/Delete Using Controls API
page_title: Insert/Update/Delete Using Controls API
description: Insert/Update/Delete Using Controls API
slug: gridview-insert-update-delete-records-insert-update-delete-using-controls-api
tags: insert/update/delete,using,controls,api
published: True
position: 2
---

# Insert/Update/Delete Using Controls API



## Insert rows

Two general approaches in adding new rows exist. The first one is to add rows directly into the data source assigned to the grid (see [RadGridView data binding]({%slug gridview-populating-with-data-databinding-radgridview%})). The second approach is to use the __Add__method of the __Rows__collection of __RadGridView__.

#### __[C#] Adding rows to the rows collection__

{{region addingToTheRowsCollection}}
	            object[] row1 = new object[3];
	            row1[0] = 1;
	            row1[1] = "some text";
	            row1[2] = true;
	            // add first row
	            radGridView1.Rows.Add(row1);
	            // add second row
	            radGridView1.Rows.Add(2, "another text", false); 
	{{endregion}}



#### __[VB.NET] Adding rows to the rows collection__

{{region addingToTheRowsCollection}}
	        Dim row1 As Object() = New Object(3) {}
	        row1(0) = 1
	        row1(1) = "some text"
	        row1(2) = True
	        ' add first row
	        RadGridView1.Rows.Add(row1)
	        ' add second row
	        RadGridView1.Rows.Add(2, "another text", False)
	{{endregion}}



## Update rows

The data in a row can be updated by assigning the new value to the __GridViewCellInfo.Value__ property. The access to the __GridViewCellInfos__is through the __Cells__collection of each row (type__GridViewRowInfo)__.

Before the value is set __RadGridView.Validating__ event is fired. This event could be __canceled__ to prevent updating the value in the cell. After the value update __RadGridView.Validated__ event is fired.

#### __[C#] Assigning value to a cell__

{{region assigningACellValue}}
	            radGridView1.Rows[0].Cells[0].Value = 4.3;
	            radGridView1.Rows[1].Cells["Column1"].Value = 114f;
	{{endregion}}



#### __[VB.NET] Assigning value to a cell__

{{region assigningACellValue}}
	        RadGridView1.Rows(0).Cells(0).Value = 4.3
	        RadGridView1.Rows(1).Cells("Column1").Value = 114.0F
	{{endregion}}



## Delete rows

To delete row call __GridViewRowCollection__.__Remove__(GridViewRowInfo value) or __GridViewRowCollection__.__RemoveAt__(rowIndex). 

#### __[C#] Removing a row from the rows collection__

{{region removingARowFromTheRowsCollection}}
	            this.radGridView1.Rows.RemoveAt(1);
	            this.radGridView1.Rows.Remove(this.radGridView1.CurrentRow);
	{{endregion}}



#### __[VB.NET] Removing a row from the rows collection__

{{region removingARowFromTheRowsCollection}}
	        Me.RadGridView1.Rows.RemoveAt(1)
	        Me.RadGridView1.Rows.Remove(Me.RadGridView1.CurrentRow)
	{{endregion}}


