---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: bindingnavigator-overview-gettingstarted
tags: getting,started
published: True
position: 0
---

# Getting Started



## 

__RadBindingNavigator__ extends
          [RadCommandBar]({%slug commandbar-overview%}) control,
          so most of its ways for customization at runtime
          and design time will be valid here as well. __RadBindingNavigator__ displays two sets of buttons separated
          into two __CommandBarStripElement__ according to the purpose of their commands: Navigation and Editing.
        

The __navigation buttons__ come as follows:
        

And the __editing buttons__:
        

* Add new item
            

* Delete item
            

Adding a __RadBindingNavigator__ control to a form and binding it to a data source, such as a
          [
                BindingSource
              ](
              http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource%28v=vs.110%29.aspx
            )
          ,
          will automatically establish relationships between the buttons and the BindingSource methods.
          In the table below are represented all relationships.
        
<table><tr><td>Move to first item</td><td>[
                    MoveFirst
                  ](
                  http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource.movefirst%28v=vs.110%29.aspx
                )</td></tr><tr><td>Move to previous item</td><td>[
                    MovePrevious
                  ](
                  http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource.moveprevious%28v=vs.110%29.aspx
                )</td></tr><tr><td>Move to next item</td><td>[
                    MoveNext
                  ](
                  http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource.movenext%28v=vs.110%29.aspx
                )</td></tr><tr><td>Move to last item</td><td>[
                    MoveLast
                  ](
                  http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource.movelast%28v=vs.110%29.aspx
                )</td></tr><tr><td>Add new item</td><td>[
                    AddNew
                  ](
                  http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource.addnew%28v=vs.110%29.aspx
                )</td></tr><tr><td>Delete item </td><td>[
                    RemoveCurrent
                  ](
                  http://msdn.microsoft.com/en-us/library/system.windows.forms.bindingsource.removecurrent%28v=vs.110%29.aspx
                )</td></tr></table>

## How does it work?

1. The following tutorial will demonstrate how to get __RadBindingNaviagator__ up and running:
              Place __RadBindingNaviagator__ control and BindingSource component on a form.
            

1. Setup the DataSource property of the BindingSource and the BindingSource property of __RadBindingNaviagator__:
            

#### __[C#] __

{{source=..\SamplesCS\DataEntryAndBindingNavigator\RadBindingNavigatorForm.cs region=radBindingNavigator1}}
	            this.bindingSource1.DataSource = new List<int>() { 1, 2, 3, 4, 5, 6, 7, 8 };
	            this.radBindingNavigator1.BindingSource = this.bindingSource1;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\DataEntryAndBindingNavigator\RadBindingNavigatorForm.vb region=radBindingNavigator1}}
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
	{{endregion}}



1. Press F5 to run the project and you should see the following:![bindingnavigator-overview-gettingstarted 001](images/bindingnavigator-overview-gettingstarted001.png)

>importantDue to the nature of the way __RadBindingNavigator__ is created at design time its __Name__
            property should not be changed (does not apply if the control is created at runtime).

          (This is needed in order to map the handler of a certain button with the button itself and have it accessible and editable
            at design time, as is it not possible to generate click event handler with the code in it at design time).
          
