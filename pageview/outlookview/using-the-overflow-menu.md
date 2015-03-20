---
title: Using The Overflow Menu
page_title: Using The Overflow Menu
description: Using The Overflow Menu
slug: pageview-outlookview-using-the-overflow-menu
tags: using,the,overflow,menu
published: True
position: 1
---

# Using The Overflow Menu



## Basics

The Overflow Menu of the RadPageView’s Outlook Mode allows for permanently hiding/showing items from the stack. In other words,
        the user can define whether an item will be available in the stack or not. If an item is permanently hidden from the stack, it cannot
        be selected from the UI unless shown again from the Overflow Menu. To hide (uncheck) an item, show the overflow menu and show the
        drop-down of the Add or Remove Buttons item. You will see a list of all currently available items in the Outlook View. By clicking
        on an item, you will toggle its checked/unchecked state to the opposite one.

## Programming the Overflow Menu

As well as from the UI, you can check/uncheck items by using the RadPageViewOutlookElement’s API. To do so, you should use
        the ViewElement property of the RadPageView control, cast it to the RadPageViewOutlookElement type and call the corresponding API
        methods as shown in the code snippet below:

#### __[C#]__

{{region programmingOverflow}}
	
	            RadPageViewOutlookElement outlookElement = this.radPageView1.ViewElement as RadPageViewOutlookElement;
	            //Hide the first item
	            outlookElement.UncheckItem(this.radPageViewPage1.Item as RadPageViewOutlookItem);
	            //Show the first item again
	            outlookElement.CheckItem(this.radPageViewPage1.Item as RadPageViewOutlookItem);
	
	{{endregion}}



#### __[VB.NET]__

{{region programmingGrip}}
	
	        Dim outlookElement As RadPageViewOutlookElement = TryCast(Me.radPageView1.ViewElement, RadPageViewOutlookElement)
	        'Drags the sizing grip one item down.
	        outlookElement.DragGripDown()
	        'Drags the sizing grip one item up.
	        outlookElement.DragGripUp()
	
	{{endregion}}



>The CheckItem/UncheckItem methods accept an instance of the RadPageViewOutlookItem class. Since the Item property of the
          RadPageViewPage class is of the RadPageViewItem type, you should cast the returned result to the required type.

## Using the Overflow Menu’s Events

The RadPageViewOutlookElement class exposes the following events to notify the user of an action triggered by using the Overflow Menu:

* ItemChecked

* ItemUnchecked

The ItemChecked event is fired each time an item is put back in the Outlook View’s stack either by calling the CheckItem method or using the UI.
		The ItemUnchecked event is fired each time an item is permanently hidden from the Outlook View’s stack either by calling the UncheckItem method or using the UI. 
