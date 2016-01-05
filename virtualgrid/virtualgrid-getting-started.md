---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/virtualgrid/getting-started
tags: virtualgrid, started
published: True
position: 1
---

# Getting Started

The example bellow demostrates how one can use __RadVirtualGrid__ with a list which contains large amount of data. The example shows how you can use the control events to add or remove rows as well.

![virtualgrid-getting-started001](images/virtualgrid-getting-started001.png)

> note In order to use __RadVirtualGrid__ you should add reference to the Telerik.WinControls.GridView assmbly.
>

### Setting the form and adding data 
 
1\. Add a __RadVirtualGrid__ to a form and set its __Dock__ property to __Fill__ .
2\. Add the following sample class to the project.

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=SampleClass}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=SampleClass}} 

{{endregion}}

3\. Now you can create the list of objects which will be used as data source. In additon you can creaate a array with the column names.

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=CreateData}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=CreateData}} 

{{endregion}}

### Using the virtual grid

1\. Tou use the grid you should firs specify the the count of columns and rows. In addition you should subscribe to the __CellValueNeeded__ and __CellValuePushed__ events which are used for populating the grid with data and updating the data source when a value in the grid is changed:

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=InitGrid}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=InitGrid}} 

{{endregion}}

2\. Now you can add the event the __CellValueNeeded__ event handler. In it we will pass retrive the cell value and pass it to the grid acording to the curent row index. The event is fired for the header row so you can set the header cells text as well.

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=SetValue}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=SetValue}} 

{{endregion}}

3\. When a cell value is changed the __CellValuePushed__ event will fire. This will allow you to update the value in the data source:

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=UpdateValue}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=UpdateValue}} 

{{endregion}}

### Add or remove rows

By default the end user can add or remove rows with the UI. When such operation is performed the __UserAddedRow__ or __UserDeletingRow__ events will fire. 

>note The user can delete multiple rows at once.
>

The following example shows how you can handle the above events and properly update the data source.
{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=AddRemove}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=AddRemove}} 

{{endregion}}
