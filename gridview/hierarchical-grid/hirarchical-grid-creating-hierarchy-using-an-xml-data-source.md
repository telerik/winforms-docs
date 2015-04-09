---
title: Creating hierarchy using an XML data source
page_title: Creating hierarchy using an XML data source
description: Creating hierarchy using an XML data source
slug: gridview-hirarchical-grid-creating-hierarchy-using-an-xml-data-source
tags: creating,hierarchy,using,an,xml,data,source
published: True
position: 4
---

# Creating hierarchy using an XML data source



## 
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[RadGridView for WinForms Hierarchy Overview](http://tv.telerik.com/winforms/radgrid/radgridview-winforms-hierarchy-overview)

In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)
            		</td><td>

![gridview-hierarchical-grid-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)</td></tr></table>

Please refer to this [topic]({%slug gridview-populating-with-data-bind-to-xml%}) before proceeding to this article.

This xml file is used in the examples below:

	



The DataSet created by ReadXml method for the *given xml above* contains 3 tables which you can avoid easily by skipping the second table and using the first and the third ones only. Note also that *Invoice_Id* and *Parts_Id* columns were added automatically to the tables by ReadXml method:

#### __[C#] Hierarchical binding RadGridView to XML data__

{{source=..\SamplesCS\GridView\HierarchicalGrid\CreatingHierarchyUsingXmlDataSource.cs region=CreatingHierarchyUsingXmlDataSource}}
	        void CreatingHierarchyUsingXmlDataSource_Load(object sender, EventArgs e)
	        {
	            DataSet xmlDataSet = new DataSet();
	            xmlDataSet.ReadXml("..\\..\\GridView\\HierarchicalGrid\\hierarchicalGridXml.xml");
	            GridViewTemplate partsTemplate = new GridViewTemplate();
	            this.radGridView1.MasterTemplate.Templates.Add(partsTemplate);
	            GridViewRelation relation = new GridViewRelation(this.radGridView1.MasterTemplate);
	            relation.ChildTemplate = partsTemplate;
	            relation.RelationName = "Invoices_Parts";
	            relation.ParentColumnNames.Add("Invoice_Id");
	            relation.ChildColumnNames.Add("Parts_Id");
	            radGridView1.Relations.Add(relation);
	            this.radGridView1.DataSource = xmlDataSet.Tables[0];
	            partsTemplate.DataSource = xmlDataSet.Tables[2];
	            this.radGridView1.MasterTemplate.BestFitColumns();
	            this.radGridView1.MasterTemplate.Templates[0].BestFitColumns();
	        }
	{{endregion}}



#### __[VB.NET] Hierarchical binding RadGridView to XML data__

{{source=..\SamplesVB\GridView\HierarchicalGrid\CreatingHierarchyUsingXmlDataSource.vb region=CreatingHierarchyUsingXmlDataSource}}
	    Private Sub CreatingHierarchyUsingXmlDataSource_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
	        Dim xmlDataSet As New DataSet()
	        xmlDataSet.ReadXml("..\..\GridView\HierarchicalGrid\hierarchicalGridXml.xml")
	        Dim partsTemplate As New GridViewTemplate()
	        Me.RadGridView1.MasterTemplate.Templates.Add(partsTemplate)
	        Dim relation As New GridViewRelation(Me.RadGridView1.MasterTemplate)
	        relation.ChildTemplate = partsTemplate
	        relation.RelationName = "Invoices_Parts"
	        relation.ParentColumnNames.Add("Invoice_Id")
	        relation.ChildColumnNames.Add("Parts_Id")
	        RadGridView1.Relations.Add(relation)
	        Me.RadGridView1.DataSource = xmlDataSet.Tables(0)
	        partsTemplate.DataSource = xmlDataSet.Tables(2)
	        Me.RadGridView1.MasterTemplate.BestFitColumns()
	        Me.RadGridView1.MasterTemplate.Templates(0).BestFitColumns()
	    End Sub
	{{endregion}}


