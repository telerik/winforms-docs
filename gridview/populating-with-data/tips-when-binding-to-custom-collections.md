---
title: Tips when Binding to Custom Collections
page_title: Tips when Binding to Custom Collections | RadGridView
description: Speed up the data processing when you do not need to display all fields presented in the business object.
slug: winforms/gridview/populating-with-data/tips-when-binding-to-custom-collections
tags: tips,when,binding,to,custom,collections
published: True
position: 8
previous_url: gridview-populating-with-data-tips-when-binding-to-custom-collections
---

# Tips when Binding to Custom Collections

## Reducing Column Processing

By default RadGridView will fetch all bindable properties from the data source you use for control structure generation. These properties will be also be used in sorting, filtering, grouping or other operations. In some cases you may not need your grid instance to iterate through all the fields in your data source upon binding. Generally, this can be a requirement when you have custom collection of business objects which you pass to the __DataSource__ property of RadGridView to generate its content.

To prevent the grid from traversing all data fields in that collection, set the __GridViewTemplate.AutoGenerateColumns__ property to __False__. In this case, the additional fields that you might use when sorting, grouping, etc., should be included in the __MasterGridViewTemplate.Columns__ collection. With these settings, only the properties that are used as column __FieldName__ properties or those specified in the __MasterGridViewTemplate.Columns__ will be extracted.

## Alternative Binding to Custom Collections

Currently RadGridView supports sorting, filtering and grouping natively. This is represented by three collections of corresponding expressions:

* GridViewInfo.SortExpression 

* GridViewTemplate.GroupByExpressions 

* GridViewInfo.FilterExpression

These features are not tightly coupled with the column declarations of the grid but with the data that the grid is bound to. To clarify the idea, consider the following scenario. You want to display a list of all files in a directory. For this purpose you use __FileSystemInfo__ from the __System.IO.FileSystemInfo__ namespace. This collection has many properties: __Attributes__, __CreationTime__, __CreationTimeUtc__, __Exists__, __Extension__, __FullName__, __LastAccessTime__, __LastAccessTimeUtc__, __LastWriteTime__, __LastWriteTimeUtc__ and __Name__. This is a long list that you probably don't want to expose in the grid. Instead you define the columns to be displayed and supply the GridView __DataSource__ with the files information:

{{source=..\SamplesCS\GridView\PopulatingWithData\TipsWhenBindingToCustomCollections.cs region=addingColumnsToTheColumnsCollection}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\TipsWhenBindingToCustomCollections.vb region=addingColumnsToTheColumnsCollection}} 

````C#
radGridView1.MasterTemplate.AutoGenerateColumns = false;
radGridView1.MasterTemplate.Columns.Add(new GridViewTextBoxColumn("Name"));
radGridView1.MasterTemplate.Columns.Add(new GridViewTextBoxColumn("Attributes"));
radGridView1.MasterTemplate.Columns.Add(new GridViewTextBoxColumn("LastAccessTime"));
radGridView1.MasterTemplate.Columns.Add(new GridViewTextBoxColumn("CreationTime"));
DirectoryInfo directory = new DirectoryInfo("C:\\");
FileSystemInfo[] filesInDirectory = directory.GetFileSystemInfos();
radGridView1.DataSource = filesInDirectory;

````
````VB.NET
RadGridView1.MasterTemplate.AutoGenerateColumns = False
RadGridView1.MasterTemplate.Columns.Add(New GridViewTextBoxColumn("Name"))
RadGridView1.MasterTemplate.Columns.Add(New GridViewTextBoxColumn("Attributes"))
RadGridView1.MasterTemplate.Columns.Add(New GridViewTextBoxColumn("LastAccessTime"))
RadGridView1.MasterTemplate.Columns.Add(New GridViewTextBoxColumn("CreationTime"))
Dim directory As New DirectoryInfo("C:\")
Dim filesInDirectory As FileSystemInfo() = directory.GetFileSystemInfos()
RadGridView1.DataSource = filesInDirectory

````

{{endregion}} 



# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

