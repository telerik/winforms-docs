---
title: Creating hierarchy using an XML data source
page_title: Creating hierarchy using an XML data source | UI for WinForms Documentation
description: Creating hierarchy using an XML data source
slug: winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source
tags: creating,hierarchy,using,an,xml,data,source
published: True
position: 4
previous_url: gridview-hirarchical-grid-creating-hierarchy-using-an-xml-data-source
---

# Creating hierarchy using an XML data source



## 


| RELATED VIDEOS |  |
| ------ | ------ |
|[RadGridView for WinForms Hierarchy Overview](http://tv.telerik.com/watch/winforms/radgrid/radgridview-winforms-hierarchy-overview)<br>In this video you will learn the various ways you can display hierarchical data in a RadGridView. (Runtime: 12:13)|![gridview-hierarchical-grid-binding-to-hierarchical-data 001](images/gridview-hierarchical-grid-binding-to-hierarchical-data001.png)|

Please refer to this [topic]({%slug winforms/gridview/populating-with-data/bind-to-xml%}) before proceeding to this article.

>caution RadGridView does not support many-to-many relations. Xml files seldom contain such relations but created DataTables may appear to contain ones.
>


This xml file is used in the examples below:
````XML
    <?xml version="1.0" encoding="utf-8"?>
    <Invoices>
      <Invoice>
        <InvoiceNumber>456789</InvoiceNumber>
        <JobNumber>TTT</JobNumber>
        <CreateDate>01/03/2009 12:23:34</CreateDate>
        <Parts>
          <Part>
            <PartNumber>001</PartNumber>
            <PartDescription>Part available</PartDescription>
            <PartPrice>12.99</PartPrice>
    
          </Part>
          <Part>
            <PartNumber>002</PartNumber>
            <PartDescription>No Part available</PartDescription>
            <PartPrice>60.00</PartPrice>
          </Part>
          <Part>
            <PartNumber>003</PartNumber>
            <PartDescription>Part available</PartDescription>
            <PartPrice>19.99</PartPrice>
    
          </Part>
          <Part>
            <PartNumber>004</PartNumber>
            <PartDescription>No Part available</PartDescription>
            <PartPrice>160.00</PartPrice>
          </Part>
          <Part>
            <PartNumber>005</PartNumber>
            <PartDescription>Part available</PartDescription>
            <PartPrice>122.99</PartPrice>
    
          </Part>
          <Part>
            <PartNumber>006</PartNumber>
            <PartDescription>No Part available</PartDescription>
            <PartPrice>640.00</PartPrice>
          </Part>
          <Part>
            <PartNumber>007</PartNumber>
            <PartDescription>Part available</PartDescription>
            <PartPrice>1342.99</PartPrice>
    
          </Part>
          <Part>
            <PartNumber>008</PartNumber>
            <PartDescription>No Part available</PartDescription>
            <PartPrice>660.00</PartPrice>
          </Part>
          <Part>
            <PartNumber>009</PartNumber>
            <PartDescription>Part available</PartDescription>
            <PartPrice>112.99</PartPrice>
    
          </Part>
          <Part>
            <PartNumber>010</PartNumber>
            <PartDescription>No Part available</PartDescription>
            <PartPrice>610.00</PartPrice>
          </Part>
        </Parts>
    
    
      </Invoice>
      <Invoice>
        <InvoiceNumber>0000</InvoiceNumber>
        <JobNumber>RRR</JobNumber>
        <CreateDate>01/01/2001 11:00:00</CreateDate>
        <Parts>
          <Part>
            <PartNumber>003</PartNumber>
            <PartDescription>Part not available</PartDescription>
            <PartPrice>42.99</PartPrice>
    
          </Part>
          <Part>
            <PartNumber>004</PartNumber>
            <PartDescription>4 Part available</PartDescription>
            <PartPrice>100.00</PartPrice>
          </Part>
        </Parts>
    
    
      </Invoice>
    </Invoices>
````

The DataSet created by ReadXml method for the *given xml above* contains 3 tables which you can avoid easily by skipping the second table and using the first and the third ones only. Note also that *Invoice_Id* and *Parts_Id* columns were added automatically to the tables by ReadXml method:

{{source=..\SamplesCS\GridView\HierarchicalGrid\CreatingHierarchyUsingXmlDataSource.cs region=CreatingHierarchyUsingXmlDataSource}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\CreatingHierarchyUsingXmlDataSource.vb region=CreatingHierarchyUsingXmlDataSource}}````C#
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

````
````VB.NET
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

```` 

	
{{endregion}} 