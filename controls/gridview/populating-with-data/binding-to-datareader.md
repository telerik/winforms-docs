---
title: Binding to DataReader
page_title: Binding to DataReader - WinForms GridView Control
description: Learn how you can directly load the data from a data reader to WinForms GridView.
slug: winforms/gridview/populating-with-data/binding-to-datareader
tags: binding,to,datareader
published: True
position: 6
previous_url: gridview-populating-with-data-binding-to-datareader
---

# Binding to DataReader

To extract values from a data source using a __DataReader,__ use the GridViewTemplate __LoadFrom()__ method to consume an object instance that supports `IDataReader`. The code sample below uses a `OleDbDataReader` reading an `Access` data source:

<snippet id='gridview-bindingtodatareader-usingadatareader-cs' />
<snippet id='gridview-bindingtodatareader-usingadatareader-vb' />

# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

