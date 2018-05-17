---
title: Server Side Paging in Virtual Grid
description: An example demonstrating how paging can be implemented in RadVirtualGrid fetching the data from an IQueryable object
type: how-to
page_title: How to implement paging by fetching data according to the current page index
slug: server-side-paging-in-virtualgrid
position: 5
tags: virtualgrid, paging, server-side
res_type: kb
---


## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2018.1 220</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadVirtualGrid for WinForms</td>
	</tr>
</table>


## Description

**RadVirtualGrid** is a control providing a convenient UI to display only the visible part of a large set of data. By definition not all of that data needs to be available locally. The example in this article will handle a scenario of implementing a server side paging.

## Solution

The data will be selected according to the current page index. The **PageIndexChanging** event is used to perform the new query. The example also mocks a repository in the **RadVirtualGridRepository** class working with **OrderDataModel** entities. 

The animation below demonstrates the end result in **RadVirtualGrid**.

>caption Figure 1: Server Side Paging
![server-side-paging-in-virtualgrid 001](images/server-side-paging-in-virtualgrid001.gif)

#### Form`s Setup and PageIndexChanging Event

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=PageIndexChangingEvent}} 
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=PageIndexChangingEvent}}
````C#
````
````VB.NET
````



{{endregion}}

#### Mock Repository

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=MockRepository}} 
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=MockRepository}}
````C#
````
````VB.NET
````



{{endregion}}

#### Data Model

{{source=..\SamplesCS\KnowledgeBase\ServerSidePagingVirtualGrid.cs region=DataModel}}
{{source=..\SamplesVB\KnowledgeBase\ServerSidePagingVirtualGrid.vb region=DataModel}}
````C#
````
````VB.NET
````



{{endregion}} 

>note A complete solution providing a C# and VB.NET project is available [here](https://github.com/telerik/winforms-sdk/tree/master/VirtualGrid/ServerSidePaging).

# See Also
* [Handle Add, Delete and Update of Rows]({%slug winforms/virtualgrid/working-with-data/handle-add-delete-update-of-rows%})