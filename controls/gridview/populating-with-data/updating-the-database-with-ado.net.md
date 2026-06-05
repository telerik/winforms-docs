---
title: Updating the Database with ADO.Net
page_title: Updating the Database with ADO.Net - RadGridView
description: This article shows how you used ADO.Net to update the database when the grid is changed.
slug: winforms/gridview/populating-with-data/updating-the-database-with-ado.net
tags: updating,the,database,with,ado.net
published: True
position: 12
previous_url: gridview-populating-with-data-updating-the-data-base-with-ado-net
---

# Updating the Database with ADO.Net

RadGridView can display data in bound mode, unbound mode and virtual mode. The bound mode is suitable for managing data using automatic interaction with the data store. One very common use of the RadGridView control is binding to a table from a database.

However, the workflow and the specifications of the various applications can be different. Some applications may require updating the data base when the end-user is up to exit the applications. In other cases the end-user may be required to click a special button in order to update the database. 

In the third type of cases, on which are going to focus this article, you may need to update the data base right after the end-user finishes modifying a single value of RadGridView. In order to be able to implement this functionality, you can handle the events of RadGridView or its BindingSource.
      

In the following sample scenario we are going to demonstrate how the implementation can be achieved.
      

Let's assume that we have an ADO.NET DataTable that loads its data from a `SqlDataAdapter` and it is bound to a `BindingSource` component. Further, the `BindingSource` component is bound to RadGridView control. 


## Updating the database when the current row is changed

This approach allows us to update the database when the end-user changes the current row in RadGridView. To commit the data to the database in this case, we can use the `BindingSource` `CurrentItemChanged` event, but we also need to use one additional member to save the last edited row instance. Here is a solution using this approach:

<snippet id='gridview-autosavingdatabseventsform-bindingsource-cs' />
<snippet id='gridview-autosavingdatabseventsform-bindingsource-vb' />

## Updating the database on row added/deleted or when the current row is changed

In the context of RadGridView, we can use a combination of events to produce optimized codebase to support the auto-saving feature. These events are `UserAddedRow`, `UserDeletingRow`, `UserDeletedRow` and `CurrentRowChanged`.

Here is how we can update the database when the end-user __deletes__ a row. Basically, we need to handle the `UserDeletingRow` and `UserDeletedRows` events. If several rows are selected and deleted at once, these events will be fired only once and their `e.Rows` collection will contain all the deleted rows:

<snippet id='gridview-autosavingdatagridevents-deletingrows-cs' />
<snippet id='gridview-autosavingdatagridevents-deletingrows-vb' />

And this is how we can update the database when the user __adds__ a new row. The `UserAddedRow` event should be handled in this case:

<snippet id='gridview-autosavingdatagridevents-addingrows-cs' />
<snippet id='gridview-autosavingdatagridevents-addingrows-vb' />

When the user __changes the current__ row, you can update the database not only by using the `CurrentItemChanged` event of the BindingSource, but by handling the `CurrentRowChanged` event of RadGridView as well:

<snippet id='gridview-autosavingdatagridevents-changingcurrentrow-cs' />
<snippet id='gridview-autosavingdatagridevents-changingcurrentrow-vb' />

## Updating the database when a single cell value is changed

The above solutions will come in handy in many cases. However, in some scenarios the database may have to be updated immediately after the user edits a single cell, without changing the current row. For this case, you have to handle the `CellValueChanged` event as shown below:

<snippet id='gridview-autosavingdatagridevents-changingvalue-cs' />
<snippet id='gridview-autosavingdatagridevents-changingvalue-vb' />

`IEditableObject` provides functionality to commit or rollback changes to an object that is used as a data source. The DataTable object supports this functionality. If the current item is changed in the associated `CurrencyManager`, the __EndEdit__ operation is called automatically - it is processed when the current row of RadGridView is changed (to another row). The EndEdit operation in this implementation is needed to commit the changes that happen in the current row itself even if the current row of RadGridView is not changed (to another row).
        
# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

