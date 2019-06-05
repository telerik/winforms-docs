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
|AllowItemReorder |Removed||
|AllowMerge |Removed||
|CanOverflow |Removed||
|GripMargin |Removed||
|GripStyle|Removed||
|RenderMode |Removed||
|Stretch |Removed||
|TextDirection |Produces Error||
|AddNewItem |Replaced|BindingNavigatorElement.AddNewButton|
|CountItem |Replaced|BindingNavigatorElement.PageLabel|
|DeleteItem |Replaced|BindingNavigatorElement.DeleteButton|
|MoveFirstItem |Replaced|BindingNavigatorElement.FirstButton|
|MoveLastItem |Replaced|BindingNavigatorElement.LastButton|
|MoveNextItem |Replaced|BindingNavigatorElement.NextButto|
|MovePreviousItem |Replaced|BindingNavigatorElement.PreviousButton|
|PositionItem |Replaced|BindingNavigatorElement.CurrentNumberTextBox|

|Events|Action|RadControls Equivalent|
|---|---|---|
|BeginDrag|Produces Error||
|EndDrag |Produces Error||
|ItemAdded |Produces Error||
|ItemClicked |Produces Error||
|ItemRemoved |Produces Error||
|LayoutCompleted |Produces Error||
|LayoutStyleChanged |Produces Error||
|PaintGrip |Produces Error||
|RefreshItems |Produces Error||
|RendererChanged|Produces Error||

|Methods|Action|RadControls Equivalent|
|---|---|---|
|AddStandardItems()|Produces Error||
|GetItemAt()|Produces Error||

Standard __BindingNavigator__ and our __RadBindingNavigator__ have different mapping of items' name. That's why the navigation will not work after the conversion process is finished. In order to resolve the issue, you need to change the __Name__ properties of each item manually in the `Designer` file. Each name should starts with BindingNavigator's name plus item's name. For example: 
`this.bindingNavigator1.Name = "bindingNavigator1";`

>tip We strongly recommend you to change the __Name__ properties of each item manually after opening the form at design time. 
In addition, if there are other items added to the navigator, they will be converted as well, their properties, events and methods are listed [here]({%slug winforms/winforms-converter/supported-controls/toolstrip%}).


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