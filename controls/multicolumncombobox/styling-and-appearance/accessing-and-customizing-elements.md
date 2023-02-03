---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - RadMultiColumnComboBox
description: RadMultiColumnComboBox is a special case of combo box control with RadGridView integrated in its drop-down.
slug: winforms/multicolumncombobox/styling-and-appearance/accessing-and-customizing-elements
tags: themes
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/multicolumncombobox/structure%}) of the **RadMultiColumnComboBox**.
      
## Design time

You can access and modify the style for different elements in **RadMultiColumnComboBox** by using the Element hierarchy editor.

>caption Figure 1: Element Hierarchy Editor

![WinForms RadMultiColumnComboBox Smart Tag](images/multicolumncombobox-accessing-and-customizing-elements001.png)

![WinForms RadMultiColumnComboBox Element Hierarchy Editor](images/multicolumncombobox-accessing-and-customizing-elements002.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Figure 2: Customize Elements

![WinForms RadMultiColumnComboBox Customize Elements](images/multicolumncombobox-accessing-and-customizing-elements003.png)

#### Customize elements 

{{source=..\SamplesCS\MultiColumnComboBox\MCCBgettingStarted.cs region=CustomizeElements}} 
{{source=..\SamplesVB\MultiColumnComboBox\MCCBgettingStarted.vb region=CustomizeElements}} 

````C#
this.radMultiColumnComboBox1.MultiColumnComboBoxElement.ArrowButton.Fill.BackColor = Color.Aqua;
this.radMultiColumnComboBox1.MultiColumnComboBoxElement.TextBoxElement.ForeColor = Color.Red;

````
````VB.NET
Me.RadMultiColumnComboBox1.MultiColumnComboBoxElement.ArrowButton.Fill.BackColor = Color.Aqua
Me.RadMultiColumnComboBox1.MultiColumnComboBoxElement.TextBoxElement.ForeColor = Color.Red

````

{{endregion}} 
 
In order to style the pop-up cells it is suitable to use the [CellFormatting]({%slug winforms/gridview/cells/formatting-cells%}) event that **RadGridView** offers.

