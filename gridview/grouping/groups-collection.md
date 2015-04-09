---
title: Groups Collection
page_title: Groups Collection
description: Groups Collection
slug: gridview-grouping-groups-collection
tags: groups,collection
published: True
position: 3
---

# Groups Collection



When a group is created it is added to the *Groups* collection of the corresponding template. You can access the groups collection in the following way:

#### __[C#] Accessing groups__

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=accessGroups}}
	            DataGroupCollection templateGroupCollection = this.radGridView1.MasterTemplate.Groups;
	{{endregion}}



#### __[VB.NET] Accessing groups__

{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=accessGroups}}
	        Dim templateGroupCollection = Me.RadGridView1.MasterTemplate.Groups
	{{endregion}}



You can expand and collapse groups programmatically. The code blocks below demonstrate how you can expand and collapse the first group in the *Groups* collection.

#### __[C#] Expanding groups__

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=expandGroups}}
	            this.radGridView1.Groups[0].Expand();
	{{endregion}}



#### __[VB.NET] Expanding groups__

{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=expandGroups}}
	        Me.RadGridView1.Groups(0).Expand()
	{{endregion}}



#### __[C#] Collapse groups__

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=collapseGroups}}
	            this.radGridView1.Groups[0].Collapse();
	{{endregion}}



#### __[VB.NET] Collapse groups__

{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=collapseGroups}}
	        Me.RadGridView1.Groups(0).Collapse()
	{{endregion}}



You can use __AllowGroup__ property of each column to indicate whether the user will be able to group by this column or not. The default value is *true*.

#### __[C#] Allow groups__

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=allowGroup}}
	            this.radGridView1.Columns["Country"].AllowGroup = false;
	{{endregion}}



#### __[VB.NET] Allow groups__

{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=allowGroup}}
	        Me.RadGridView1.Columns("Country").AllowGroup = False
	{{endregion}}



## DataGroup class

DataGroup collections have hierarchical structure. One or more group levels could be created. Properties of the DataGroup give access to its *Level*, *Parent* and *Child* groups:

#### __[C#] Accessing parent/child groups__

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=accessingParentChildGroups}}
	            int groupLevel= this.radGridView1.Groups[0].Level;
	            Group<GridViewRowInfo> parentGroup = this.radGridView1.Groups[0].Parent;
	            DataGroupCollection groups = this.radGridView1.Groups[0].Groups;
	{{endregion}}



#### __[VB.NET] Accessing parent/child groups__

{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=accessingParentChildGroups}}
	        Dim groupLevel As Integer = Me.RadGridView1.Groups(0).Level
	        Dim parentGroup As Group(Of GridViewRowInfo) = Me.RadGridView1.Groups(0).Parent
	        Dim groups As DataGroupCollection = Me.RadGridView1.Groups(0).Groups
	{{endregion}}



The header row of a group (*GridViewGroupRowInfo*) can be accessed using the __GroupRow__ property
      	for a particular data group, for example:

#### __[C#] Accessing group header row__

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=groupHeaderRow}}
	            GridViewRowInfo groupHeaderRow = radGridView1.Groups[0].GroupRow;
	{{endregion}}



#### __[VB.NET] Accessing group header row__

{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=groupHeaderRow}}
	        Dim groupHeaderRow = Me.RadGridView1.Groups(0).GroupRow
	{{endregion}}


