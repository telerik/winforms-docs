---
title: Binding to XML Data
page_title: Binding to XML Data | UI for WinForms Documentation
description: Binding to XML Data
slug: winforms/treeview/data-binding/binding-to-xml-data
tags: binding,to,xml,data
published: True
position: 4
---

# Binding to XML Data



## 

RadTreeView can consume XML data both by directly loading it ([see Serialize/Deserialize to XML]({%slug winforms/treeview/data-binding/serialize/deserialize-to-xml%})) or by loading it to a __DataSet__ for binding. The following example uses a sample "Table of contents" XML. Each node element in the table of contents has a "Title" element, "id" and "parentid".
        

````xml
	<Toc>
	  <Node>
	    <Title>Main Title</Title>
	    <id>1</id>
	    <parentId></parentId>
	  </Node>
	  <Node>
	    <Title>Child Title</Title>
	    <id>2</id>
	    <parentId>1</parentId>
	  </Node>
	</Toc>
````

Assuming that "toc.xml" is in the TreeView\DataBinding directory which is relative to the directory of the the executable, the following code can be run from the form __Load__ event handler. A new __DataSet__ object is created and the __DataSet__. __ReadXml()__ method consumes the sample data. The element being shown is the __DisplayMember__ property "Title". The ValueMember property is set to the "id" element and it will be available in the Value property of each RadTreeNode at runtime. The ParentMember and ChildMember properties define the relation between the records in the data source object:

![treeview-data-binding-binding-to-xml-data 001](images/treeview-data-binding-binding-to-xml-data001.png)

	


