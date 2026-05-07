---
title: Using Checkboxes
page_title: Using Checkboxes - WinForms ListView Control
description: WinForms ListView items have built-in checkboxes which can be shown by setting the ShowCheckBoxes property to true.
slug: winforms/listview/using-checkboxes
tags: listview
published: True
position: 9 
---

# Checkboxes

**RadListViews'** items have built-in checkboxes which can be shown by setting the __ShowCheckBoxes__ property of **RadListView** to *true*.

#### Enable Checkboxes

<snippet id='listview-listviewcheckboxesandeditors-enablecheckboxes-cs' />
<snippet id='listview-listviewcheckboxesandeditors-enablecheckboxes-vb' />



When checkboxes are enabled, you have several options to handle the checked items:

* You can check or uncheck items via the checkbox that is shown in each item

>caption Figure 1: Toggle the item by using the mouse

![WinForms RadListView Toggle the item by using the mouse](images/listview-using-checkboxes001.gif)

* You can get or set the checked state of the __ListViewDataItem__ directly via its __CheckedState__ property:

#### Toggle an item programmatically

<snippet id='listview-listviewcheckboxesandeditors-toggleitem-cs' />
<snippet id='listview-listviewcheckboxesandeditors-toggleitem-vb' />



>caption Figure 2: Toggle items programmatically

![WinForms RadListView Toggle items programmatically](images/listview-using-checkboxes002.png)

* You can get the checked items in **RadListView** via its __CheckedItems__ collection

* The **CheckOnClickMode** property gets or sets a value indicating whether the item's check state changes whenever the item is clicked. The following values are available:

	* CheckOnClickMode.*Off*: Item's **CheckState** property is not toggled on click.
	* CheckOnClickMode.*FirstClick*: Item is selected and the **CheckState** property is toggled on first click.
	* CheckOnClickMode.*SecondClick*: Item is selected on first click. On second click the **CheckState** property is toggled.    

* You can listen for changes in the check state of the items via the following events:
	*  __ItemCheckedChanging__: Occurs when a **ListViewDataItem** is about to be checked. You can cancel this event.
	*  __ItemCheckedChanged__: Occurs when a **ListViewDataItem** is checked.

 
