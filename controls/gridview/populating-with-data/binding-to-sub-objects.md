---
title: Binding to Sub Objects
page_title: Binding to Sub Objects - RadGridView
description: Bind specific columns to sub object fields using the dot notation. 
slug: winforms/gridview/populating-with-data/binding-to-sub-objects
tags: binding,to,sub,objects
published: True
position: 7
previous_url: gridview-populating-with-data-binding-to-sub-objects
---

# Binding to Sub Objects

RadGridView supports out-of-the-box binding to sub objects by intuitive and simple __dot (.)__ syntax (specified through the __FieldName__ property of declaratively bound columns). The example below includes a "Person" class that has three properties, one of which is a reference type "Car":

* Name - string

* City - string

* Car - object Car

Follows the implementation of the Person and the Car classes:

#### Defining the Class and Sub Class

<snippet id='gridview-bindingtosubobjects-classes-cs' />
<snippet id='gridview-bindingtosubobjects-classes-vb' />



Lets populate a `BindingList` of `Person` with some objects and bind it to RadGridView.

Binding RadGridView to `Person` automatically creates three columns for all properties of the `Person` object. The value properties are displayed correctly, but the reference property is displayed in "dot" notation (see the third (Car) column in the screenshot below).

<snippet id='gridview-bindingtosubobjects-bindradgridview-cs' />
<snippet id='gridview-bindingtosubobjects-bindradgridview-vb' />



![WinForms RadGridView Defining Classes](images/gridview-populating-with-data-binding-to-subobjects001.png)

Now to setup the sub-property binding of the `Car` column, all you have to do is to declare in the __FieldName__ property of the column, the name of the Car object property that you want to bind the column to (Model or Year), using the __dot__ notation:

<snippet id='gridview-bindingtosubobjects-addsubpropertybinding-cs' />
<snippet id='gridview-bindingtosubobjects-addsubpropertybinding-vb' />



The result is that the `Car` column is now bound to the __Model__ property of the `Car` object

![WinForms RadGridView Binding to Sub Objects](images/gridview-populating-with-data-binding-to-subobjects002.png)
# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

