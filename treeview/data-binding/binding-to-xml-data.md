---
title: Binding to XML Data
page_title: Binding to XML Data
description: Binding to XML Data
slug: treeview-data-binding-binding-to-xml-data
tags: binding,to,xml,data
published: True
position: 4
---

# Binding to XML Data



## 

RadTreeView can consume XML data both by directly loading it
          ([
            see Serialize/Deserialize to XML
          ]({%slug treeview-data-binding-serialize-deserialize-to-xml%})) or by loading it to a __DataSet__for binding. 
          The following example uses a sample "Table of contents" XML.
          Each node element in the table of contents has a "Title" element, "id" and "parentid".
        

#### __[XML]__

{{region sampleToc}}
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
	{{endregion}}



Assuming that "toc.xml" is in the TreeView\DataBinding directory which is relative to the directory of the
          the executable,
          the following code can be run from the form __Load__event handler.
          A new __DataSet__ object is created and the __DataSet____.ReadXml()__ method consumes the sample data. The element being shown is the
          __DisplayMember__property "Title". The ValueMember property
          is set to the "id" element and it will be available in the Value property of each RadTreeNode at runtime.
          The ParentMember and ChildMember properties define the relation between the records in the data source object:
        ![treeview-data-binding-binding-to-xml-data 001](images/treeview-data-binding-binding-to-xml-data001.png)

#### __[C#]__

{{region toc}}
	            DataSet tocDataSet = new DataSet("Toc");
	            tocDataSet.ReadXml("TreeView\\DataBinding\\toc.xml");
	            this.radTreeView1.DataMember = "Node";
	            this.radTreeView1.DisplayMember = "Title";
	            this.radTreeView1.ChildMember = "id";
	            this.radTreeView1.ParentMember = "parentId";
	            this.radTreeView1.DataSource = tocDataSet;
	{{endregion}}



#### __[VB.NET]__

{{region toc}}
	        Dim tocDataSet As DataSet = New DataSet("Toc")
	        tocDataSet.ReadXml("TreeView\DataBinding\toc.xml")
	        Me.RadTreeView1.DataMember = "Node"
	        Me.RadTreeView1.DisplayMember = "Title"
	        Me.RadTreeView1.ChildMember = "id"
	        Me.RadTreeView1.ParentMember = "parentId"
	        Me.RadTreeView1.DataSource = tocDataSet
	{{endregion}}


