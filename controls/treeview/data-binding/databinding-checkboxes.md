---
title: Binding CheckBoxes
page_title: Binding CheckBoxes - WinForms TreeView Control
description: WinForms TreeView supports binding the check boxes to a data field. This article shows how you can use this feature.
slug: winforms/treeview/data-binding/binding-checkboxes
tags: data,binding,basics
published: True
position: 8
---

# Binding check boxes

Since R3 2014 __RadTreeView__ supports binding the check-boxes of the nodes to a field in the data. You just need to specify   the RadTreeView. __CheckedMember__ property. The following code snippet demonstrates how to setup hierarchical tree by using two separate DataTables:

![WinForms RadTreeView Binding check boxes](images/treeview-data-binding-data-binding-basics003.png)

<snippet id='treeview-basicshierarchyform-checkedmember-cs' />
<snippet id='treeview-basicshierarchyform-checkedmember-vb' />



## Binding CheckBoxes with Object Relational Hierarchy


Consider the following diagram which can be illustrated with the sample classes below: ![WinForms RadTreeView Sample Classes](images/treeview-data-binding-binding-to-object-relational-data002.png)

Note that the __IsActive__ and the __Status__ properties represent boolean data. 

<snippet id='treeview-bindingtorelateddata-dataclasses-cs' />
<snippet id='treeview-bindingtorelateddata-dataclasses-vb' />



The code snippet below illustrates how to bind the check-boxes coming from the described properties:

![WinForms RadTreeView Binding CheckBoxes with Object Relational Hierarchy](images/treeview-data-binding-binding-to-object-relational-data003.png)

<snippet id='treeview-bindingtorelateddata-checkedmember-cs' />
<snippet id='treeview-bindingtorelateddata-checkedmember-vb' />



# See Also
* [Binding to Database Data]({%slug winforms/treeview/data-binding/binding-to-database-data%})

* [Binding to Object-relational Data]({%slug winforms/treeview/data-binding/binding-to-object-relational-data%})

* [Binding to Self Referencing Data]({%slug winforms/treeview/data-binding/binding-to-self-referencing-data%})

* [Binding to XML Data]({%slug winforms/treeview/data-binding/binding-to-xml-data%})

* [Data Binding]({%slug winforms/treeview/data-binding/data-binding-basics%})

* [Serialize/Deserialize to XML]({%slug winforms/treeview/data-binding/serialize/deserialize-to-xml%})

