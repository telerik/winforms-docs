---
title: Binding to DataReader
page_title: Binding to DataReader | RadGridView
description: This article shows how you can directly load the data from a data reader to RadGridView.
slug: winforms/gridview/populating-with-data/binding-to-datareader
tags: binding,to,datareader
published: True
position: 6
previous_url: gridview-populating-with-data-binding-to-datareader
---

# Binding to DataReader

To extract values from a data source using a __DataReader,__ use the GridViewTemplate __LoadFrom()__ method to consume an object instance that supports `IDataReader`. The code sample below uses a `OleDbDataReader` reading an `Access` data source:

{{source=..\SamplesCS\GridView\PopulatingWithData\BindingToDataReader.cs region=usingADataReader}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\BindingToDataReader.vb region=usingADataReader}} 

````C#
OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\\..\\DataSources\\Nwind.mdb");
conn.Open();
OleDbCommand cmd = new OleDbCommand("Select TOP 5 * FROM Customers", conn);
OleDbDataReader reader = cmd.ExecuteReader();
radGridView1.MasterTemplate.LoadFrom(reader);

````
````VB.NET
Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\\..\\DataSources\\Nwind.mdb")
conn.Open()
Dim cmd As New OleDbCommand("Select TOP 5 * FROM Customers", conn)
Dim reader As OleDbDataReader = cmd.ExecuteReader()
RadGridView1.MasterTemplate.LoadFrom(reader)

````

{{endregion}} 



# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

