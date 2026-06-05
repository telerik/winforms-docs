---
title: Binding to Self Referencing Data
page_title: Binding to Self Referencing Data - WinForms TreeView Control
description: Learn how you can bind WinForms TreeView to self referencing data.
slug: winforms/treeview/data-binding/binding-to-self-referencing-data
tags: binding,to,self,referencing,data
published: True
position: 3
previous_url: treeview-data-binding-binding-to-self-referencing-data
---

# Binding to Self Referencing Data

Binding RadTreeView to self referencing data differs from [binding to related data]({%slug winforms/treeview/data-binding/binding-to-object-relational-data%}) in that RadTreeView is bound to a single list instead of multiple related lists.
 
In order to set the parent-child relation between the records of the data source, we should set the __ParentMember__ and __ChildMember__ properties to the respective fields in the data source. If the parent `ID` for a record does not have a respective value in the child `ID` field of the records, then that record is considered to have no parents.
		
>important All parent identifiers must be positive numbers.

## Minimal example

The following example demonstrates how to bind RadTreeView to a self referencing DataTable.

<snippet id='treeview-bindingtoselfrefdata-selfref-cs' />
<snippet id='treeview-bindingtoselfrefdata-selfref-vb' />



As a result we get the hierarchy of nodes shown below:

![WinForms RadTreeView Self Reference Hierarchy](images/treeview-data-binding-binding-to-self-referencing-data001.png)

# See Also
* [Binding to Database Data]({%slug winforms/treeview/data-binding/binding-to-database-data%})

* [Binding to Object-relational Data]({%slug winforms/treeview/data-binding/binding-to-object-relational-data%})

* [Binding to XML Data]({%slug winforms/treeview/data-binding/binding-to-xml-data%})

* [Data Binding]({%slug winforms/treeview/data-binding/data-binding-basics%})

* [Binding CheckBoxes]({%slug winforms/treeview/data-binding/binding-checkboxes%})

* [Serialize/Deserialize to XML]({%slug winforms/treeview/data-binding/serialize/deserialize-to-xml%})

