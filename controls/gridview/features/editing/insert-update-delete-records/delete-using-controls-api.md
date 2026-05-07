---
title: Insert/Update/Delete Using Controls API
page_title: Insert/Update/Delete Using Controls API - RadGridView
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

<snippet id='gridview-insertupdatedeleterecords-addingtotherowscollection-cs' />
<snippet id='gridview-insertupdatedeleterecords-addingtotherowscollection-vb' />

## Update rows

The data in a row can be updated by assigning the new value to the __GridViewCellInfo.Value__ property. The access to the __GridViewCellInfos__ is through the __Cells__ collection of each row (type __GridViewRowInfo__).

Before the value is set __Validating__ event is fired. This event could be __canceled__ to prevent updating the value in the cell. After the value update __Validated__ event is fired.

#### Assigning value to a cell

<snippet id='gridview-insertupdatedeleterecords-assigningacellvalue-cs' />
<snippet id='gridview-insertupdatedeleterecords-assigningacellvalue-vb' />

## Delete rows

To delete row call __GridViewRowCollection.Remove__(GridViewRowInfo value) or __GridViewRowCollection.RemoveAt__(rowIndex).

#### Removing a row from the rows collection

<snippet id='gridview-insertupdatedeleterecords-removingarowfromtherowscollection-cs' />
<snippet id='gridview-insertupdatedeleterecords-removingarowfromtherowscollection-vb' />

# See Also
* [Data Editing Event Sequence]({%slug winforms/gridview/insert/update/delete-records/data-editing-event-sequence%})

* [Data Editing Support]({%slug winforms/gridview/insert/update/delete-records/data-editing-support%})

* [Tracking changes in RadGridView]({%slug winforms/gridview/insert/update/delete-records/tracking-changes-in-radgridview%})

* [Validation]({%slug winforms/gridview/insert/update/delete-records/validation%})

