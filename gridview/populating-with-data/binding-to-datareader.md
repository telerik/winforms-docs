---
title: Binding to DataReader
page_title: Binding to DataReader
description: Binding to DataReader
slug: gridview-populating-with-data-binding-to-datareader
tags: binding,to,datareader
published: True
position: 6
---

# Binding to DataReader



## 

To extract values from a data source using a __DataReader,__use the GridViewTemplate __LoadFrom()__ method to consume an object instance that supports IDataReader. The code sample below uses a OleDbDataReader reading an Access data source:

#### __[C#] Using a DataReader__

{{region usingADataReader}}
	            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\\..\\DataSources\\Nwind.mdb");
	            conn.Open();
	            OleDbCommand cmd = new OleDbCommand("Select TOP 5 * FROM Customers", conn);
	            OleDbDataReader reader = cmd.ExecuteReader();
	            radGridView1.MasterTemplate.LoadFrom(reader);
	{{endregion}}



#### __[VB.NET] Using a DataReader__

{{region usingADataReader}}
	        Dim conn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\\..\\DataSources\\Nwind.mdb")
	        conn.Open()
	        Dim cmd As New OleDbCommand("Select TOP 5 * FROM Customers", conn)
	        Dim reader As OleDbDataReader = cmd.ExecuteReader()
	        RadGridView1.MasterTemplate.LoadFrom(reader)
	{{endregion}}


