---
title: Serialize/Deserialize to XML
page_title: Serialize/Deserialize to XML | RadTreeView
description: With RadTreeView you can save all nodes, including the nodes states (expanded, selected).
slug: winforms/treeview/data-binding/serialize/deserialize-to-xml
tags: serialize/deserialize,to,xml
published: True
position: 5
previous_url: treeview-data-binding-serialize-deserialize-to-xml
---

# Serialize/Deserialize to XML

RadTreeView methods __LoadXML__ and __SaveXML__ serialize the contents and state of the entire RadTreeView and its nodes. These methods can be useful when you want to save the data locally and without needing to connect to a database for binding.

````xml
TreeView xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" AllowDragDrop="true" LabelEdit="true" ThemeName="Breeze" AllowDrop="true" BackColor="Transparent"><Nodes Expanded="true" Text="Node1"><Nodes Expanded="true" Text="Node7"><Nodes Text="Node15" /><Nodes Text="Node16" /></Nodes><Nodes Expanded="true" Text="Node8"><Nodes Text="Node14" /></Nodes><Nodes Text="Node9" /></Nodes><Nodes Expanded="true" Text="Node2"><Nodes Text="Node10" /><Nodes Text="Node11" /></Nodes><Nodes Text="Node3" /><Nodes Expanded="true" Text="Node4"><Nodes Text="Node12" /><Nodes Text="Node13" /></Nodes><Nodes Text="Node5" /><Nodes Text="Node6" /></TreeView>

````

>note For direct access to the tree view XML as text use the __TreeViewXML__ property.
>

The contents of the saved XML file contain the properties for the RadTreeView as a whole and each of the nodes in the tree.

![treeview-data-binding-serialize-deserialize-to-xml 001](images/treeview-data-binding-serialize-deserialize-to-xml001.png)

>note  __RadTreeView__ supports save/load functionality at design time via the [Property Builder]({%slug winforms/treeview/design-time/property-builder%}).
>

