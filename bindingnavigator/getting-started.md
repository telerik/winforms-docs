---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/bindingnavigator/getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started
 
__RadBindingNavigator__ extends [RadCommandBar]({%slug winforms/commandbar%}) control, so most of its ways for customization at runtime and design time will be valid here as well. __RadBindingNavigator__ displays two sets of buttons separated into two __CommandBarStripElement__ according to the purpose of their commands: Navigation and Editing.
        

The __navigation buttons__ come as follows:
        

And the __editing buttons__:
        

* Add new item
            

* Delete item
            

Adding a __RadBindingNavigator__ control to a form and binding it to a data source, such as a [BindingSource](http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource%28v=vs.110%29.aspx), will automatically establish relationships between the buttons and the BindingSource methods. In the list below are represented all relationships.
        
* Move to first item - [MoveFirst](https://msdn.microsoft.com/en-us/library/ms158169(v=vs.110).aspx) 
* Move to previous item - [MovePrevious](https://msdn.microsoft.com/en-us/library/ms158172(v=vs.110).aspx)
* Move to next item - [MoveNext](https://msdn.microsoft.com/en-us/library/ms158171(v=vs.110).aspx)
* Move to last item - [MoveLast](https://msdn.microsoft.com/en-us/library/ms158170(v=vs.110).aspx)
* Add new item - [AddNew](https://msdn.microsoft.com/en-us/library/ms158154(v=vs.110).aspx)
* Delete item - [RemoveCurrent](https://msdn.microsoft.com/en-us/library/ms158184(v=vs.110).aspx)

## How does it work?

1\. The following tutorial will demonstrate how to get __RadBindingNaviagator__ up and running: Place __RadBindingNaviagator__ control and BindingSource component on a form.
            

2\. Setup the DataSource property of the BindingSource and the BindingSource property of __RadBindingNaviagator__:
          
{{source=..\SamplesCS\DataEntryAndBindingNavigator\RadBindingNavigatorForm.cs region=radBindingNavigator1}} 
{{source=..\SamplesVB\DataEntryAndBindingNavigator\RadBindingNavigatorForm.vb region=radBindingNavigator1}} 

````C#
this.bindingSource1.DataSource = new List<int>() { 1, 2, 3, 4, 5, 6, 7, 8 };
this.radBindingNavigator1.BindingSource = this.bindingSource1;

````
````VB.NET
Me.bindingSource1.DataSource = New List(Of Integer)() From { _
 1, _
 2, _
 3, _
 4, _
 5, _
 6, _
 7, _
 8 _
}
Me.radBindingNavigator1.BindingSource = Me.bindingSource1

````

{{endregion}} 

3\. Press F5 to run the project and you should see the following:

![bindingnavigator-overview-gettingstarted 001](images/bindingnavigator-overview-gettingstarted001.png)

>important Due to the nature of the way __RadBindingNavigator__ is created at design time its __Name__ property should not be changed (does not apply if the control is created at runtime).
>(This is needed in order to map the handler of a certain button with the button itself and have it accessible and editable at design time, as is it not possible to generate click event handler with the code in it at design time).
>

