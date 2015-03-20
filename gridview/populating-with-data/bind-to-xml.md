---
title: Bind to XML
page_title: Bind to XML
description: Bind to XML
slug: gridview-populating-with-data-bind-to-xml
tags: bind,to,xml
published: True
position: 10
---

# Bind to XML



## 

Binding to XML is not *directly *supported but DataTables are supported and a DataSet (containing DataTables) can be created from an XML document.

This is a simple xml file used in the examples below:





![gridview-populating-with-data-bind-to-xml 001](images/gridview-populating-with-data-bind-to-xml001.JPG)

You have to create a DataSet instance from the xml file. For the sample xml file above, the created DataSet contains only __one__DataTable which is set as RadGridView data source. Please refer to this [topic]({%slug gridview-hirarchical-grid-creating-hierarchy-using-an-xml-data-source%}) if you want to create hierarchy.   

#### __[C#] Binding to XML__

{{region bindingToXML}}
	            DataSet xmlDataSet = new DataSet();
	            xmlDataSet.ReadXml("..\\..\\GridView\\PopulatingWithData\\gridXml.xml");
	            this.radGridView1.DataSource = xmlDataSet.Tables[0];
	{{endregion}}



#### __[VB.NET] Binding to XML__

{{region bindingToXML}}
	        Dim xmlDataSet As New DataSet()
	        xmlDataSet.ReadXml("..\\..\\GridView\\PopulatingWithData\\gridXml.xml")
	        Me.RadGridView1.DataSource = xmlDataSet.Tables(0)
	{{endregion}}




