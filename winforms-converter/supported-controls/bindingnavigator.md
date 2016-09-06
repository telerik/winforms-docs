---
title: BindingNavigator
page_title: BindingNavigator | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/bindingnavigator
tags: covert, winforms, BindingNavigator
published: True             
position: 1
---

# BindingNavigator

The BindingNavigator control in your application will be converted to [RadBindingNavigator]({%slug winforms/calendar%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|


|Events|Action|RadControls Equivalent|
|---|---|---|


|Methods|Action|RadControls Equivalent|
|---|---|---|


Standard BindingNavigator and our RadBindingNaigator have different mapping of items' name. That's why the navigation will not work after the conversion process is finished. In order to resolve the issue, you need to change the __Name__ properties of each item manually in the `Designer` file. Each name should starts with BindingNavigator's name plus item's name. For example: 
`this.bindingNavigator1.Name = "bindingNavigator1";`


|Standard Binding Navigator|Telerik RadBindingNavigator|
|---|---|
|this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";|this.bindingNavigatorAddNewItem.Name = "bindingNavigator1AddNewItem";|
|this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";|this.bindingNavigatorCountItem.Name = "bindingNavigator1CountItem";|
|this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";|this.bindingNavigatorDeleteItem.Name = "bindingNavigator1DeleteItem";|
|this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";|this.bindingNavigatorDeleteItem.Name = "bindingNavigator1MoveFirstItem";|
|this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";|this.bindingNavigatorMoveLastItem.Name = "bindingNavigator1MoveLastItem";|
|this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";|this.bindingNavigatorMoveNextItem.Name = "bindingNavigator1MoveNextItem";|
|this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";|this.bindingNavigatorMovePreviousItem.Name = "bindingNavigator1MovePreviousItem";|
|this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";|this.bindingNavigatorPositionItem.Name = "bindingNavigator1PositionItem";|
