---
title: Serialize/Deserialize to XML
page_title: Serialize/Deserialize to XML
description: Serialize/Deserialize to XML
slug: treeview-data-binding-serialize-deserialize-to-xml
tags: serialize/deserialize,to,xml
published: True
position: 5
---

# Serialize/Deserialize to XML



## 

RadTreeView methods __LoadXML()__ and __SaveXML()__ serialize the contents and 
        state of the entire RadTreeView and its nodes. These methods can be useful when you want to save the data locally and without 
        needing to connect to a database for binding.

#### __[XML]__

{{region layout}}
	
	{{endregion}}



>For direct access to the tree view XML as text use the __TreeViewXML__property.
          

The contents of the saved XML file contain the properties for the RadTreeView as a whole and each of the nodes in the tree.![treeview-data-binding-serialize-deserialize-to-xml 001](images/treeview-data-binding-serialize-deserialize-to-xml001.png)
