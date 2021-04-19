---
title: Bindable Types
page_title: Bindable Types - WinForms GridView Control
description: Learn which types can be used as data source for WinForms GridView.
slug: winforms/gridview/populating-with-data/bindable-types
tags: bindable,types
published: True
position: 1
previous_url: gridview-populating-with-data-bindable-types
---

# Bindable Types

You can bind __RadGridView to__ a wide variety of data-sources. The data-source must implement __IEnumerable__ interface in general. You can further customize the binding of __RadGridView__ using __ITypedList/ICustomTypeDescriptor/INotifyPropertyChange__ interfaces together with your business objects.

* __RadGridView__ follows the standard Windows Forms data-binding model. It can data bind to any *data-source *implementing one of the following interfaces:       

    * __IList__ interface for one-dimensional arrays. 


    * __IListSource__ interface (like DataTable and DataSet classes). 


    * __IBindingList__ interface. For example the generic BindingList<> class. 


    * __IBindingListView__ interface. For example BindingSource class.

* Simple collections, such as arrays, containing elements of the same type.



__RadGridView__ understands the following bindable property types:

* All primitive types: __bool__, __byte__, __sbyte__, __char__, __short__, __ushort__, __int__, __uint__, __long__, __ulong__, __decimal__, __double__, __float__, __DateTime__, etc. 

* __GUID__

* __String__

* __TimeSpan__

* __Enum__ types 

* __Nullable__ types




# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

