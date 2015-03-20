---
title: Filtering Nodes
page_title: Filtering Nodes
description: Filtering Nodes
slug: treeview-working-with-nodes-filtering
tags: filtering,nodes
published: True
position: 7
---

# Filtering Nodes



## 

RadTreeView supports filtering of its nodes according to their __Text__ property.
        In order to apply a filter, you should set the __Filter__ property of
        RadTreeView to the desired text value. 
        
        For example, if we have this RadTreeView instance:
        

![treeview-working-with-nodes-filtering 001](images/treeview-working-with-nodes-filtering001.png)
        
        and we set the Filter property as shown below:
        
        



#### __[C#]__

{{region filter}}
	            this.radTreeView1.Filter = "new";
	{{endregion}}



#### __[VB.NET]__

{{region filter}}
	        Me.RadTreeView1.Filter = "new"
	{{endregion}}


     
    	
        
        
        we will get this look of RadTreeView at the end:
        

![treeview-working-with-nodes-filtering 002](images/treeview-working-with-nodes-filtering002.png)
