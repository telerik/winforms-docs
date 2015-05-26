---
title: Creating hierarchy using an XML data source
page_title: Creating hierarchy using an XML data source | UI for WinForms Documentation
description: Creating hierarchy using an XML data source
slug: winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source
tags: creating,hierarchy,using,an,xml,data,source
published: True
position: 4
---

# Creating hierarchy using an XML data source



## 


| RELATED VIDEOS |  |
| ------ | ------ |
|[RadGridView for WinForms Hierarchy Overview](http://tv.telerik.com/winforms/radgrid/radgridview-winforms-hierarchy-overview)In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)|
>caption 

![gridview-hierarchical-grid-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)|

Please refer to this [topic]({%slug winforms/gridview/populating-with-data/bind-to-xml%}) before proceeding to this article.

>caution RadGridView does not support many-to-many relations. Xml files seldom contain such relations but created DataTables may appear to contain ones.
>


This xml file is used in the examples below:

	



The DataSet created by ReadXml method for the *given xml above* contains 3 tables which you can avoid easily by skipping the second table and using the first and the third ones only. Note also that *Invoice_Id* and *Parts_Id* columns were added automatically to the tables by ReadXml method:#_[C#] Hierarchical binding RadGridView to XML data_

	

#_[VB.NET] Hierarchical binding RadGridView to XML data_

	


