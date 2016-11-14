---
title: Insert/Update/Delete Using Controls API
page_title: Insert/Update/Delete Using Controls API | RadGridView
description: This article shows how you can insert, update or delete rows in RadGridView.
slug: winforms/gridview/insert/update/delete-records/insert/update/delete-using-controls-api
tags: insert/update/delete,using,controls,api
published: True
position: 2
previous_url: gridview-insert-update-delete-records-insert-update-delete-using-controls-api
---

# Insert/Update/Delete Using Controls API

## Insert rows

Two general approaches in adding new rows exist. The first one is to add rows directly into the data source assigned to the grid (see [RadGridView data binding]({%slug winforms/gridview/populating-with-data/databinding-radgridview%})). The second approach is to use the __Add__ method of the __Rows__ collection.

#### Adding rows to the rows collection

{{source=..\SamplesCS\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.cs region=addingToTheRowsCollection}} 
{{source=..\SamplesVB\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.vb region=addingToTheRowsCollection}} 

````C#
object[] row1 = new object[3];
row1[0] = 1;
row1[1] = "some text";
row1[2] = true;
// add first row
radGridView1.Rows.Add(row1);
// add second row
radGridView1.Rows.Add(2, "another text", false);

````
````VB.NET
Dim row1 As Object() = New Object(3) {}
row1(0) = 1
row1(1) = "some text"
row1(2) = True
' add first row
RadGridView1.Rows.Add(row1)
' add second row
RadGridView1.Rows.Add(2, "another text", False)

````

{{endregion}} 

## Update rows

The data in a row can be updated by assigning the new value to the __GridViewCellInfo.Value__ property. The access to the __GridViewCellInfos__ is through the __Cells__ collection of each row (type __GridViewRowInfo__).

Before the value is set __Validating__ event is fired. This event could be __canceled__ to prevent updating the value in the cell. After the value update __Validated__ event is fired.

#### Assigning value to a cell

{{source=..\SamplesCS\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.cs region=assigningACellValue}} 
{{source=..\SamplesVB\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.vb region=assigningACellValue}} 

````C#
radGridView1.Rows[0].Cells[0].Value = 4.3;
radGridView1.Rows[1].Cells["Column1"].Value = 114f;

````
````VB.NET
RadGridView1.Rows(0).Cells(0).Value = 4.3
RadGridView1.Rows(1).Cells("Column1").Value = 114.0F

````

{{endregion}} 

## Delete rows

To delete row call __GridViewRowCollection.Remove__(GridViewRowInfo value) or __GridViewRowCollection.RemoveAt__(rowIndex).

#### Removing a row from the rows collection

{{source=..\SamplesCS\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.cs region=removingARowFromTheRowsCollection}} 
{{source=..\SamplesVB\GridView\InsertUpdateDeleteRecords\InsertUpdateDeleteRecords.vb region=removingARowFromTheRowsCollection}} 

````C#
this.radGridView1.Rows.RemoveAt(1);
this.radGridView1.Rows.Remove(this.radGridView1.CurrentRow);

````
````VB.NET
Me.RadGridView1.Rows.RemoveAt(1)
Me.RadGridView1.Rows.Remove(Me.RadGridView1.CurrentRow)

````

{{endregion}} 



