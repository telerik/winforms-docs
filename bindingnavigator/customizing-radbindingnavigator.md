---
title: Customizing Appearance
page_title: Customizing Appearance | UI for WinForms Documentation
description: This article demonstrates how one can change the appearance of the navigator elements.  
slug: winforms/bindingnavigator/customizing-radbindingnavigator-
tags: customizing, radbindingnavigator
published: True
position: 5
previous_url: bindingnavigator-overview-customizing-radbindingnavigator
---

# Customizing RadBindingNavigator 

Each of the control's elements can be accessed and customized. Once you access the desired elements, you can tweak their properties in order to modify them. 

### Customize Fill and Border

You can access the control element by opening the [Element Hierarchy Editor] from the controls smart tag. This allows you to select elements and change their properties. The next image shows how you can change the BackColor and the BorderColor.

>caption Figure 1: Change the BackColor and the BorderColor.

![bindingnavigator-overview-customizing-radbindingnavigator 001](images/bindingnavigator-overview-customizing-radbindingnavigator001.png)

### Customize Buttons

The following snippet shows how you can access and change the properties of navigator buttons.

{{source=..\SamplesCS\DataEntryAndBindingNavigator\RadBindingNavigatorForm.cs region=changeButtonColor}} 
{{source=..\SamplesVB\DataEntryAndBindingNavigator\RadBindingNavigatorForm.vb region=changeButtonColor}}
````C#
radBindingNavigator1.BindingNavigatorElement.NextButton.BackColor = ColorTranslator.FromHtml("#e83737");
radBindingNavigator1.BindingNavigatorElement.NextButton.GradientStyle = Telerik.WinControls.GradientStyles.Solid;

````
````VB.NET
radBindingNavigator1.BindingNavigatorElement.NextButton.BackColor = ColorTranslator.FromHtml("#e83737")
radBindingNavigator1.BindingNavigatorElement.NextButton.GradientStyle = Telerik.WinControls.GradientStyles.Solid

````

### Add Custom Button  

The following snippet demonstrates how you can add a button, to the second strip element.

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

>caption The new button is added after at the last position.

![bindingnavigator-overview-customizing-radbindingnavigator 002](images/bindingnavigator-overview-customizing-radbindingnavigator002.png)

## See Also

 * [Properties]({%slug winforms/bindingnavigator/properties%})

 * [Structure]({%slug winforms/bindingnavigator/structure%})
