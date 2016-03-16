---
title: Handle Add, Delete and Update of Rows
page_title: Handle Add, Delete and Update of Rows | UI for WinForms Documentation
description: Handle Add, Delete and Update of Rows
slug: winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows
tags: virtualgrid, data, add, delete, update
published: True
position: 1
---

# Handle Add, Delete and Update of Rows

When the user adds new rows, updates or deletes the existing ones, the external data source should be updated as well. Follow the steps below in order to keep the data synced: 

1\. Handle the __CellValuePushed__ event in order to detect when a cell value is changed. 

#### Push value to the data source

{{source=..\SamplesCS\VirtualGrid\PushValue.cs region=FillData}} 
{{source=..\SamplesVB\VirtualGrid\PushValue.vb region=FillData}} 

````C#
````
````VB.NET
````

{{endregion}} 

2\. When the user adds a new row in the grid, it is necessary to subscribe to the __UserAddedRow__ event in order to update the data source:

#### Add new row

{{source=..\SamplesCS\VirtualGrid\PushValue.cs region=AddRow}} 
{{source=..\SamplesVB\VirtualGrid\PushValue.vb region=AddRow}} 

````C#
````
````VB.NET
````

{{endregion}} 

3\. When the user deletes an existing row, you should handle the __UserDeletingRow__ event to update the data source as well:

#### Delete row

{{source=..\SamplesCS\VirtualGrid\PushValue.cs region=DeleteRow}} 
{{source=..\SamplesVB\VirtualGrid\PushValue.vb region=DeleteRow}} 

````C#
````
````VB.NET
````

{{endregion}} 


 
