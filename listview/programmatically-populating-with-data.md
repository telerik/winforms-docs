---
title: Programmatically populating with data
page_title: Programmatically populating with data | UI for WinForms Documentation
description: Programmatically populating with data
slug: winforms/listview/programmatically-populating-with-data
tags: programmatically,populating,with,data
published: True
position: 6
---

# Programmatically populating with data



## Adding Items

The columns of RadListView are stored in a collection that is accessible through the __Items__ property. Columns can be added to RadListView using one of the overloads of the __Add__ method.

#### Adding items

{{source=..\SamplesCS\ListView\ListViewProgramaticallyPopulatingWithData.cs region=addItems}} 
{{source=..\SamplesVB\ListView\ListViewProgramaticallyPopulatingWithData.vb region=addItems}} 

````C#
this.radListView1.Items.Add(new ListViewDataItem("Item 1"));
this.radListView1.Items.Add("Item 2");

````
````VB.NET
Me.RadListView1.Items.Add(New ListViewDataItem("Item 1"))
Me.RadListView1.Items.Add("Item 2")

````

{{endregion}} 

## Adding Columns

The columns of RadListView are stored in a collection that is accessible through the __Columns__ property. Columns can be added to RadListView using one of the three overloads of the __Add__ method as it is shown below. Each column must have unique name because columns are distinguished by their __Name__ property. 

#### Adding columns

{{source=..\SamplesCS\ListView\ListViewProgramaticallyPopulatingWithData.cs region=addColumns}} 
{{source=..\SamplesVB\ListView\ListViewProgramaticallyPopulatingWithData.vb region=addColumns}} 

````C#
this.radListView1.Columns.Add("Column1");
this.radListView1.Columns.Add("Column2", "Column2Header");
this.radListView1.Columns.Add(new ListViewDetailColumn("Column3", "Column3Header"));

````
````VB.NET
Me.RadListView1.Columns.Add("Column1")
Me.RadListView1.Columns.Add("Column2", "Column2Header")
Me.RadListView1.Columns.Add(New ListViewDetailColumn("Column3", "Column3Header"))

````

{{endregion}} 

The columns are visualized when RadListView is in __DetailView__ mode. You can set cell values to the items of RadListView using their indexers. The keys can be either the index of the column, the name of the column, or the column itself.

#### Populating cells

{{source=..\SamplesCS\ListView\ListViewProgramaticallyPopulatingWithData.cs region=populateCells}} 
{{source=..\SamplesVB\ListView\ListViewProgramaticallyPopulatingWithData.vb region=populateCells}} 

````C#
ListViewDataItem item = this.radListView1.Items[0];
//it is important that you add the item to the control prior assigning its cell's values, so it will have its cells schema
radListView1.Items.Add(item);
            
item[0] = "CellValue1";
item["Column2"] = "CellValue2";
item[radListView1.Columns[2]] = "CellValue3";

````
````VB.NET
Dim item As ListViewDataItem = Me.RadListView1.Items(0)
'it is important that you add the item to the control prior assigning its cell's values, so it will have its cells schema
RadListView1.Items.Add(item)
item(0) = "CellValue1"
item("Column2") = "CellValue2"
item(RadListView1.Columns(2)) = "CellValue3"

````

{{endregion}} 

>note To use these indexers the item must have a valid owner e.g. it first has to be added to the __Items__ collection of the RadListView.
>


## Adding Groups

Aside from using __GroupDescriptors__, custom groups can also be added to RadListView. This is done by using the __Add__ method of the __Groups__ collection of RadListView.

#### Adding groups

{{source=..\SamplesCS\ListView\ListViewProgramaticallyPopulatingWithData.cs region=addGroups}} 
{{source=..\SamplesVB\ListView\ListViewProgramaticallyPopulatingWithData.vb region=addGroups}} 

````C#
this.radListView1.Groups.Add(new ListViewDataItemGroup("First Group"));
this.radListView1.Groups.Add(new ListViewDataItemGroup("Second Group"));

````
````VB.NET
Me.RadListView1.Groups.Add(New ListViewDataItemGroup("First Group"))
Me.RadListView1.Groups.Add(New ListViewDataItemGroup("Second Group"))

````

{{endregion}} 

In order to assign an item to a group, you should set the item’s __Group__ property:

#### Assign item to a group

{{source=..\SamplesCS\ListView\ListViewProgramaticallyPopulatingWithData.cs region=assignItemToAGroup}} 
{{source=..\SamplesVB\ListView\ListViewProgramaticallyPopulatingWithData.vb region=assignItemToAGroup}} 

````C#
this.radListView1.Items[0].Group = this.radListView1.Groups[0];
this.radListView1.Items[1].Group = this.radListView1.Groups[0];
this.radListView1.Items[2].Group = this.radListView1.Groups[1];
this.radListView1.Items[3].Group = this.radListView1.Groups[1];

````
````VB.NET
Me.RadListView1.Items(0).Group = Me.RadListView1.Groups(0)
Me.RadListView1.Items(1).Group = Me.RadListView1.Groups(0)
Me.RadListView1.Items(2).Group = Me.RadListView1.Groups(1)
Me.RadListView1.Items(3).Group = Me.RadListView1.Groups(1)

````

{{endregion}} 

In order to enable this kind of grouping the __EnableCustomGrouping__ property needs to be set to *true*. In order to display the groups the __ShowGroups__ property needs to be set to *true*.
		

You can check which items belong to a given group by iterating trough the __Items__ collection of a __ListViewDataItemGroup__:
		
