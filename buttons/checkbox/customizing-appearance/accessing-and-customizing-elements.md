---
title: Accessing and customizing elements
page_title: Accessing and customizing elements | UI for WinForms Documentation
description: RadCheckBox is designed to provide an interface element that can represent an On or Off state using a check mark.
slug: winforms/buttons/checkbox/customizing-appearance/accessing-and-customizing-elements 
tags: checkbox, appearance
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/buttons/checkbox/structure%}) of the __RadCheckBox__.
      

## Design time

You can access and modify the style for different elements in __RadCheckBox__ by using the Element hierarchy editor.

>caption Fig.1 Element hierarchy editor

![checkbox-customizing-appearance-accessing-and-customizing-elements 001](images/checkbox-customizing-appearance-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize elements

![checkbox-customizing-appearance-accessing-and-customizing-elements 002](images/checkbox-customizing-appearance-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Buttons\CheckBox.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=AccessingCustomizingElements}} 

````C#
this.radCheckBox1.ButtonElement.TextElement.ForeColor = Color.Blue;
this.radCheckBox1.ButtonElement.CheckMarkPrimitive.CheckElement.ForeColor = Color.Blue;
this.radCheckBox1.ButtonElement.CheckMarkPrimitive.Border.ForeColor = Color.Red;
this.radCheckBox1.ButtonElement.CheckMarkPrimitive.Border.BoxStyle = Telerik.WinControls.BorderBoxStyle.SingleBorder;

````
````VB.NET
Me.radCheckBox1.ButtonElement.TextElement.ForeColor = Color.Blue
Me.radCheckBox1.ButtonElement.CheckMarkPrimitive.CheckElement.ForeColor = Color.Blue
Me.radCheckBox1.ButtonElement.CheckMarkPrimitive.Border.ForeColor = Color.Red
Me.radCheckBox1.ButtonElement.CheckMarkPrimitive.Border.BoxStyle = Telerik.WinControls.BorderBoxStyle.SingleBorder
'#End Region
'#Region "SetToolTipText"
Me.radCheckBox1.ButtonElement.ToolTipText = "CheckBox tool tip"
'#End Region
' Add any initialization after the InitializeComponent() call.
AddHandler radCheckBox1.ToggleStateChanged, AddressOf RadCheckBox1_ToggleStateChanged
AddHandler radCheckBox1.ToggleStateChanging, AddressOf RadCheckBox1_ToggleStateChanging
'#region databinding
Me.radCheckBox1.IsThreeState = False
Dim t As New DataTable
t.Columns.Add("A", GetType(Boolean))
t.Rows.Add(True)
t.Rows.Add(False)
t.Rows.Add(True)
Me.radCheckBox1.DataBindings.Add(New Binding("IsChecked", t, "A"))

````

{{endregion}} 