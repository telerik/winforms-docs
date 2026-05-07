---
title: New Row
page_title: New Row - WinForms GridView Control
description: Learn how to add rows to the WinForms GridView by using the new row.
slug: winforms/gridview/rows/new-row
tags: new,row
published: True
position: 13
previous_url: gridview-rows-new-row
---

# New Row

**RadGridView** provides the end-users with a special row that allows them to add a new data row. For brevity, we will call this row "new row". The following sections describe useful events and properties which will allow you to achieve different scenarios related to the new row.

![WinForms RadGridView New Row](images/gridview-rows-new-row005.png)

## Enabling the New Row

By default, the new row is visible to the end-user. You can explicitly set it to visible by setting the __AllowAddNewRow__ property to *true*:

<snippet id='gridview-newrow-enablingnewrow-cs' />
<snippet id='gridview-newrow-enablingnewrow-vb' />

If you want to hide the `New Row`, just set the __AllowAddNewRow__ to *false* and RadGridView will look as shown below:

<snippet id='gridview-newrow-disablingnewrow-cs' />
<snippet id='gridview-newrow-disablingnewrow-vb' />

>note The GridViewTemplate.**SelectNewRowAsCurrent** property controls if the new row will be made current if there are no other rows in the grid.

## Setting the new row text

For the text displayed in the new row of __RadGridView__ you have the option to set it directly to the corresponding template. This allows you to have a different text on the new row of each level of your hierarchical grid.

<snippet id='gridview-newrow-templatenewrowtext-cs' />
<snippet id='gridview-newrow-templatenewrowtext-vb' />

## New Row Position

The `New Row` can be pinned to top or bottom. By default, the new row is pinned to top. You can explicitly set its position to top by setting the __AddNewRowPosition__ to *Top*:

<snippet id='gridview-newrow-positiontop-cs' />
<snippet id='gridview-newrow-positiontop-vb' />

In order to pin the new row to bottom, you should set the __AddNewRowPosition__ to *Bottom*:

<snippet id='gridview-newrow-positionbottom-cs' />
<snippet id='gridview-newrow-positionbottom-vb' />

![WinForms RadGridView New Row Position](images/gridview-rows-new-row003.png)

## Accessing the new row

If you, for some reason, want to access the `New Row`, you can do it by getting the __TableAddNewRow__ object from the *view* you are in. Let's say that you want to programmatically make the `New Row` current. Here is how to do that for the main view:

<snippet id='gridview-newrow-makingnewrowcurrent-cs' />
<snippet id='gridview-newrow-makingnewrowcurrent-vb' />

In case your RadGridView is data-bound, it will try to set the CurrentRow to the first data row after it is filled with data.Therefore, you have to set the CurrentRow to TableAddNewRow after you bind the grid (after the Fill call of the TableAdapter in case you are following the ADO.NET approach for data-binding).

## DefaultValuesNeeded event

__DefaultValuesNeeded__ is one of the events that you will probably use in your application. When you click the new row, the new row becomes current, the prompt text ("Click here to add a new row") is removed, and RadGridView enters its edit mode. This is the moment when the DefaultValuesNeeded event is fired. As the name of the event implies, it allows you to set the default values for the new row which, if unchanged by the end-user, are saved in the row when the new row is committed by the end-user.

Let's have a RadGridView instance bound to the Employees table of the Northwind database. We assume that most of the employees that will be added in the future will be "Sales Representative". Moreover, the headquarters of the company is located in London, so most probably the new employees will have London as their city. Taking these assumptions into considerations, we will subscribe to the DefaultValuesNeeded event and will set the "Sales Representative" for the Title column and London for the City column:

<snippet id='gridview-newrow-defaultvaluesneeded-cs' />
<snippet id='gridview-newrow-defaultvaluesneeded-vb' />

As a result, when the end-user clicks the new row, the following values will be filled in for him:

![WinForms RadGridView Autofill New Row Values](images/gridview-rows-new-row001.png)

### Adding with default values only

It is possible to add default values in all of the fields. However, by default you cannot add the row if no cells are changed. Since **R2 2017 SP1** this can be achieved by setting the __AddWithDefaultValues__ property. The following code snippet demonstrates how you can access and set this property:

