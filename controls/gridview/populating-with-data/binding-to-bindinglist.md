---
title: Binding to BindingList
page_title: Binding to BindingList - WinForms GridView Control
description: Learn how you can bind WinForms GridView to a BindingList. 
slug: winforms/gridview/populating-with-data/binding-to-bindinglist
tags: binding,to,bindinglist
published: True
position: 4
previous_url: gridview-populating-with-data-binding-to-bindinglist
---

# Binding to BindingList

BindingList is a generic list type that has additional binding support. While you can [bind to a generic list]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%}), BindingList provides additional control over list items, i.e. if they can be edited, removed or added. BindingList also surfaces events that notify when the list has been changed. The example below creates a list of `MyObject`, initializes the list and assigns the list to the grid __DataSource__ property. The example also uses a __ListChangedEventHandler__ that reports the type of change that occurred, the new index of the item and the content of the item.

![WinForms RadGridView Binding to BindingList](images/gridview-populating-with-data-binding-to-bindinglist001.png)

<snippet id='gridview-bindingtobindinglist-myobjectclass-cs' />
<snippet id='gridview-bindingtobindinglist-myobjectclass-vb' />
<snippet id='gridview-bindingtobindinglist-bindingtobindinglist-cs' />
<snippet id='gridview-bindingtobindinglist-bindingtobindinglist-vb' />

# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

