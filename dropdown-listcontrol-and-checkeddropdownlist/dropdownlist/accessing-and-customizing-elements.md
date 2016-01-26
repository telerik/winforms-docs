---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | UI for WinForms Documentation
description: Accessing and Customizing Elements
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/accessing-and-customizing-elements
tags: accessing,and,customizing,elements
published: True
position: 4
previous_url: dropdown-and-listcontrol-dropdownlist-accessing-and-customizing-elements
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/structure%}) of the __RadDropDownList__.
      

## Design time

You can access and modify the style for different elements in __RadDropDownList__ by using the Element hierarchy editor.
>caption Fig.1 Element hierarchy editor

![dropdown-and-listcontrol-dropdownlist-accessing-and-customizing-elements 001](images/dropdown-and-listcontrol-dropdownlist-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize elements

![dropdown-and-listcontrol-dropdownlist-accessing-and-customizing-elements 002](images/dropdown-and-listcontrol-dropdownlist-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=CustomizeElements}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=CustomizeElements}} 

````C#
            
this.radDropDownList1.DropDownListElement.ArrowButton.Fill.BackColor = Color.Aqua;
this.radDropDownList1.DropDownListElement.EditableElement.ForeColor = Color.Red;

````
````VB.NET
Me.radDropDownList1.DropDownListElement.ArrowButton.Fill.BackColor = Color.Aqua
Me.radDropDownList1.DropDownListElement.EditableElement.ForeColor = Color.Red
'#End Region
'#Region "AddItemsProgrammatically"
Dim descriptionItem As New DescriptionTextListDataItem()
descriptionItem.Text = "Chicken wings"
descriptionItem.Image = My.Resources.chicken_wings
descriptionItem.DescriptionText = "some description"
Me.radDropDownList1.Items.Add(descriptionItem)
Dim dataItem As New RadListDataItem()
dataItem.Text = "Chicken toast"
dataItem.Image = My.Resources.chicken_toast
Me.radDropDownList1.Items.Add(dataItem)
'#End Region
'#region autoCNone
Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.None

````

{{endregion}} 
 
In order to style the pop-up items it is suitable to use the [VisualItemFormatting]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/formatting-items%}) event.
