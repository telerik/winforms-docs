---
title: Auto Complete
page_title: Auto Complete
description: Auto Complete
slug: dropdown-and-listcontrol-dropdownlist-autocompleate
tags: auto,complete
published: True
position: 1
---

# Auto Complete



## 

__RadDropDownList__ provides flexible auto-completion options that suggest and 
          append text from choices in the list as the user types. The __RadDropDownList____AutoCompleteMode__ property controls auto-complete behavior and can be set to
          *None, Suggest,Append* and *SuggestAppend*:
         

>All auto-complete modes depend on the value of the boolean __CaseSensitive__ property.
          

* __None__: Nothing happens when a user begins to type into the text box portion of the
            control. If the user types the whole text of an item and presses Enter, the item is selected.
			
			![dropdown-and-listcontrol-dropdownlist-autocompleate 001](images/dropdown-and-listcontrol-dropdownlist-autocompleate001.png)

#### __[C#] AutoCompleteMode.None__

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCNone}}
	            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.None;
	{{endregion}}



#### __[VB.NET] AutoCompleteMode.None__

{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCNone}}
	        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.None
	{{endregion}}



* __Suggest__: As the user types an entry into the text box,
        the drop-down portion of the control is shown, and the displayed items are filtered according to the entered text
        
        ![dropdown-and-listcontrol-dropdownlist-autocompleate 002](images/dropdown-and-listcontrol-dropdownlist-autocompleate002.png)

#### __[C#] AutoCompleteMode.Suggest__

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCSuggest}}
	            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest;
	{{endregion}}



#### __[VB.NET] AutoCompleteMode.Suggest__

{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCSuggest}}
	        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest
	{{endregion}}



* __Append__: As the user types, the next item in the list
        that matches the user input is automatically appended to the characters
        the user has already typed. The drop-down list is not shown without the
        user clicking the arrow.
        
        ![dropdown-and-listcontrol-dropdownlist-autocompleate 003](images/dropdown-and-listcontrol-dropdownlist-autocompleate003.png)

#### __[C#] AutoCompleteMode.Append__

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCAppend}}
	            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Append;
	{{endregion}}



#### __[VB.NET] AutoCompleteMode.Append__

{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCAppend}}
	        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Append
	{{endregion}}



* __SuggestAppend__: Similar to the Append setting, but the
        drop-down list is shown and the suggested item is highlighted.
        
        ![dropdown-and-listcontrol-dropdownlist-autocompleate 004](images/dropdown-and-listcontrol-dropdownlist-autocompleate004.png)

#### __[C#] AutoCompleteMode.SuggestAppend__

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCSuggestAppend}}
	            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
	{{endregion}}



#### __[VB.NET] AutoCompleteMode.SuggestAppend__

{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCSuggestAppend}}
	        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend
	{{endregion}}


