---
title: Binding to multiple objects
page_title: Binding to multiple objects | UI for WinForms Documentation
description: Binding to multiple objects
slug: winforms/propertygrid/binding-to-multiple-objects
tags: binding,to,multiple,objects
published: True
position: 4
---

# Binding to multiple objects

You can set an array of objects as SelectedObjects of RadPropertyGrid . When you do so, the RadPropertyGrid will display only the common properties of all the objects in the array. A common property is considered a property that has the same name and type across all the objects. If the values of the properties in all objects match, this value will be displayed, otherwise there will be no value displayed for the given property. When you set a property in the RadPropertyGrid the value is set in all the objects.

Here is how to use this feature:

#### Binding to multiple objects

{{source=..\SamplesCS\PropertyGrid\PropertyGridBindingToMultipleObjects.cs region=BindToMultipleObjects}} 
{{source=..\SamplesVB\PropertyGrid\PropertyGridBindingToMultipleObjects.vb region=BindToMultipleObjects}} 

````C#
object[] objects = new object[] { this.radButton1, this.radTextBox1, this.radLabel1 };
this.radPropertyGrid1.SelectedObjects = objects;

````
````VB.NET
Dim objects As Object() = New Object() {Me.RadButton1, Me.RadTextBox1, Me.RadLabel1}
Me.RadPropertyGrid1.SelectedObjects = objects

````

{{endregion}}

![propertygrid-bindiing-to-multiple-objects 001](images/propertygrid-bindiing-to-multiple-objects001.png)
