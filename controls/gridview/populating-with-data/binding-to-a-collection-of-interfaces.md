---
title: Binding to a Collection of Interfaces
page_title: Binding to a Collection of Interfaces - WinForms GridView Control
description: Learn how you can bind WinForms GridView to a collection of interfaces.
slug: winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces
tags: binding,to,a,collection,of,interfaces
published: True
position: 15
previous_url: gridview-populating-with-data-binding-to-a-collection-of-interfaces
---

# Binding to a Collection of Interfaces

There may be a case where you want to bind RadGridView to a collection of interfaces in order to be as abstract as possible or due to other reasons. RadGridView does not support this out of the box since when a new item is added its parameterless constructor is being invoked and interfaces cannot be created in such a way. The solution is to override the __AddNew__ method of the __GridViewListSource__.

## 

First, we will need to create a custom __GridViewListSource__:

<snippet id='gridview-bindingtocollectionofinterfaces-gridcode-cs' />
<snippet id='gridview-bindingtocollectionofinterfaces-gridcode-vb' />

The `GridObj` type is a type, which implements the interface, which you have bound your RadGridView. Consider the following example:

<snippet id='gridview-bindingtocollectionofinterfaces-examplecode-cs' />
<snippet id='gridview-bindingtocollectionofinterfaces-examplecode-vb' />

You will notice that we are creating a __BindingList__ of __IGridObject__, because the new items are manually added and this way the grid will be notified for the new objects.
          
# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

