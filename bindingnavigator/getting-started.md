---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/bindingnavigator/getting-started
tags: getting,started
published: True
position: 1
previous_url: bindingnavigator-overview-gettingstarted
---

# Getting Started

The following tutorial will demonstrate how to get __RadBindingNaviagator__ up and running: 

1\.Place __RadBindingNaviagator__ control and BindingSource component on a form.

2\. Setup the `DataSource` property of the `BindingSource` and the `BindingSource` property of __RadBindingNaviagator__.
          
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

3\. Press __F5__ to run the project and you should see the following:

![bindingnavigator-overview-gettingstarted 001](images/bindingnavigator-overview-gettingstarted001.png)

>caution Due to the nature of the way __RadBindingNavigator__ is created at design time its __Name__ property should not be changed (does not apply if the control is created at runtime).
>(This is needed in order to map the handler of a certain button with the button itself and have it accessible and editable at design time, as is it not possible to generate click event handler with the code in it at design time).
>

## See Also

 * [Properties]({%slug winforms/bindingnavigator/properties%})

 * [Structure]({%slug winforms/bindingnavigator/structure%})

 * [Customizing Appearance]({%slug winforms/bindingnavigator/customizing-radbindingnavigator-%})