---
title: Handle Add, Delete and Update of Rows
page_title: Handle Add, Delete and Update of Rows - WinForms VirtualGrid Control
description: Learn how you can handle Add, Delete and Update operations in WinForms VirtualGrid.
slug: winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows
tags: virtualgrid, data, add, delete, update
published: True
position: 1
---

# Handle Add, Delete and Update of Rows

When the user adds new rows, updates or deletes the existing ones, the external data source should be updated as well. Follow the steps below in order to keep the data synced: 

1\. Handle the __CellValuePushed__ event in order to detect when a cell value is changed. 

#### Push value to the data source

<snippet id='virtualgrid-virtualgridpopulatingwithdata-pushvalue-cs' />
<snippet id='virtualgrid-virtualgridpopulatingwithdata-pushvalue-vb' />



2\. When the user adds a new row in the grid, it is necessary to subscribe to the __UserAddedRow__ event in order to update the data source:

#### Add new row

<snippet id='virtualgrid-virtualgridpopulatingwithdata-addrow-cs' />
<snippet id='virtualgrid-virtualgridpopulatingwithdata-addrow-vb' />



3\. When the user deletes an existing row, you should handle the __UserDeletingRow__ event to update the data source as well:

#### Delete row

<snippet id='virtualgrid-virtualgridpopulatingwithdata-deleterow-cs' />
<snippet id='virtualgrid-virtualgridpopulatingwithdata-deleterow-vb' />



# See Also
* [Populating with Data]({%slug winforms/virtualgrid/working-with-data/populating-with-data%})

