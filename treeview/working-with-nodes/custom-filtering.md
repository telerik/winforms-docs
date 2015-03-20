---
title: Custom Filtering
page_title: Custom Filtering
description: Custom Filtering
slug: treeview-working-with-nodes-custom-filtering
tags: custom,filtering
published: True
position: 11
---

# Custom Filtering



## 

Custom filtering is a flexible mechanism for filtering RadTreeView nodes by using custom logic.
        	It has a higher priority than the applied FilterDescriptors.
        

In order to apply custom logic for filtering, you have to create a 
        	[Predicate](http://msdn.microsoft.com/en-us/library/bfcke1bz.aspx). Here is an example of a __Predicate__ which will return just the
		nodes which text is longer than one char:
        



#### __[C#] Creating predicate__

{{region CustomFiltering2}}
	        private bool FilterNode(RadTreeNode node)
	        {
	            if (node.Text.Length > 1)
	            {
	                return true;
	            }
	
	            return false;
	        }
	{{endregion}}



#### __[VB.NET] Creating predicate__

{{region CustomFiltering2}}
	    Private Function FilterNode(node As RadTreeNode) As Boolean
	        If node.Text.Length > 1 Then
	            Return True
	        End If
	
	        Return False
	    End Function
	{{endregion}}



To set the __Predicate__ to RadTreeView, use the
    	__FilterPredicate__ property of the control:
    	



#### __[C#] Applying predicate__

{{region CustomFiltering1}}
	            radTreeView1.TreeViewElement.FilterPredicate = FilterNode;
	{{endregion}}



#### __[VB.NET] Applying predicate__

{{region CustomFiltering1}}
	        RadTreeView1.TreeViewElement.FilterPredicate = AddressOf FilterNode
	{{endregion}}



At the end, in order to apply the filter to the control, just set the __Filter__
    		property to any string, which will invoke the filtering operation:
    	



#### __[C#] Invoke filtering__

{{region CustomFiltering3}}
	        private void radButton1_Click(object sender, EventArgs e)
	        {
	            this.radTreeView1.Filter = "Custom";
	        }
	{{endregion}}



#### __[VB.NET] Invoke filtering__

{{region CustomFiltering3}}
	    Private Sub RadButton1_Click(sender As System.Object, e As System.EventArgs) Handles RadButton1.Click
	        Me.RadTreeView1.Filter = "Custom"
	    End Sub
	{{endregion}}


<table><th><tr><td>

Here you have nodes from 1-100</td><td>

After the filtering the nodes are only from 10-100, since nodes 1-9 contain just one char as text</td></tr></th><tr><td>![treeview-working-with-nodes-custom-filtering 001](images/treeview-working-with-nodes-custom-filtering001.png)</td><td>![treeview-working-with-nodes-custom-filtering 002](images/treeview-working-with-nodes-custom-filtering002.png)</td></tr></table>