<snippet id='gridview-newrow-addonlydefault-cs' />
<snippet id='gridview-newrow-addonlydefault-vb' />

## Adding rows to the underlying data source

In some cases, you may need RadGridView to create a record in the underlying data source after the end-user commits the new row. In other cases, you may want to have a new record created immediately after the end-user starts editing the new row. RadGridView supports both modes. The behavior of RadGridView in this situation is determined by the __AddNewBoundRowBeforeEdit__property:

<snippet id='gridview-newrow-addnewboundrowbeforeedit-cs' />
<snippet id='gridview-newrow-addnewboundrowbeforeedit-vb' />

As you can see in the code snippet above, __AddNewBoundRowBeforeEdit__ is a boolean property and here is what RadGridView does depending on its values:

* __False:__ RadGridView creates a new record in the underlying data source only after the new row is committed (validated). This is the default behavior.            

* __True:__ RadGridView creates a new record in the underlying data source right after the end-user starts editing the new row. If the end-user presses Escape to cancel the editing operation of the new row and goes to another row, the newly created record is deleted.
            

## Enter key mode

The `Enter` key may behave differently in the new row depending on the value of the __NewRowEnterKeyMode__ property. By default, when the end-user presses `Enter` while being in the new row, the new row is committed, and the row next to the new row becomes current. Here is how the default value can be set explicitly:

<snippet id='gridview-newrow-entermovestonextrow-cs' />
<snippet id='gridview-newrow-entermovestonextrow-vb' />

The rest of the values available to the __NewRowEnterKeyMode__ property are:

* __EnterMovesToLastAddedRow__: When the end-user press the Enter key, the new row is committed and becomes are regular data row. After that RadGridView sets it as CurrentRow.

* __EnterMovesToNextCell__: When the end-user presses the Enter key, the next cell in the new row receives the focus and becomes the currently edited cell. If the end-user is at the last cell of the new row and he\she presses the Enter key, the new row is committed and RadGridView exits its edit mode.
            
* __None__: If RadGridView has an opened editor in the new row and the end-user presses the Enter key, the value that is in the editor is saved in the respective cell in the new row and RadGridView exists its edit mode. The current cell is not changed in this situation.

## User events

RadGridView exposes several end-user events two of which you will find useful in the context of the new row: __UserAddingRow__ and __UserAddedRow__. These events are fired when the user commits the new row (by pressing the Enter key or by clicking somewhere in the grid). As the name of the UserAddingRow implies, it allows for preventing the new row from being committed as a data row. This may be useful in case some of the data entered by the end-user is invalid according to some custom requirements.

In the examples below we will demonstrate what you can do by using the UserAddingRow and UserAddedRow events.
        

__UserAddingRow__ Let's say that the Address column should allow no more than 30 characters per cell. If the end-user types 40 characters in the Address cell of the new row and tries to commit this row, he will get a warning message box that the length of his input exceeds the allowed one, and the new row will not be committed. This can be achieved with the following code snippet:

<snippet id='gridview-newrow-useraddingrow-cs' />
<snippet id='gridview-newrow-useraddingrow-vb' />

__UserAddedRow__ This event comes in handy when you want to update your data base right after the end-user has added a new row. Assuming that we are following the standard ADO.NET approach (DataTable\TableAdapter), in the following example we take the row that the end-user has just added, and we process it to the data base, by passing the row to the Update method of the TableAdapter:

<snippet id='gridview-newrow-useraddedrow-cs' />
<snippet id='gridview-newrow-useraddedrow-vb' />

## Cancel Add New Row 

Generally, the user can cancel adding or editing a row by pressing the escape key. However, in a case the user is editing a new row, to cancel adding a new row, the Escape button need to be pressed twice. The first Escape cancels cell edit and the second one cancels the whole process of adding new row. If this behavior does not meet your requirement, you can easily customize the behavior through adding a [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%}). By subscribing to the __CommandCellClick__ event of the RadGridView, you can call the __CancelAddNewRow()__ of the __TableAddNewRow__ property. The following sample snippet demonstrate the event handler of the  customization.

<snippet id='gridview-newrow-canceladdnewrow-cs' />
<snippet id='gridview-newrow-canceladdnewrow-vb' />

# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [Painting Rows]({%slug winforms/gridview/rows/painting-rows%})

