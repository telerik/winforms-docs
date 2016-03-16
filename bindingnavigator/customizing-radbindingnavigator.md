---
title: Customizing RadBindingNavigator 
page_title: Customizing RadBindingNavigator  | UI for WinForms Documentation
description: Customizing RadBindingNavigator 
slug: winforms/bindingnavigator/customizing-radbindingnavigator-
tags: customizing,radbindingnavigator,
published: True
position: 2
previous_url: bindingnavigator-overview-customizing-radbindingnavigator
---

# Customizing RadBindingNavigator 



## 

Each of the control's elements can be accessed and customized. Once you access the desired elements, you can tweak its properties in order to modify it. In this tutorial, we will take a look at code snippet, demonstrating how to add a button in the __RadBindingNavigator__ :
        
{{source=..\SamplesCS\DataEntryAndBindingNavigator\RadBindingNavigatorForm.cs region=custradBindingNavigator1}} 
{{source=..\SamplesVB\DataEntryAndBindingNavigator\RadBindingNavigatorForm.vb region=custradBindingNavigator1}} 

````C#
CommandBarButton newButton = new CommandBarButton();
newButton.Image = Properties.Resources.details_icon;
newButton.Click += new EventHandler(newButton_Click);
this.radBindingNavigator1.Rows[0].Strips[1].Items.Add(new CommandBarSeparator());
this.radBindingNavigator1.Rows[0].Strips[1].Items.Add(newButton);

````
````VB.NET
Dim newButton As New CommandBarButton()
newButton.Image = My.Resources.details_icon
AddHandler newButton.Click, AddressOf newButton_Click
Me.radBindingNavigator1.Rows(0).Strips(1).Items.Add(New CommandBarSeparator())
Me.radBindingNavigator1.Rows(0).Strips(1).Items.Add(newButton)

````

{{endregion}} 


![bindingnavigator-overview-customizing-radbindingnavigator 001](images/bindingnavigator-overview-customizing-radbindingnavigator001.png)
