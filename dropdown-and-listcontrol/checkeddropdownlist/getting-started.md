---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: dropdown-and-listcontrol-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started



## Design-Time Setup

Here is how to setup __RadCheckedDropDownList__ at design time:
      ![dropdown-and-listcontrol-checkeddropdownlist-getting-started 001](images/dropdown-and-listcontrol-checkeddropdownlist-getting-started001.png)

1. Drag __RadCheckedDropDownList__ to a form and click the smart tag
            

1. Click the *Edit Items* button
            

1. Add a few items
            

1. Check some of them
            

## Run-Time Setup

Adding items at runtime is quite similar to the design-time prodcedure. Below you can see a sample code which shows how to add items and check them:

#### __[C#] Add items__

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\GettingStarted1.cs region=AddItems}}
	            for (int i = 0; i < 10; i++)
	            {
	                this.radCheckedDropDownList1.Items.Add(new RadCheckedListDataItem("Item " + i, i % 2 == 0));
	            }
	{{endregion}}



#### __[VB.NET] Add items__

{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\GettingStarted1.vb region=AddItems}}
	        For i As Integer = 0 To 9
	            Me.RadCheckedDropDownList1.Items.Add(New RadCheckedListDataItem("Item " + i, i Mod 2 = 0))
	        Next	       
{{endregion}}
![dropdown-and-listcontrol-checkeddropdownlist-getting-started 002](images/dropdown-and-listcontrol-checkeddropdownlist-getting-started002.png)
