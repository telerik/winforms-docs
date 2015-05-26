---
title: Auto Complete
page_title: Auto Complete | UI for WinForms Documentation
description: Auto Complete
slug: winforms/dropdown,-listcontrol-and-checkeddropdownlist/dropdownlist/auto-complete
tags: auto,complete
published: True
position: 3
---

# Auto Complete



## 

__RadDropDownList__ provides flexible auto-completion options that suggest and 
          append text from choices in the list as the user types. The __RadDropDownList____AutoCompleteMode__ property controls auto-complete behavior and can be set to
          *None, Suggest,Append* and *SuggestAppend*:
         

>note All auto-complete modes depend on the value of the boolean __CaseSensitive__ property.
>


* __None__: Nothing happens when a user begins to type into the text box portion of the
            control. If the user types the whole text of an item and presses Enter, the item is selected.
			
			![dropdown-and-listcontrol-dropdownlist-autocompleate 001](images/dropdown-and-listcontrol-dropdownlist-autocompleate001.png)#_[C#] AutoCompleteMode.None_

	



{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCNone}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCNone}} 

````C#
            
            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.None;
````
````VB.NET
        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.None
        '
````

{{endregion}} 




* __Suggest__: As the user types an entry into the text box,
        the drop-down portion of the control is shown, and the displayed items are filtered according to the entered text
        
        ![dropdown-and-listcontrol-dropdownlist-autocompleate 002](images/dropdown-and-listcontrol-dropdownlist-autocompleate002.png)#_[C#] AutoCompleteMode.Suggest_

	



{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCSuggest}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCSuggest}} 

````C#
            
            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest;
````
````VB.NET
        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Suggest
        '
````

{{endregion}} 




* __Append__: As the user types, the next item in the list
        that matches the user input is automatically appended to the characters
        the user has already typed. The drop-down list is not shown without the
        user clicking the arrow.
        
        ![dropdown-and-listcontrol-dropdownlist-autocompleate 003](images/dropdown-and-listcontrol-dropdownlist-autocompleate003.png)#_[C#] AutoCompleteMode.Append_

	



{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCAppend}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCAppend}} 

````C#
            
            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Append;
````
````VB.NET
        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.Append
        '
````

{{endregion}} 




* __SuggestAppend__: Similar to the Append setting, but the
        drop-down list is shown and the suggested item is highlighted.
        
        ![dropdown-and-listcontrol-dropdownlist-autocompleate 004](images/dropdown-and-listcontrol-dropdownlist-autocompleate004.png)#_[C#] AutoCompleteMode.SuggestAppend_

	



{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=autoCSuggestAppend}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=autoCSuggestAppend}} 

````C#
            
            this.radDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
````
````VB.NET
        Me.radDropDownList1.AutoCompleteMode = AutoCompleteMode.SuggestAppend
        '
````

{{endregion}} 



