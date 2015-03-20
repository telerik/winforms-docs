---
title: Programmatically populating with data
page_title: Programmatically populating with data
description: Programmatically populating with data
slug: listview-programatically-populating-with-data
tags: programmatically,populating,with,data
published: True
position: 5
---

# Programmatically populating with data



## Adding items

The columns of RadListView are stored in a collection that is accessible through the 
        	__Items__ property. Columns can be added to RadListView using one
        	of the overloads of the __Add__ method.
        

#### __[C#] Adding items__

{{region addItems}}
	            this.radListView1.Items.Add(new ListViewDataItem("Item 1"));
	            this.radListView1.Items.Add("Item 2");
	{{endregion}}



#### __[VB.NET] Adding items__

{{region addItems}}
	        Me.RadListView1.Items.Add(New ListViewDataItem("Item 1"))
	        Me.RadListView1.Items.Add("Item 2")
	{{endregion}}



## Adding columns

The columns of RadListView are stored in a collection that is accessible through the 
        	__Columns__ property. Columns can be added to RadListView using one
        	of the three overloads of the __Add__ method as it is shown below. 
        	Each column must have unique name because columns are distinguished by their __Name__ property.
        

#### __[C#] Adding columns__

{{region addColumns}}
	            this.radListView1.Columns.Add("Column1");
	            this.radListView1.Columns.Add("Column2", "Column2Header");
	            this.radListView1.Columns.Add(new ListViewDetailColumn("Column3", "Column3Header"));
	{{endregion}}



#### __[VB.NET] Adding columns__

{{region addColumns}}
	        Me.RadListView1.Columns.Add("Column1")
	        Me.RadListView1.Columns.Add("Column2", "Column2Header")
	        Me.RadListView1.Columns.Add(New ListViewDetailColumn("Column3", "Column3Header"))
	{{endregion}}



The columns are visualized when RadListView is in __DetailView__ mode. You can 
        	set cell values to the items of RadListView using their indexers. The keys can be either the index 
        	of the column, the name of the column, or the column itself.
        

#### __[C#] Populating cells__

{{region populateCells}}
	            ListViewDataItem item = this.radListView1.Items[0];
	            //it is important that you add the item to the control prior assigning its cell's values, so it will have its cells schema
	            radListView1.Items.Add(item);
	            
	            item[0] = "CellValue1";
	            item["Column2"] = "CellValue2";
	            item[radListView1.Columns[2]] = "CellValue3";
	{{endregion}}



#### __[VB.NET] Populating cells__

{{region populateCells}}
	        Dim item As ListViewDataItem = Me.RadListView1.Items(0)
	        'it is important that you add the item to the control prior assigning its cell's values, so it will have its cells schema
	        RadListView1.Items.Add(item)
	
	        item(0) = "CellValue1"
	        item("Column2") = "CellValue2"
	        item(RadListView1.Columns(2)) = "CellValue3"
	{{endregion}}



>To use these indexers the item must have a valid owner e.g. it first has to be added to the
		  	__Items__ collection of the RadListView.
		  

## Adding Groups

Aside from using __GroupDescriptors__, custom groups can also be added to RadListView.
        	This is done by using the __Add__ method of the __Groups__ collection of RadListView.
       	

#### __[C#] Adding groups__

{{region addGroups}}
	            this.radListView1.Groups.Add(new ListViewDataItemGroup("First Group"));
	            this.radListView1.Groups.Add(new ListViewDataItemGroup("Second Group"));
	{{endregion}}



#### __[VB.NET] Adding groups__

{{region addGroups}}
	        Me.RadListView1.Groups.Add(New ListViewDataItemGroup("First Group"))
	        Me.RadListView1.Groups.Add(New ListViewDataItemGroup("Second Group"))
	{{endregion}}



In order to assign an item to a group, you should set the item’s __Group__ property:

#### __[C#] Assign item to a group__

{{region assignItemToAGroup}}
	            this.radListView1.Items[0].Group = this.radListView1.Groups[0];
	            this.radListView1.Items[1].Group = this.radListView1.Groups[0];
	            this.radListView1.Items[2].Group = this.radListView1.Groups[1];
	            this.radListView1.Items[3].Group = this.radListView1.Groups[1];
	{{endregion}}



#### __[VB.NET] Assign item to a group__

{{region assignItemToAGroup}}
	        Me.RadListView1.Items(0).Group = Me.RadListView1.Groups(0)
	        Me.RadListView1.Items(1).Group = Me.RadListView1.Groups(0)
	        Me.RadListView1.Items(2).Group = Me.RadListView1.Groups(1)
	        Me.RadListView1.Items(3).Group = Me.RadListView1.Groups(1)
	{{endregion}}



In order to enable this kind of grouping the __EnableCustomGrouping__ property needs 
			to be set to *true*. In order to display the groups the 
			__ShowGroups__ property needs to be set to *true*.
		

You can check which items belong to a given group by iterating trough the __Items__ collection
			of a __ListViewDataItemGroup__:
		
