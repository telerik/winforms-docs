---
title: Modifying the Default Context Menu
page_title: Modifying the Default Context Menu
description: Modifying the Default Context Menu
slug: treeview-context-menus-modifying-the-default-context-menu
tags: modifying,the,default,context,menu
published: True
position: 1
---

# Modifying the Default Context Menu



RadTreeView provides a convenient API that will allow you to modify its context menu.
        The __ContextMenuOpening__ event that you should handle is the place
        where the modifications
        should be done. The event arguments of this event expose several useful properties:
      

* __Cancel__: If you set this property to true,
            the default context menu will not be shown.
          

* __Menu__: This property returns the
            default context menu that is going to be shown.
          

* __Node__: The node for which the context menu is
            invoked. This node is a data node of type RadTreeNode. You will find useful three properties of the
            Node:
          

* __Text__:
                Returns the text of the node. This comes in handy when you want to conditionally
                modify the context menu depending on the text of the node.
              

* __Level__:
                This property returns an integer that indicates the level of the node in the three hierarchy.
                The level index is zero-based.
              

* __DataBoundItem__: If RadTreeView is data-bound, each data node
                (of type RadTreeNode) has an associated DataBoundItem. DataBoundItem is the object
                of the underlying data source for which a RadTreeNode is created. You may need to modify the
                context menu depending on the data that you can extract from the DataBoundItem object.
              

* __TreeViewElement__: TreeViewElement (of type RadTreeViewElement) is the main
            element of RadTreeView control.
          

* __TreeView__: TreeView is the RadTreeView control for which
            the ContextMenuOpening is fired.
          

__Accessing default menu items__

Depending on your scenario, you may need to show/hide/enable/disable some items
        of the default context menu. But how to determine in code which is the item that you want to modify?
        The items of the default context menu can be recognized by their __Name__ property.
        This gives you freedom when you want to apply a custom
        [
          TreeViewLocalizationProvider
        ]({%slug treeview-localization-localization%}), because the Name value is not changed, hence your code.

        Here are the items of the default context menu and their respective Name values:
      
<table><tr><td><b>Text</b></td><td><b>Name</b></td></tr><tr><td>Expand</td><td>ExpandCollapse</td></tr><tr><td>Collapse</td><td>ExpandCollapse</td></tr><tr><td>New</td><td>New</td></tr><tr><td>Edit</td><td>Edit</td></tr><tr><td>Delete</td><td>Delete</td></tr><tr><td>Cut</td><td>Cut</td></tr><tr><td>Copy</td><td>Copy</td></tr><tr><td>Paste</td><td>Paste</td></tr></table>

## Example: Removing items depending on nodes' Level and DataBoundItem

Let's assume that we have a RadTreeView bound to a DataTable of Files and Folders.
          This data-table has ID, Name, IsSystemItem and ParendID fields. The records in this table
          refer to each other by the ID-ParentID relation. The nodes of RadTreeView will show the Name
          of the records.
        

Let's now assume that we want to hide the *Delete*
          menu item for nodes of those records that have their IsSystemItem set to true.
          Additionally, we want to hide the *New* menu item for nodes
          that exist at the top level of the tree.
        

Here is a table of the data that we are going to pass to RadTreeView:
<table><tr><td><b>ID</b></td><td><b>Name</b></td><td><b>IsSystemItem</b></td><td><b>ParentID</b></td></tr><tr><td>0</td><td>My Computer</td><td>true</td><td>-1</td></tr><tr><td>1</td><td>C:\</td><td>true</td><td>0</td></tr><tr><td>2</td><td>D:\</td><td>true</td><td>0</td></tr><tr><td>3</td><td>Program Files</td><td>true</td><td>1</td></tr><tr><td>4</td><td>Microsoft</td><td>false</td><td>3</td></tr><tr><td>5</td><td>Telerik</td><td>false</td><td>3</td></tr><tr><td>6</td><td>WINDOWS</td><td>true</td><td>1</td></tr></table>

Following our requirements, we prepare the this implementation:

#### __[C#]__

{{source=..\SamplesCS\TreeView\ContextMenus\TreeViewMenus.cs region=removingItems}}
	        void radTreeView1_ContextMenuOpening1(object sender, Telerik.WinControls.UI.TreeViewContextMenuOpeningEventArgs e)
	        {
	            DataRowView rowView = (DataRowView)e.Node.DataBoundItem;
	            DataRow row = rowView.Row;
	
	            for (int i = e.Menu.Items.Count - 1; i >= 0; i--)
	            {
	                if (e.Menu.Items[i].Name == "Delete")
	                {
	                    if ((bool)row.ItemArray[2] == true)
	                    {
	                        e.Menu.Items.Remove(e.Menu.Items[i]);
	                    }
	                }
	
	                if (e.Menu.Items[i].Name == "New")
	                {
	                    if (e.Node.Level == 0)
	                    {
	                        e.Menu.Items.Remove(e.Menu.Items[i]);
	                    }
	                }
	            }         
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\ContextMenus\TreeViewMenus.vb region=removingItems}}
	    Private Sub radTreeView1_ContextMenuOpening1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.TreeViewContextMenuOpeningEventArgs)
	        Dim rowView As DataRowView = CType(e.Node.DataBoundItem, DataRowView)
	        Dim row As DataRow = rowView.Row
	
	        For i As Integer = e.Menu.Items.Count - 1 To 0 Step -1
	            If e.Menu.Items(i).Name = "Delete" Then
	                If CBool(row.ItemArray(2)) = True Then
	                    e.Menu.Items.Remove(e.Menu.Items(i))
	                End If
	            End If
	
	            If e.Menu.Items(i).Name = "New" Then
	                If e.Node.Level = 0 Then
	                    e.Menu.Items.Remove(e.Menu.Items(i))
	                End If
	            End If
	        Next i
	    End Sub
	    '#End Region
	End Class



And here is the result:![treeview-context-menus-modifying-the-default-context-menu 001](images/treeview-context-menus-modifying-the-default-context-menu001.png)
