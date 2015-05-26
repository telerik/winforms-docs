---
title: Serialize/Deserialize to XML
page_title: Serialize/Deserialize to XML | UI for WinForms Documentation
description: Serialize/Deserialize to XML
slug: winforms/treeview/data-binding/serialize/deserialize-to-xml
tags: serialize/deserialize,to,xml
published: True
position: 5
---

# Serialize/Deserialize to XML



## 

RadTreeView methods __LoadXML()__ and __SaveXML()__ serialize the contents and 
        state of the entire RadTreeView and its nodes. These methods can be useful when you want to save the data locally and without 
        needing to connect to a database for binding.

````xml
	
````



>note For direct access to the tree view XML as text use the __TreeViewXML__ property.
>


The contents of the saved XML file contain the properties for the RadTreeView as a whole and each of the nodes in the tree.![treeview-data-binding-serialize-deserialize-to-xml 001](images/treeview-data-binding-serialize-deserialize-to-xml001.png)

>note  __RadTreeView__ supports save/load functionality at design time via the[Property Builder]({%slug winforms/treeview/design-time/property-builder%}).
>

