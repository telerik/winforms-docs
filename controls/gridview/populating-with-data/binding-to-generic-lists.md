---
title: Binding to Generic Lists
page_title: Binding to Generic Lists - WinForms GridView Control
description: Learn how you can bind WinForms GridView to a generic List of business objects.
slug: winforms/gridview/populating-with-data/binding-to-generic-lists
tags: binding,to,generic,lists
published: True
position: 3
previous_url: gridview-populating-with-data-binding-to-generic-list
---

# Binding to Generic Lists

## Binding to Lists of Simple Types

Generally, you should not try to bind __RadGridView__ to a list of simple types. __RadGridView__ internally creates columns and reads data for the properties of the objects it is bound to. However, the integer type, for example does not have any properties so if you try to bind __RadGridView__ to a List of integers, you will get no data. Following the same logic, if you bind __RadGridView__ to a collection of strings, you will get a column representing the length of these strings, because the only property of a string object is the __Length__ property.

![WinForms RadGridView Binding to Lists of Simple Types](images/grid-populating-with-data-binding-to-generic-lists001.png)

<snippet id='gridview-bindingtogenericlists-bindingtolistofsimpletypes-cs' />
<snippet id='gridview-bindingtogenericlists-bindingtolistofsimpletypes-vb' />

## Binding to Lists of Objects

Generic Lists of objects containing [bindable types]({%slug winforms/gridview/populating-with-data/bindable-types%}) can be bound to **RadGridView** by assigning the List to the __DataSource__ property of the grid. 

The example below defines a `MyObject` class containing one integer and one string property. The next set of code snippets "Creating an List of Objects" creates an array of MyObjects, initializes the array and assigns the array to the __DataSource__. The `MyObject` class would typically be placed in its own separate class file and the List creation, initialization and assignment code might be placed in a form's **Load** event handler.

![WinForms RadGridView Binding to Lists of Objects](images/gridview-populating-with-data-binding-to-generic-list002.png)

<snippet id='gridview-bindingtogenericlists-objectclass-cs' />
<snippet id='gridview-bindingtogenericlists-objectclass-vb' />
<snippet id='gridview-bindingtogenericlists-bindingtoobjectsofsimpletype-cs' />
<snippet id='gridview-bindingtogenericlists-bindingtoobjectsofsimpletype-vb' />

# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to ObservableCollection]({%slug winforms/gridview/populating-with-data/binding-to-observablecollection%})

