---
title: Bind to XML
page_title: Bind to XML - WinForms GridView Control
description: Learn how to import XML data to a DataSet and use it as data source for WinForms GridView. 
slug: winforms/gridview/populating-with-data/bind-to-xml
tags: bind,to,xml
published: True
position: 10
previous_url: gridview-populating-with-data-bind-to-xml
---

# Bind to XML

Binding to XML is not *directly *supported but DataTables are supported and a DataSet (containing DataTables) can be created from an XML document.

This is a simple xml file used in the examples below:
````XML
    <?xml version="1.0" encoding="utf-8"?>
    <people>
      <person>
        <name> John </name>
        <age> 30</age>
      </person>
      <person>
        <name> Sarah </name>
        <age> 45</age>
      </person>
      <person>
        <name> Tom</name>
        <age> 50 </age>
      </person>
    </people>
````

![WinForms RadGridView Bind to XML](images/gridview-populating-with-data-bind-to-xml001.png)

You have to create a DataSet instance from the XML file. For the sample XML file above, the created DataSet contains only __one__ DataTable which is set as RadGridView data source. Please refer to this [topic]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%}) if you want to create hierarchy.

{{source=..\SamplesCS\GridView\PopulatingWithData\BindingToXml.cs region=bindingToXML}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\BindingToXml.vb region=bindingToXML}}````C#
DataSet xmlDataSet = new DataSet();
xmlDataSet.ReadXml("..\\..\\GridView\\PopulatingWithData\\gridXml.xml");
this.radGridView1.DataSource = xmlDataSet.Tables[0];

````
````VB.NET
Dim xmlDataSet As New DataSet()
xmlDataSet.ReadXml("..\\..\\GridView\\PopulatingWithData\\gridXml.xml")
Me.RadGridView1.DataSource = xmlDataSet.Tables(0)

```` 

	
{{endregion}} 



# See Also
* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

