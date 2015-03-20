---
title: Sorting Nodes
page_title: Sorting Nodes
description: Sorting Nodes
slug: treeview-working-with-nodes-sorting
tags: sorting,nodes
published: True
position: 8
---

# Sorting Nodes



## 

RadTreeView supports sorting of its nodes. The sorting operation is applied separately to each
        group of nodes at the the same level. To sort the nodes, you should just set the __SortOrder__ property 
        to one of the following values: *None*, *Ascending*.
        
        As of Q1 2011 SP1, RadTreeView will support Descending sort order as well.
        
        
          

For example, if we have this RadTreeView instance:

![treeview-working-with-nodes-sorting 001](images/treeview-working-with-nodes-sorting001.png)
        
        and we set the SortOrder property as shown below:
        
        



#### __[C#]__

{{region sort}}
	            this.radTreeView1.SortOrder = SortOrder.Ascending;
	{{endregion}}



#### __[VB.NET]__

{{region sort}}
	        Me.RadTreeView1.SortOrder = SortOrder.Ascending
	{{endregion}}


     
    	
        
        
        we will get this look of RadTreeView at the end:
        

![treeview-working-with-nodes-sorting 002](images/treeview-working-with-nodes-sorting002.png)
