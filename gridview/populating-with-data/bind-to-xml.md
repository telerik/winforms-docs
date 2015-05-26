---
title: Bind to XML
page_title: Bind to XML | UI for WinForms Documentation
description: Bind to XML
slug: winforms/gridview/populating-with-data/bind-to-xml
tags: bind,to,xml
published: True
position: 10
---

# Bind to XML



## 

Binding to XML is not *directly *supported but DataTables are supported and a DataSet (containing DataTables) can be created from an XML document.

This is a simple xml file used in the examples below:





![gridview-populating-with-data-bind-to-xml 001](images/gridview-populating-with-data-bind-to-xml001.JPG)

You have to create a DataSet instance from the xml file. For the sample xml file above, the created DataSet contains only __one__DataTable which is set as RadGridView data source. Please refer to this [topic]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%}) if you want to create hierarchy.   #_[C#] Binding to XML_

	

#_[VB.NET] Binding to XML_

	




